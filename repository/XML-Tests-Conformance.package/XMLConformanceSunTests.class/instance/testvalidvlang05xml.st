tests
testvalidvlang05xml
	"Source file: sun/valid/v-lang05.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidvlang05xml
				documentURI: 'valid/v-lang05.xml']
		raise: self exceptionClass