tests - exception raising
testp09fail1xml
	"Source file: oasis/p09fail1.xml"

	self
		should: [
			self
				parse: self class sourcep09fail1xml
				documentURI: 'p09fail1.xml']
		raise: self parserExceptions