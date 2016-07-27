tests - exception raising
testp05fail5xml
	"Source file: oasis/p05fail5.xml"

	self
		should: [
			self
				parse: self class sourcep05fail5xml
				documentURI: 'p05fail5.xml']
		raise: self exceptionClass