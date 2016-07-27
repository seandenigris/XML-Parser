tests - exception raising
testp57fail1xml
	"Source file: oasis/p57fail1.xml"

	self
		should: [
			self
				parse: self class sourcep57fail1xml
				documentURI: 'p57fail1.xml']
		raise: self exceptionClass