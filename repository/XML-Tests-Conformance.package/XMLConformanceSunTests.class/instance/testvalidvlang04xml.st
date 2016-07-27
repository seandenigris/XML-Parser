tests
testvalidvlang04xml
	"Source file: sun/valid/v-lang04.xml"

	(self isSkippableTest: #testvalidvlang04xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidvlang04xml
				documentURI: 'valid/v-lang04.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions