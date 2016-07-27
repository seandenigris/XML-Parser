tests - exception raising
testinvalid002xml
	"Source file: xmltest/invalid/002.xml"

	self
		should: [
			self
				parse: self class sourceinvalid002xml
				documentURI: 'invalid/002.xml']
		raise: self exceptionClass