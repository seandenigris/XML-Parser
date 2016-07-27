tests - exception raising
testp75fail6xml
	"Source file: oasis/p75fail6.xml"

	self
		should: [
			self
				parse: self class sourcep75fail6xml
				documentURI: 'p75fail6.xml']
		raise: self parserExceptions