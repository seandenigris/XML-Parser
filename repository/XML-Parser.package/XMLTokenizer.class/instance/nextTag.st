tokenizing
nextTag
	| tagName attributes namespaces nextChar |

	(streamReader peek = $/)
		ifTrue: [^ self nextEndTag].
	tagName := self nextName.

	attributes := OrderPreservingDictionary new: 10 withDefaultValue: ''.
	driver usesNamespaces
		ifTrue: [namespaces := OrderPreservingDictionary defaultValue: ''].
	[streamReader skipSeparators.
	((nextChar := streamReader peek) == $>
		or: [nextChar == $/])]
		whileFalse: [self nextAttributeInto: attributes namespaces: namespaces].

	driver
		handleStartTag: tagName
		attributes: attributes
		namespaces: namespaces.
	streamReader next == $/
		ifTrue: [
			self expectNext: $>.
			driver handleEndTag: tagName].