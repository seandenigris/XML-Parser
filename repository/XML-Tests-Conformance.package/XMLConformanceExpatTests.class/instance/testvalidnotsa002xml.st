tests
testvalidnotsa002xml
	"Source file: xmltest/valid/not-sa/002.xml"

	(self isSkippableTest: #testvalidnotsa002xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa002xml
				documentURI: 'valid/not-sa/002.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions