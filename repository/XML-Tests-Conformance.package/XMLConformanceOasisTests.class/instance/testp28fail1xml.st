tests - exception raising
testp28fail1xml
	"Source file: oasis/p28fail1.xml"

	self
		should: [
			self
				parse: self class sourcep28fail1xml
				documentURI: 'p28fail1.xml']
		raise: self exceptionClass