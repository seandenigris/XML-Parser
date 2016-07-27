tokenizing
nextXMLVersionAttributeRequired: aBoolean
	streamReader skipSeparators.
	(aBoolean or: [streamReader peek == $v])
		ifFalse: [^ ''].

	^ self
		nextXMLAttributeName: 'version';
		nextXMLVersionAttributeValue.