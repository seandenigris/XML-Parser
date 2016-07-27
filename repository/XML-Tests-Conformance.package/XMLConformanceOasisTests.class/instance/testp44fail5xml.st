tests - exception raising
testp44fail5xml
	"Source file: oasis/p44fail5.xml"

	self
		should: [
			self
				parse: self class sourcep44fail5xml
				documentURI: 'p44fail5.xml']
		raise: self exceptionClass