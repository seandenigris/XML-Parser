tests - exception raising
testinvaliddtd06xml
	"Source file: sun/invalid/dtd06.xml"

	self
		should: [
			self
				parse: self class sourceinvaliddtd06xml
				documentURI: 'invalid/dtd06.xml']
		raise: self exceptionClass