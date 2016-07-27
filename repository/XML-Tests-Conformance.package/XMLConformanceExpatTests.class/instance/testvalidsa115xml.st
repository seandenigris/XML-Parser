tests
testvalidsa115xml
	"Source file: xmltest/valid/sa/115.xml"

	(self isSkippableTest: #testvalidsa115xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa115xml
				documentURI: 'valid/sa/115.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions