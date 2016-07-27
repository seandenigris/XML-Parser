tests
testvalidvlang01xml
	"Source file: sun/valid/v-lang01.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidvlang01xml
				documentURI: 'valid/v-lang01.xml']
		raise: self exceptionClass