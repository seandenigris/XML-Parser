tests - exception raising
testp03fail16xml
	"Source file: oasis/p03fail16.xml"

	self
		should: [
			self
				parse: self class sourcep03fail16xml
				documentURI: 'p03fail16.xml']
		raise: self exceptionClass