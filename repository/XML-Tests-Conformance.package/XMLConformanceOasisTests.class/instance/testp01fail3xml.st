tests - exception raising
testp01fail3xml
	"Source file: oasis/p01fail3.xml"

	self
		should: [
			self
				parse: self class sourcep01fail3xml
				documentURI: 'p01fail3.xml']
		raise: self exceptionClass