content
startElement: elementName attributes: attributes
	self
		forwardToDeprecatedHandler: #startElement:attributeList:
		withArgumentOrder: #(1 2)
		orTo: nil