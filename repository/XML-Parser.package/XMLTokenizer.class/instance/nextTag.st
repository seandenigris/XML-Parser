tokenizing
nextTag
	"performance critical method"
	| tagName attributes reservedAttributes namespaces nextChar attributeName attributeValue |

	(streamReader peek = $/)
		ifTrue: [^ self nextEndTag].
	tagName := self nextName.

	attributes := OrderPreservingDictionary new: 10 withDefaultValue: ''.
	[streamReader skipSeparators.
	((nextChar := streamReader peek) == nil
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
							"initialize only if needed"
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
									"the xml: attributes require special processing so are copied
									to a separate dictionary to not be affected by changes to the
									regular dictionary and quick nil test if any are present"
									(reservedAttributes ifNil: [reservedAttributes := Dictionary new])
										at: attributeName put: attributeValue].
								attributes at: attributeName put: attributeValue]]
				ifFalse: [attributes at: attributeName put: attributeValue]].

	driver
		handleStartTag: tagName
		attributes: attributes
		namespaces: namespaces.
	reservedAttributes
		ifNotNil: [driver handleReservedAttributes: reservedAttributes].

	streamReader peek == $/
		ifTrue: [
			streamReader next.
			driver handleEndTag: tagName].
	self expectTerminator: $>.