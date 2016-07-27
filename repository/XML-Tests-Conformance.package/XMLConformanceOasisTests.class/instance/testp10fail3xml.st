tests - exception raising
testp10fail3xml
	"Source file: oasis/p10fail3.xml"

	self
		should: [
			self
				parse: self class sourcep10fail3xml
				documentURI: 'p10fail3.xml']
		raise: self exceptionClass