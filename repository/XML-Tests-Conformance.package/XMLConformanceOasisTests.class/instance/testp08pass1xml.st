tests
testp08pass1xml
	"Source file: oasis/p08pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep08pass1xml
				documentURI: 'p08pass1.xml']
		raise: self exceptionClass