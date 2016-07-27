tests
testp16pass1xml
	"Source file: oasis/p16pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep16pass1xml
				documentURI: 'p16pass1.xml']
		raise: self exceptionClass