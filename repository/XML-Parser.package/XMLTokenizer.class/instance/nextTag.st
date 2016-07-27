tokenizing
nextTag
	| tagName attributes namespaces nextChar attributeName attributeValue |

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
				and: [driver usesNamespaces
					and: [attributeName beginsWith: 'xmlns']])
				ifTrue: [
					namespaces
						ifNil: [namespaces := OrderPreservingDictionary new: 5 withDefaultValue: ''].
					attributeName size > 6
						ifTrue: [
							namespaces
								at: (attributeName copyFrom: 7 to: attributeName size)
								put: attributeValue]
						ifFalse: [namespaces at: '' put: attributeValue]]
				ifFalse: [attributes at: attributeName put: attributeValue]].

	driver
		handleStartTag: tagName
		attributes: attributes
		namespaces: namespaces.

	streamReader peek == $/
		ifTrue: [
			streamReader next.
			driver handleEndTag: tagName].
	self expectTerminator: $>.