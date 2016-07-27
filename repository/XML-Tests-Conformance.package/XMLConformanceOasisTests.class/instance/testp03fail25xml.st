tests - exception raising
testp03fail25xml
	"Source file: oasis/p03fail25.xml"

	self
		should: [
			self
				parse: self class sourcep03fail25xml
				documentURI: 'p03fail25.xml']
		raise: self exceptionClass