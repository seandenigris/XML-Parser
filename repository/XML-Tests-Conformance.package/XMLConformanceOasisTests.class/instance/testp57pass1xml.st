tests
testp57pass1xml
	"Source file: oasis/p57pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep57pass1xml
				documentURI: 'p57pass1.xml']
		raise: self exceptionClass