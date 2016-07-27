tests
testvalidnotsa005xml
	"Source file: xmltest/valid/not-sa/005.xml"

	(self isSkippableTest: #testvalidnotsa005xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa005xml
				documentURI: 'valid/not-sa/005.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions