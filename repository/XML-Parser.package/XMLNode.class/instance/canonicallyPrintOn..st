printing
canonicallyPrintOn: aStream
	(XMLWriter on: aStream)
		isCanonical: true;
		writeWith: [:writer | self writeXMLOn: writer]