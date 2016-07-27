tests - exception raising
testp46fail4xml
	"Source file: oasis/p46fail4.xml"

	self
		should: [
			self
				parse: self class sourcep46fail4xml
				documentURI: 'p46fail4.xml']
		raise: self exceptionClass