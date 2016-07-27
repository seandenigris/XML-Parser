tokenizing
nextXMLEncodingAttributeRequired: aBoolean
	streamReader skipSeparators.
	(aBoolean or: [streamReader peek == $e])
		ifFalse: [^ ''].

	^ self
		nextXMLAttributeName: 'encoding';
		nextXMLEncodingAttributeValue.