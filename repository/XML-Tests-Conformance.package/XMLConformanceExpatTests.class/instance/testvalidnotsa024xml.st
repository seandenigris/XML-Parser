tests
testvalidnotsa024xml
	"Source file: xmltest/valid/not-sa/024.xml"

	(self isSkippableTest: #testvalidnotsa024xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa024xml
				documentURI: 'valid/not-sa/024.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions