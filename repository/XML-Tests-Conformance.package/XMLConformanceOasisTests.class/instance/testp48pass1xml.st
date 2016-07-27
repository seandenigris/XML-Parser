tests
testp48pass1xml
	"Source file: oasis/p48pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep48pass1xml
				documentURI: 'p48pass1.xml']
		raise: self exceptionClass