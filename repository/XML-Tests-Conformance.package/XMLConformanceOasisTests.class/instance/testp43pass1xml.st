tests
testp43pass1xml
	"Source file: oasis/p43pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep43pass1xml
				documentURI: 'p43pass1.xml']
		raise: self exceptionClass