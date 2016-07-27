tests - exception raising
testp24fail1xml
	"Source file: oasis/p24fail1.xml"

	self
		should: [
			self
				parse: self class sourcep24fail1xml
				documentURI: 'p24fail1.xml']
		raise: self parserExceptions