tests
testvalidpe00xml
	"Source file: sun/valid/pe00.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidpe00xml
				documentURI: 'valid/pe00.xml']
		raise: self exceptionClass