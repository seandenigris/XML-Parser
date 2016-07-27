tests - exception raising
testp66fail5xml
	"Source file: oasis/p66fail5.xml"

	self
		should: [
			self
				parse: self class sourcep66fail5xml
				documentURI: 'p66fail5.xml']
		raise: self exceptionClass