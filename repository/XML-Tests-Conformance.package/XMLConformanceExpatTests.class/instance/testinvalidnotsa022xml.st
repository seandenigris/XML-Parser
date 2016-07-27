tests - exception raising
testinvalidnotsa022xml
	"Source file: xmltest/invalid/not-sa/022.xml"

	self
		should: [
			self
				parse: self class sourceinvalidnotsa022xml
				documentURI: 'invalid/not-sa/022.xml']
		raise: self exceptionClass