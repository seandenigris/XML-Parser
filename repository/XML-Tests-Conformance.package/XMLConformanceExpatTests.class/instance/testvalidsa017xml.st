tests
testvalidsa017xml
	"Source file: xmltest/valid/sa/017.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa017xml
				documentURI: 'valid/sa/017.xml']
		raise: self exceptionClass