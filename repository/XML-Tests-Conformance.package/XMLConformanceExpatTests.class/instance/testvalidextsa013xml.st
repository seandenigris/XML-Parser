tests
testvalidextsa013xml
	"Source file: xmltest/valid/ext-sa/013.xml"

	(self isSkippableTest: #testvalidextsa013xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa013xml
				documentURI: 'valid/ext-sa/013.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions