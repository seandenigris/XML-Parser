tests
testp24pass2xml
	"Source file: oasis/p24pass2.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep24pass2xml
				documentURI: 'p24pass2.xml']
		raise: self exceptionClass