tests - exception raising
testp46fail3xml
	"Source file: oasis/p46fail3.xml"

	self
		should: [
			self
				parse: self class sourcep46fail3xml
				documentURI: 'p46fail3.xml']
		raise: self exceptionClass