tests
testvalidoptionalxml
	"Source file: sun/valid/optional.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidoptionalxml
				documentURI: 'valid/optional.xml']
		raise: self exceptionClass