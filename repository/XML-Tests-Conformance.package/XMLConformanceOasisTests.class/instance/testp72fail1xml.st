tests - exception raising
testp72fail1xml
	"Source file: oasis/p72fail1.xml"

	self
		should: [
			self
				parse: self class sourcep72fail1xml
				documentURI: 'p72fail1.xml']
		raise: self exceptionClass