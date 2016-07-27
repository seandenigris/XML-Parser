tests
testvalidelementxml
	"Source file: sun/valid/element.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidelementxml
				documentURI: 'valid/element.xml']
		raise: self exceptionClass