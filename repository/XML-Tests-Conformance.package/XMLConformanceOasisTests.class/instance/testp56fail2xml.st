tests - exception raising
testp56fail2xml
	"Source file: oasis/p56fail2.xml"

	self
		should: [
			self
				parse: self class sourcep56fail2xml
				documentURI: 'p56fail2.xml']
		raise: self parserExceptions