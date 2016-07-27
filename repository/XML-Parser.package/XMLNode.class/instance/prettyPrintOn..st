printing
prettyPrintOn: aStream
	(XMLWriter on: aStream)
		enablePrettyPrinting;
		writeWith: [:writer | self writeXMLOn: writer]