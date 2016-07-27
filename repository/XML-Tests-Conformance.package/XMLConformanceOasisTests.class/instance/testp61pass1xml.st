tests
testp61pass1xml
	"Source file: oasis/p61pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep61pass1xml
				documentURI: 'p61pass1.xml']
		raise: self exceptionClass