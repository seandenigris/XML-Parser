tokenizing
nextTag
	| tagName attributes namespaces nextChar |

	(streamReader peek = $/)
		ifTrue: [^ self nextEndTag].
	tagName := self nextName.

	attributes := OrderPreservingDictionary new: 10 withDefaultValue: ''.
	driver usesNamespaces
		ifTrue: [namespaces := OrderPreservingDictionary new: 5 withDefaultValue: ''].
	[streamReader skipSeparators.
	((nextChar := streamReader peek) isNil
		or: [nextChar == $>
			or: [nextChar == $/]])]
		whileFalse: [self nextAttributeInto: attributes namespaces: namespaces].

	driver
		handleStartTag: tagName
		attributes: attributes
		namespaces: namespaces.
	streamReader peek == $/
		ifTrue: [
			streamReader next.
			driver handleEndTag: tagName].
	self expectTerminator: $>.