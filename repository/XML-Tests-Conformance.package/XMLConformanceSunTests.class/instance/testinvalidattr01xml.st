tests - exception raising
testinvalidattr01xml
	"Source file: sun/invalid/attr01.xml"

	self
		should: [
			self
				parse: self class sourceinvalidattr01xml
				documentURI: 'invalid/attr01.xml']
		raise: self exceptionClass