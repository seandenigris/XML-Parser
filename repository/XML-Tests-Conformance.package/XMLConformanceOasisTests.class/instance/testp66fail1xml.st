tests - exception raising
testp66fail1xml
	"Source file: oasis/p66fail1.xml"

	self
		should: [
			self
				parse: self class sourcep66fail1xml
				documentURI: 'p66fail1.xml']
		raise: self exceptionClass