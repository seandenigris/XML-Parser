printing
printOn: aStream
	(XMLWriter on: aStream) writeWith: [:writer | self writeXMLWith: writer].