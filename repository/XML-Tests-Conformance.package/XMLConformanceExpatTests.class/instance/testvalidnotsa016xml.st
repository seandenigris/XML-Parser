tests
testvalidnotsa016xml
	"Source file: xmltest/valid/not-sa/016.xml"

	(self isSkippableTest: #testvalidnotsa016xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa016xml
				documentURI: 'valid/not-sa/016.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions