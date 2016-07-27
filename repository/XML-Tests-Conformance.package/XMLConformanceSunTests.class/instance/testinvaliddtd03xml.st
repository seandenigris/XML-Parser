tests - exception raising
testinvaliddtd03xml
	"Source file: sun/invalid/dtd03.xml"

	self
		should: [
			self
				parse: self class sourceinvaliddtd03xml
				documentURI: 'invalid/dtd03.xml']
		raise: self exceptionClass