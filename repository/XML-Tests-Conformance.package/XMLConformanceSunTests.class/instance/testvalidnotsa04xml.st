tests
testvalidnotsa04xml
	"Source file: sun/valid/not-sa04.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa04xml
				documentURI: 'valid/not-sa04.xml']
		raise: self exceptionClass