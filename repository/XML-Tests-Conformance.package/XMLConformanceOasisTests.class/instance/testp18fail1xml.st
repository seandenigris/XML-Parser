tests - exception raising
testp18fail1xml
	"Source file: oasis/p18fail1.xml"

	self
		should: [
			self
				parse: self class sourcep18fail1xml
				documentURI: 'p18fail1.xml']
		raise: self exceptionClass