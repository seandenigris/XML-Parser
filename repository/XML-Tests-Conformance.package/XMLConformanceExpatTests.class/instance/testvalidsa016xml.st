tests
testvalidsa016xml
	"Source file: xmltest/valid/sa/016.xml"

	(self isSkippableTest: #testvalidsa016xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa016xml
				documentURI: 'valid/sa/016.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions