printing
writeInnerXMLWith: aWriter
	self nodesDo: [:each | each writeXMLWith: aWriter]