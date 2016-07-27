tests
testvaliddtd00xml
	"Source file: sun/valid/dtd00.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevaliddtd00xml
				documentURI: 'valid/dtd00.xml']
		raise: self exceptionClass