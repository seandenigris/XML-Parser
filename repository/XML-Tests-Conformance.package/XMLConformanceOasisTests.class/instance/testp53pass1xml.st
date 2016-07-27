tests
testp53pass1xml
	"Source file: oasis/p53pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep53pass1xml
				documentURI: 'p53pass1.xml']
		raise: self exceptionClass