tests
testp06pass1xml
	"Source file: oasis/p06pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep06pass1xml
				documentURI: 'p06pass1.xml']
		raise: self exceptionClass