tests
testp69pass1xml
	"Source file: oasis/p69pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep69pass1xml
				documentURI: 'p69pass1.xml']
		raise: self exceptionClass