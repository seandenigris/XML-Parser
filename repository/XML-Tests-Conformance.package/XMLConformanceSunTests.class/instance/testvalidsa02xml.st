tests
testvalidsa02xml
	"Source file: sun/valid/sa02.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa02xml
				documentURI: 'valid/sa02.xml']
		raise: self exceptionClass