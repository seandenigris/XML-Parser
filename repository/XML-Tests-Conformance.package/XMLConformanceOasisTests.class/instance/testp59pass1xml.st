tests
testp59pass1xml
	"Source file: oasis/p59pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep59pass1xml
				documentURI: 'p59pass1.xml']
		raise: self exceptionClass