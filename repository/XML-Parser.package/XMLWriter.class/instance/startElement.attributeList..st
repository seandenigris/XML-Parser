writing xml
startElement: elementName attributeList: attributeList
	"self canonical
		ifFalse: [self stream cr]."
	self startTag: elementName.
	attributeList printXMLOn: self.