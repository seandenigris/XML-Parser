tests - exception raising
testp10fail2xml
	"Source file: oasis/p10fail2.xml"

	self
		should: [
			self
				parse: self class sourcep10fail2xml
				documentURI: 'p10fail2.xml']
		raise: self parserExceptions