tests - exception raising
testp44fail4xml
	"Source file: oasis/p44fail4.xml"

	self
		should: [
			self
				parse: self class sourcep44fail4xml
				documentURI: 'p44fail4.xml']
		raise: self exceptionClass