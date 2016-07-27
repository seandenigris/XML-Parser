tests
testvalidsa017axml
	"Source file: xmltest/valid/sa/017a.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa017axml
				documentURI: 'valid/sa/017a.xml']
		raise: self exceptionClass