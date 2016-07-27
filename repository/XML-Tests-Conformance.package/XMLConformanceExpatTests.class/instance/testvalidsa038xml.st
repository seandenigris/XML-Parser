tests
testvalidsa038xml
	"Source file: xmltest/valid/sa/038.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa038xml
				documentURI: 'valid/sa/038.xml']
		raise: self exceptionClass