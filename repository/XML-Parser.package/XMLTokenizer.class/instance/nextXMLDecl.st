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
		ifTrue: [streamReader useConverterForEncoding: (attributes at: 'encoding')].
	driver
		handleXMLVersion: (attributes at: 'version' ifAbsent: [''])
		encoding: (attributes at: 'encoding' ifAbsent: [''])
		standalone: (attributes at: 'standalone' ifAbsent: ['']).