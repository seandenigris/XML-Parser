tests
testvaliddtd01xml
	"Source file: sun/valid/dtd01.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevaliddtd01xml
				documentURI: 'valid/dtd01.xml']
		raise: self exceptionClass