tests - exception raising
testp23fail4xml
	"Source file: oasis/p23fail4.xml"

	self
		should: [
			self
				parse: self class sourcep23fail4xml
				documentURI: 'p23fail4.xml']
		raise: self exceptionClass