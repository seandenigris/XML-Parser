tests - exception raising
testp59fail2xml
	"Source file: oasis/p59fail2.xml"

	self
		should: [
			self
				parse: self class sourcep59fail2xml
				documentURI: 'p59fail2.xml']
		raise: self exceptionClass