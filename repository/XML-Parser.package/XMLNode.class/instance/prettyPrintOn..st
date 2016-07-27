printing
prettyPrintOn: aStream
	(XMLWriter on: aStream)
		enablePrettyPrinting;
		printXMLOn: [:writer | self printXMLOn: writer]