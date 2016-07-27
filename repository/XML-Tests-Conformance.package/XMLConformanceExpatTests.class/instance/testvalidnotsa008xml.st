tests
testvalidnotsa008xml
	"Source file: xmltest/valid/not-sa/008.xml"

	(self isSkippableTest: #testvalidnotsa008xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa008xml
				documentURI: 'valid/not-sa/008.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions