tests - exception raising
testp52fail1xml
	"Source file: oasis/p52fail1.xml"

	self
		should: [
			self
				parse: self class sourcep52fail1xml
				documentURI: 'p52fail1.xml']
		raise: self parserExceptions