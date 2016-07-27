tests
testp45pass1xml
	"Source file: oasis/p45pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep45pass1xml
				documentURI: 'p45pass1.xml']
		raise: self exceptionClass