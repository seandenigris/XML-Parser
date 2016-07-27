tests
testp25pass1xml
	"Source file: oasis/p25pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep25pass1xml
				documentURI: 'p25pass1.xml']
		raise: self exceptionClass