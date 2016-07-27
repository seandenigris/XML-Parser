tests
testvalidnotsa028xml
	"Source file: xmltest/valid/not-sa/028.xml"

	(self isSkippableTest: #testvalidnotsa028xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa028xml
				documentURI: 'valid/not-sa/028.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions