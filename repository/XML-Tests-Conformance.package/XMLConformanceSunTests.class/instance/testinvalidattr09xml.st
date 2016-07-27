tests - exception raising
testinvalidattr09xml
	"Source file: sun/invalid/attr09.xml"

	self
		should: [
			self
				parse: self class sourceinvalidattr09xml
				documentURI: 'invalid/attr09.xml']
		raise: self exceptionClass