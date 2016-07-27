tokenizing
nextXMLStandaloneAttribute
	streamReader skipSeparators.
	(streamReader peek == $s)
		ifFalse: [^ ''].

	^ self
		nextXMLAttributeName: 'standalone';
		nextXMLStandaloneAttributeValue.