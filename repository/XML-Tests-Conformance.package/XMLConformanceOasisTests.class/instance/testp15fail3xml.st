tests - exception raising
testp15fail3xml
	"Source file: oasis/p15fail3.xml"

	self
		should: [
			self
				parse: self class sourcep15fail3xml
				documentURI: 'p15fail3.xml']
		raise: self parserExceptions