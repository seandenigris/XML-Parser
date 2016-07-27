tests - exception raising
testp60fail1xml
	"Source file: oasis/p60fail1.xml"

	self
		should: [
			self
				parse: self class sourcep60fail1xml
				documentURI: 'p60fail1.xml']
		raise: self exceptionClass