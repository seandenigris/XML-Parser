tests
testvalidextsa009xml
	"Source file: xmltest/valid/ext-sa/009.xml"

	(self isSkippableTest: #testvalidextsa009xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa009xml
				documentURI: 'valid/ext-sa/009.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions