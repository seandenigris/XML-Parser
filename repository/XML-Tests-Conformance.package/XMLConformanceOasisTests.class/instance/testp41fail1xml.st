tests - exception raising
testp41fail1xml
	"Source file: oasis/p41fail1.xml"

	self
		should: [
			self
				parse: self class sourcep41fail1xml
				documentURI: 'p41fail1.xml']
		raise: self parserExceptions