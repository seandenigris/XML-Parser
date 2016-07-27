tests - exception raising
testp45fail3xml
	"Source file: oasis/p45fail3.xml"

	self
		should: [
			self
				parse: self class sourcep45fail3xml
				documentURI: 'p45fail3.xml']
		raise: self exceptionClass