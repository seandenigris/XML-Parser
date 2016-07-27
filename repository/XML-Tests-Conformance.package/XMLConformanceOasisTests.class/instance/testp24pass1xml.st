tests
testp24pass1xml
	"Source file: oasis/p24pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep24pass1xml
				documentURI: 'p24pass1.xml']
		raise: self exceptionClass