tests - exception raising
testp03fail19xml
	"Source file: oasis/p03fail19.xml"

	self
		should: [
			self
				parse: self class sourcep03fail19xml
				documentURI: 'p03fail19.xml']
		raise: self exceptionClass