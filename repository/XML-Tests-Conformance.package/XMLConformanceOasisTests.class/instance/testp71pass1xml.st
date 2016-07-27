tests
testp71pass1xml
	"Source file: oasis/p71pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep71pass1xml
				documentURI: 'p71pass1.xml']
		raise: self exceptionClass