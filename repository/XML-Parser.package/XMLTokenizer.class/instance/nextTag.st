tokenizing
nextTag
	| tagName attributes reservedAttributes namespaces nextChar attributeName attributeValue |

	(streamReader peek = $/)
		ifTrue: [^ self nextEndTag].
	tagName := self nextName.

	attributes := OrderPreservingDictionary new: 10 withDefaultValue: ''.
	[streamReader skipSeparators.
	((nextChar := streamReader peek) isNil
		or: [nextChar == $>
			or: [nextChar == $/]])]
		whileFalse: [
			attributeName := self nextName.
			streamReader skipSeparators.
			self expectNext: $=.
			streamReader skipSeparators.
			attributeValue := self nextAttributeValue.
	
			((attributeName at: 1) == $x "fast test to skip the others"
				and: [(attributeName beginsWith: 'xml')
					and: [attributeName size >= 5]])
				ifTrue: [
					(driver usesNamespaces
						and: [(attributeName at: 4) == $n
							and: [(attributeName at: 5) == $s]])
						ifTrue: [
							namespaces
								ifNil: [namespaces := OrderPreservingDictionary new: 5 withDefaultValue: ''].
							attributeName size > 6
								ifTrue: [
									namespaces
										at: (attributeName copyFrom: 7 to: attributeName size)
										put: attributeValue]
								ifFalse: [namespaces at: '' put: attributeValue]]
						ifFalse: [
							(attributeName at: 4) == $:
								ifTrue: [
									(reservedAttributes ifNil: [reservedAttributes := Dictionary new])
										at: attributeName put: attributeValue].
								attributes at: attributeName put: attributeValue]]
				ifFalse: [attributes at: attributeName put: attributeValue]].

	driver
		handleStartTag: tagName
		attributes: attributes
		namespaces: namespaces.
	reservedAttributes
		ifNotNil: [driver reservedAttributes: reservedAttributes].

	streamReader peek == $/
		ifTrue: [
			streamReader next.
			driver handleEndTag: tagName].
	self expectTerminator: $>.