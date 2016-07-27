tests - exception raising
testinvalidrequired01xml
	"Source file: sun/invalid/required01.xml"

	self
		should: [
			self
				parse: self class sourceinvalidrequired01xml
				documentURI: 'invalid/required01.xml']
		raise: self exceptionClass