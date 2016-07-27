tests
testp03pass1xml
	"Source file: oasis/p03pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep03pass1xml
				documentURI: 'p03pass1.xml']
		raise: self exceptionClass