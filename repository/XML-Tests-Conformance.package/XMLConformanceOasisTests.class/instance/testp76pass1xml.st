tests
testp76pass1xml
	"Source file: oasis/p76pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep76pass1xml
				documentURI: 'p76pass1.xml']
		raise: self exceptionClass