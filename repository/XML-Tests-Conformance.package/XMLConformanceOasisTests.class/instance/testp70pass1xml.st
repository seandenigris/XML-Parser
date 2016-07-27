tests
testp70pass1xml
	"Source file: oasis/p70pass1.xml"

	self
		shouldnt: [
			self
				parse: self class sourcep70pass1xml
				documentURI: 'p70pass1.xml']
		raise: self exceptionClass