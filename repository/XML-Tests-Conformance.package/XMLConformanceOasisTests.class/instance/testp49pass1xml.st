tests
testp49pass1xml
	"Source file: oasis/p49pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep49pass1xml
				documentURI: 'p49pass1.xml']
		raise: self exceptionClass