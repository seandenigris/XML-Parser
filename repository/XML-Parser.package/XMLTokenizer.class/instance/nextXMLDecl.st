tokenizing
nextXMLDecl
	| attributes nextChar namespaces |
	streamReader skipSeparators.
	attributes := Dictionary new.
	namespaces := Dictionary new.
	[(nextChar := streamReader peek) == $?] whileFalse: [
		self nextAttributeInto: attributes namespaces: namespaces.
		streamReader skipSeparators.].
	streamReader next.
	streamReader next == $>
		ifFalse: [self errorExpected: '> expected.'].
	(attributes includesKey: 'encoding')
		ifTrue: [streamReader streamEncoding: (attributes at: 'encoding')].
	self handleXMLDecl: attributes.