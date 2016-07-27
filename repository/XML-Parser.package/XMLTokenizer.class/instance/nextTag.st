tokenizing
nextTag
	| tagName attributes nextChar namespaces |
	(streamReader peek = $/)
		ifTrue: [^ self nextEndTag].
	tagName := self nextName.
	streamReader skipSeparators.
	attributes := OrderPreservingDictionary new: 10 withDefaultValue: ''.
	driver usesNamespaces
		ifTrue: [namespaces := OrderPreservingDictionary defaultValue: ''].
	[(nextChar := streamReader peek) == $> or: [nextChar == $/]] whileFalse: [
		self checkAndExpandReference: #content.
		self nextAttributeInto: attributes namespaces: namespaces.
		streamReader skipSeparators.].
	driver handleStartTag: tagName attributes: attributes namespaces: namespaces.
	streamReader next == $/
		ifTrue: [
			driver handleEndTag: tagName.
			self expectNext: $>].