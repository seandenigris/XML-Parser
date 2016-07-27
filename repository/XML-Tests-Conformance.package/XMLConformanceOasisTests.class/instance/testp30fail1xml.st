tests - exception raising
testp30fail1xml
	"Source file: oasis/p30fail1.xml"

	self
		should: [
			self
				parse: self class sourcep30fail1xml
				documentURI: 'p30fail1.xml']
		raise: self exceptionClass