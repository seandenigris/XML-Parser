tests
testp52pass1xml
	"Source file: oasis/p52pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep52pass1xml
				documentURI: 'p52pass1.xml']
		raise: self exceptionClass