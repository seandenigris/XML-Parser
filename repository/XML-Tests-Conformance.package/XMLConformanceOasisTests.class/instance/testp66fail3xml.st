tests - exception raising
testp66fail3xml
	"Source file: oasis/p66fail3.xml"

	self
		should: [
			self
				parse: self class sourcep66fail3xml
				documentURI: 'p66fail3.xml']
		raise: self exceptionClass