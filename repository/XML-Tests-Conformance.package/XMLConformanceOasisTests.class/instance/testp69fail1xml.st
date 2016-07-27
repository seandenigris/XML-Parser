tests - exception raising
testp69fail1xml
	"Source file: oasis/p69fail1.xml"

	self
		should: [
			self
				parse: self class sourcep69fail1xml
				documentURI: 'p69fail1.xml']
		raise: self parserExceptions