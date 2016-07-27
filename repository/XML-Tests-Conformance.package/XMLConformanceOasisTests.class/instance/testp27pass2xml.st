tests
testp27pass2xml
	"Source file: oasis/p27pass2.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep27pass2xml
				documentURI: 'p27pass2.xml']
		raise: self exceptionClass