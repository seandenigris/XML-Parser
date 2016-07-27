tests - exception raising
testp64fail2xml
	"Source file: oasis/p64fail2.xml"

	self
		should: [
			self
				parse: self class sourcep64fail2xml
				documentURI: 'p64fail2.xml']
		raise: self parserExceptions