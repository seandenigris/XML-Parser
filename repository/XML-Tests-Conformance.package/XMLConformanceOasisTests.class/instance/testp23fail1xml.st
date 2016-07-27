tests - exception raising
testp23fail1xml
	"Source file: oasis/p23fail1.xml"

	self
		should: [
			self
				parse: self class sourcep23fail1xml
				documentURI: 'p23fail1.xml']
		raise: self exceptionClass