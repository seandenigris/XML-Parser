tests - exception raising
testp03fail14xml
	"Source file: oasis/p03fail14.xml"

	self
		should: [
			self
				parse: self class sourcep03fail14xml
				documentURI: 'p03fail14.xml']
		raise: self parserExceptions