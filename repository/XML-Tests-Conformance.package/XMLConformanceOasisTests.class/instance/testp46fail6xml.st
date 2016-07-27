tests - exception raising
testp46fail6xml
	"Source file: oasis/p46fail6.xml"

	self
		should: [
			self
				parse: self class sourcep46fail6xml
				documentURI: 'p46fail6.xml']
		raise: self exceptionClass