tests
testvalidsa095xml
	"Source file: xmltest/valid/sa/095.xml"

	(self isSkippableTest: #testvalidsa095xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa095xml
				documentURI: 'valid/sa/095.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions