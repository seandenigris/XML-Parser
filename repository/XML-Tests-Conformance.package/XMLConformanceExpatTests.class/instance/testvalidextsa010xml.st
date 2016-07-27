tests
testvalidextsa010xml
	"Source file: xmltest/valid/ext-sa/010.xml"

	(self isSkippableTest: #testvalidextsa010xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa010xml
				documentURI: 'valid/ext-sa/010.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions