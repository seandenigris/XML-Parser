tests - exception raising
testp75fail1xml
	"Source file: oasis/p75fail1.xml"

	self
		should: [
			self
				parse: self class sourcep75fail1xml
				documentURI: 'p75fail1.xml']
		raise: self exceptionClass