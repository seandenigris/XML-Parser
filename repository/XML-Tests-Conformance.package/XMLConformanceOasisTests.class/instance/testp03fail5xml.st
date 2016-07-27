tests - exception raising
testp03fail5xml
	"Source file: oasis/p03fail5.xml"

	self
		should: [
			self
				parse: self class sourcep03fail5xml
				documentURI: 'p03fail5.xml']
		raise: self exceptionClass