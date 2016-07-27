tests - exception raising
testp15fail1xml
	"Source file: oasis/p15fail1.xml"

	self
		should: [
			self
				parse: self class sourcep15fail1xml
				documentURI: 'p15fail1.xml']
		raise: self parserExceptions