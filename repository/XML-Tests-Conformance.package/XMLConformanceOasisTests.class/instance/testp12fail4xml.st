tests - exception raising
testp12fail4xml
	"Source file: oasis/p12fail4.xml"

	self
		should: [
			self
				parse: self class sourcep12fail4xml
				documentURI: 'p12fail4.xml']
		raise: self exceptionClass