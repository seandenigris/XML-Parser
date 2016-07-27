tests
testp64pass1xml
	"Source file: oasis/p64pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep64pass1xml
				documentURI: 'p64pass1.xml']
		raise: self exceptionClass