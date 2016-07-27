tests
testvalidextsa003xml
	"Source file: xmltest/valid/ext-sa/003.xml"

	(self isSkippableTest: #testvalidextsa003xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa003xml
				documentURI: 'valid/ext-sa/003.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions