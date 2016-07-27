tests - exception raising
testp72fail2xml
	"Source file: oasis/p72fail2.xml"

	self
		should: [
			self
				parse: self class sourcep72fail2xml
				documentURI: 'p72fail2.xml']
		raise: self exceptionClass