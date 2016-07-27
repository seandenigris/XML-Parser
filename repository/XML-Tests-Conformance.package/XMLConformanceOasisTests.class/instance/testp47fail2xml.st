tests - exception raising
testp47fail2xml
	"Source file: oasis/p47fail2.xml"

	self
		should: [
			self
				parse: self class sourcep47fail2xml
				documentURI: 'p47fail2.xml']
		raise: self exceptionClass