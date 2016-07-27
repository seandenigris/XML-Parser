tests - exception raising
testp03fail11xml
	"Source file: oasis/p03fail11.xml"

	self
		should: [
			self
				parse: self class sourcep03fail11xml
				documentURI: 'p03fail11.xml']
		raise: self parserExceptions