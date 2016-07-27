tests
testp41pass1xml
	"Source file: oasis/p41pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep41pass1xml
				documentURI: 'p41pass1.xml']
		raise: self exceptionClass