tests
testp62pass1xml
	"Source file: oasis/p62pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep62pass1xml
				documentURI: 'p62pass1.xml']
		raise: self exceptionClass