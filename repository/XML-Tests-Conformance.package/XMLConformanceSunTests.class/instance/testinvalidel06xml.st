tests - exception raising
testinvalidel06xml
	"Source file: sun/invalid/el06.xml"

	self
		should: [
			self
				parse: self class sourceinvalidel06xml
				documentURI: 'invalid/el06.xml']
		raise: self exceptionClass