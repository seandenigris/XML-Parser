tests - exception raising
testp41fail2xml
	"Source file: oasis/p41fail2.xml"

	self
		should: [
			self
				parse: self class sourcep41fail2xml
				documentURI: 'p41fail2.xml']
		raise: self parserExceptions