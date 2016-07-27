tests - exception raising
testp23fail5xml
	"Source file: oasis/p23fail5.xml"

	self
		should: [
			self
				parse: self class sourcep23fail5xml
				documentURI: 'p23fail5.xml']
		raise: self exceptionClass