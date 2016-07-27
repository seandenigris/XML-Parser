tests - exception raising
testinvalidnotsa13xml
	"Source file: sun/invalid/not-sa13.xml"

	self
		should: [
			self
				parse: self class sourceinvalidnotsa13xml
				documentURI: 'invalid/not-sa13.xml']
		raise: self exceptionClass