tests
testvalidextsa007xml
	"Source file: xmltest/valid/ext-sa/007.xml"

	(self isSkippableTest: #testvalidextsa007xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa007xml
				documentURI: 'valid/ext-sa/007.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions