tests - exception raising
testp08fail2xml
	"Source file: oasis/p08fail2.xml"

	self
		should: [
			self
				parse: self class sourcep08fail2xml
				documentURI: 'p08fail2.xml']
		raise: self exceptionClass