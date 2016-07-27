content
endElement: anElementName prefix: aPrefix uri: aUri localName: aLocalName
	(self topNode isElement and: [self topNode isNamed: anElementName])
		ifTrue: [self popNode]
