tests - exception raising
testp03fail27xml
	"Source file: oasis/p03fail27.xml"

	self
		should: [
			self
				parse: self class sourcep03fail27xml
				documentURI: 'p03fail27.xml']
		raise: self exceptionClass