tests
testp16pass3xml
	"Source file: oasis/p16pass3.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep16pass3xml
				documentURI: 'p16pass3.xml']
		raise: self exceptionClass