tests - exception raising
testp12fail6xml
	"Source file: oasis/p12fail6.xml"

	self
		should: [
			self
				parse: self class sourcep12fail6xml
				documentURI: 'p12fail6.xml']
		raise: self exceptionClass