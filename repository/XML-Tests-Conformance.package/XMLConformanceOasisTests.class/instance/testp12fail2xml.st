tests - exception raising
testp12fail2xml
	"Source file: oasis/p12fail2.xml"

	self
		should: [
			self
				parse: self class sourcep12fail2xml
				documentURI: 'p12fail2.xml']
		raise: self parserExceptions