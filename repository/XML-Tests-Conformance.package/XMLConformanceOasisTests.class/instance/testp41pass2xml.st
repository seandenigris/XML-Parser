tests
testp41pass2xml
	"Source file: oasis/p41pass2.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep41pass2xml
				documentURI: 'p41pass2.xml']
		raise: self exceptionClass