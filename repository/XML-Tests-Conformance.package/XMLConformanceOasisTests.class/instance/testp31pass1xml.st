tests
testp31pass1xml
	"Source file: oasis/p31pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep31pass1xml
				documentURI: 'p31pass1.xml']
		raise: self exceptionClass