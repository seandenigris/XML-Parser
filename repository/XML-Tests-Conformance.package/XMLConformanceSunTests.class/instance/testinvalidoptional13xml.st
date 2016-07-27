tests - exception raising
testinvalidoptional13xml
	"Source file: sun/invalid/optional13.xml"

	self
		should: [
			self
				parse: self class sourceinvalidoptional13xml
				documentURI: 'invalid/optional13.xml']
		raise: self exceptionClass