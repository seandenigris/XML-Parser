tests
testvalidnotsa02xml
	"Source file: sun/valid/not-sa02.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa02xml
				documentURI: 'valid/not-sa02.xml']
		raise: self exceptionClass