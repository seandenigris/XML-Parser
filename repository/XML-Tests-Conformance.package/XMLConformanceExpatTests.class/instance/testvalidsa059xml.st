tests
testvalidsa059xml
	"Source file: xmltest/valid/sa/059.xml"

	(self isSkippableTest: #testvalidsa059xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa059xml
				documentURI: 'valid/sa/059.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions