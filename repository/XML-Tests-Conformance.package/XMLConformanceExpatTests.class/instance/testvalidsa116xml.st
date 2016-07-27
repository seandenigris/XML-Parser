tests
testvalidsa116xml
	"Source file: xmltest/valid/sa/116.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa116xml
				documentURI: 'valid/sa/116.xml']
		raise: self exceptionClass