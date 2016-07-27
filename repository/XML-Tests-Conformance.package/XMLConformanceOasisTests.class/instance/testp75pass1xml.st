tests
testp75pass1xml
	"Source file: oasis/p75pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep75pass1xml
				documentURI: 'p75pass1.xml']
		raise: self exceptionClass