tests
testvalidnotsa025xml
	"Source file: xmltest/valid/not-sa/025.xml"

	(self isSkippableTest: #testvalidnotsa025xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa025xml
				documentURI: 'valid/not-sa/025.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions