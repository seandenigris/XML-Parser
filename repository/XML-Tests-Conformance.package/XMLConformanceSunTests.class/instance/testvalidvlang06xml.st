tests
testvalidvlang06xml
	"Source file: sun/valid/v-lang06.xml"

	(self isSkippableTest: #testvalidvlang06xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidvlang06xml
				documentURI: 'valid/v-lang06.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions