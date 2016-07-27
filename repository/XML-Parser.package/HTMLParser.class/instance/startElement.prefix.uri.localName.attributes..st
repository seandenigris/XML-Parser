content
startElement: aQualifiedName prefix: aPrefix uri: aUri localName: aLocalName attributes: aDictionary
	(self topNode isElement
		or: [aQualifiedName = 'html'])
		ifFalse: [self startHTMLPreamble].
	super
		startElement: aQualifiedName
		prefix: aPrefix
		uri: aUri
		localName: aLocalName
		attributes: aDictionary.