tests
testvalidsa035xml
	"Source file: xmltest/valid/sa/035.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa035xml
				documentURI: 'valid/sa/035.xml']
		raise: self exceptionClass