tests - exception raising
testp71fail1xml
	"Source file: oasis/p71fail1.xml"

	self
		should: [
			self
				parse: self class sourcep71fail1xml
				documentURI: 'p71fail1.xml']
		raise: self exceptionClass