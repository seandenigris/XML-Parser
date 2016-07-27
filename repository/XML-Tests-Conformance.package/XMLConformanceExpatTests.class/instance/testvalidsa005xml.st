tests
testvalidsa005xml
	"Source file: xmltest/valid/sa/005.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa005xml
				documentURI: 'valid/sa/005.xml']
		raise: self exceptionClass