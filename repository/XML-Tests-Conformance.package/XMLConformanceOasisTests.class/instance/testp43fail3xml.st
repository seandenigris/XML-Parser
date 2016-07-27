tests - exception raising
testp43fail3xml
	"Source file: oasis/p43fail3.xml"

	self
		should: [
			self
				parse: self class sourcep43fail3xml
				documentURI: 'p43fail3.xml']
		raise: self exceptionClass