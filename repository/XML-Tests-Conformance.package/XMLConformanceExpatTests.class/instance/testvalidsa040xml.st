tests
testvalidsa040xml
	"Source file: xmltest/valid/sa/040.xml"

	(self isSkippableTest: #testvalidsa040xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa040xml
				documentURI: 'valid/sa/040.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions