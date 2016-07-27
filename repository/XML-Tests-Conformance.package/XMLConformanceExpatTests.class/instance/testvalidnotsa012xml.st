tests
testvalidnotsa012xml
	"Source file: xmltest/valid/not-sa/012.xml"

	(self isSkippableTest: #testvalidnotsa012xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa012xml
				documentURI: 'valid/not-sa/012.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions