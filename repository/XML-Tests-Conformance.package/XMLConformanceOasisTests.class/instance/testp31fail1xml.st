tests - exception raising
testp31fail1xml
	"Source file: oasis/p31fail1.xml"

	self
		should: [
			self
				parse: self class sourcep31fail1xml
				documentURI: 'p31fail1.xml']
		raise: self exceptionClass