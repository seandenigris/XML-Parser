tests
testp25pass2xml
	"Source file: oasis/p25pass2.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep25pass2xml
				documentURI: 'p25pass2.xml']
		raise: self exceptionClass