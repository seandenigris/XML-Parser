tests
testvalidvlang04xml
	"Source file: sun/valid/v-lang04.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidvlang04xml
				documentURI: 'valid/v-lang04.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions