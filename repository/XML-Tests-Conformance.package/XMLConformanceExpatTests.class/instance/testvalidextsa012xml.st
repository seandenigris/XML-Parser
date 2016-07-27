tests
testvalidextsa012xml
	"Source file: xmltest/valid/ext-sa/012.xml"

	(self isSkippableTest: #testvalidextsa012xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidextsa012xml
				documentURI: 'valid/ext-sa/012.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions