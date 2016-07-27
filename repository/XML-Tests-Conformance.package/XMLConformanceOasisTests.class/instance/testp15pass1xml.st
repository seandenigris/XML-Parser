tests
testp15pass1xml
	"Source file: oasis/p15pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep15pass1xml
				documentURI: 'p15pass1.xml']
		raise: self exceptionClass