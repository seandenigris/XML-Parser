tests - exception raising
testp08fail1xml
	"Source file: oasis/p08fail1.xml"

	self
		should: [
			self
				parse: self class sourcep08fail1xml
				documentURI: 'p08fail1.xml']
		raise: self parserExceptions