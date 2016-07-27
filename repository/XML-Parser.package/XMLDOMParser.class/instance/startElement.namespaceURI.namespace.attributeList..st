content
startElement: localName namespaceURI: namespaceUri namespace: namespace attributeList: attributeList
	| newElement |
	"newElement := namespace = self defaultNamespace
		ifTrue: [XMLElement named: localName namespace: nil uri: nil attributes: attributeList]
		ifFalse: [XMLElement named: localName namespace: namespace uri: namespaceUri attributes: attributeList]."
	newElement := XMLElement named: localName namespace: namespace uri: namespaceUri attributes: attributeList.

	self pushElement: newElement.