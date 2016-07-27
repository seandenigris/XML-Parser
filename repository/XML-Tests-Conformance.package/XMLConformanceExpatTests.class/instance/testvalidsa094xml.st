tests
testvalidsa094xml
	"Source file: xmltest/valid/sa/094.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa094xml
				documentURI: 'valid/sa/094.xml']
		raise: self exceptionClass