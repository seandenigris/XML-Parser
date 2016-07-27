tests
testp29pass1xml
	"Source file: oasis/p29pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep29pass1xml
				documentURI: 'p29pass1.xml']
		raise: self exceptionClass