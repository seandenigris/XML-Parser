tests - exception raising
testp23fail3xml
	"Source file: oasis/p23fail3.xml"

	self
		should: [
			self
				parse: self class sourcep23fail3xml
				documentURI: 'p23fail3.xml']
		raise: self exceptionClass