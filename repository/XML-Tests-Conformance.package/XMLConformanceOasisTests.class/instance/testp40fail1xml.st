tests - exception raising
testp40fail1xml
	"Source file: oasis/p40fail1.xml"

	self
		should: [
			self
				parse: self class sourcep40fail1xml
				documentURI: 'p40fail1.xml']
		raise: self parserExceptions