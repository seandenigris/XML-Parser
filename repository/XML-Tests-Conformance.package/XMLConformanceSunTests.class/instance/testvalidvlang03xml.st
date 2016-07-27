tests
testvalidvlang03xml
	"Source file: sun/valid/v-lang03.xml"

	(self isSkippableTest: #testvalidvlang03xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidvlang03xml
				documentURI: 'valid/v-lang03.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions