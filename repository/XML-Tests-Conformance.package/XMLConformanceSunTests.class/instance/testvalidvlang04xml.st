tests
testvalidvlang04xml
	"Source file: sun/valid/v-lang04.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidvlang04xml
				documentURI: 'valid/v-lang04.xml']
		raise: self exceptionClass