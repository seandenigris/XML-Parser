tests - exception raising
testp46fail1xml
	"Source file: oasis/p46fail1.xml"

	self
		should: [
			self
				parse: self class sourcep46fail1xml
				documentURI: 'p46fail1.xml']
		raise: self exceptionClass