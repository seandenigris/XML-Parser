tests
testp16pass2xml
	"Source file: oasis/p16pass2.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep16pass2xml
				documentURI: 'p16pass2.xml']
		raise: self exceptionClass