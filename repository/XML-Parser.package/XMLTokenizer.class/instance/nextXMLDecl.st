tokenizing
nextXMLDecl
	| attributes namespaces |
	streamReader skipSeparators.
	attributes := Dictionary new.
	namespaces := Dictionary new.
	[streamReader peek == $?]
		whileFalse: [
			self nextAttributeInto: attributes namespaces: namespaces.
			streamReader skipSeparators].
	streamReader next.
	self expectNext: $>.
	(attributes includesKey: 'encoding')
		ifTrue: [streamReader streamEncoding: (attributes at: 'encoding')].
	self handleXMLDecl: attributes.