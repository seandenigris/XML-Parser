tests - exception raising
testp12fail3xml
	"Source file: oasis/p12fail3.xml"

	self
		should: [
			self
				parse: self class sourcep12fail3xml
				documentURI: 'p12fail3.xml']
		raise: self exceptionClass