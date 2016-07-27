tests
testp28pass1xml
	"Source file: oasis/p28pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep28pass1xml
				documentURI: 'p28pass1.xml']
		raise: self exceptionClass