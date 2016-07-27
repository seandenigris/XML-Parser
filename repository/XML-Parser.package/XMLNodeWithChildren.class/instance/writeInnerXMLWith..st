printing
writeInnerXMLWith: aWriter
	self nodesDo: [:each | each writeXMLOn: aWriter]