tests
testvalidpe03xml
	"Source file: sun/valid/pe03.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidpe03xml
				documentURI: 'valid/pe03.xml']
		raise: self exceptionClass