tests - exception raising
testp32fail5xml
	"Source file: oasis/p32fail5.xml"

	self
		should: [
			self
				parse: self class sourcep32fail5xml
				documentURI: 'p32fail5.xml']
		raise: self parserExceptions