tests
testvalidsa096xml
	"Source file: xmltest/valid/sa/096.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa096xml
				documentURI: 'valid/sa/096.xml']
		raise: self exceptionClass