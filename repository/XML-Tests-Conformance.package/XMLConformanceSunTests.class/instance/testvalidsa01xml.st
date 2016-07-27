tests
testvalidsa01xml
	"Source file: sun/valid/sa01.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa01xml
				documentURI: 'valid/sa01.xml']
		raise: self exceptionClass