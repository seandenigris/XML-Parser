tests
testvalidnotsa007xml
	"Source file: xmltest/valid/not-sa/007.xml"

	(self isSkippableTest: #testvalidnotsa007xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa007xml
				documentURI: 'valid/not-sa/007.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions