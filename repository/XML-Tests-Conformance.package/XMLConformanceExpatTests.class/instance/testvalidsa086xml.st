tests
testvalidsa086xml
	"Source file: xmltest/valid/sa/086.xml"

	(self isSkippableTest: #testvalidsa086xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa086xml
				documentURI: 'valid/sa/086.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions