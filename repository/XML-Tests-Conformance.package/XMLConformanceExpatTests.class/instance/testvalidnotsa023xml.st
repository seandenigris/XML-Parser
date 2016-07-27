tests
testvalidnotsa023xml
	"Source file: xmltest/valid/not-sa/023.xml"

	(self isSkippableTest: #testvalidnotsa023xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa023xml
				documentURI: 'valid/not-sa/023.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions