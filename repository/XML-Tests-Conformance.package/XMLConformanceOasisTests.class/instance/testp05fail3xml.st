tests - exception raising
testp05fail3xml
	"Source file: oasis/p05fail3.xml"

	self
		should: [
			self
				parse: self class sourcep05fail3xml
				documentURI: 'p05fail3.xml']
		raise: self exceptionClass