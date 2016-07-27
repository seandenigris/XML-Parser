tests - exception raising
testp75fail4xml
	"Source file: oasis/p75fail4.xml"

	self
		should: [
			self
				parse: self class sourcep75fail4xml
				documentURI: 'p75fail4.xml']
		raise: self exceptionClass