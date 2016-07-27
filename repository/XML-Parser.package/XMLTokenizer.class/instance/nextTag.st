tokenizing
nextTag
	| tagName attributes nextChar namespaces |
	(self peek = $/)
		ifTrue: [^self nextEndTag].
	tagName := self nextName.
	self skipSeparators.
	attributes := XMLOrderPreservingDictionary new: 10.
	namespaces := XMLOrderPreservingDictionary new: 5.
	[(nextChar := self peek) == $> or: [nextChar == $/]] whileFalse: [
		self checkAndExpandReference: #content.
		self nextAttributeInto: attributes namespaces: namespaces.
		self skipSeparators.].
	self handleStartTag: tagName attributes: attributes namespaces: namespaces.
	self next == $/
		ifTrue: [
			self handleEndTag: tagName.
			self next].
	