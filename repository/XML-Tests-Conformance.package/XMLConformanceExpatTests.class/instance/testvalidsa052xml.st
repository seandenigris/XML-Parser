tests
testvalidsa052xml
	"Source file: xmltest/valid/sa/052.xml"

	(self isSkippableTest: #testvalidsa052xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa052xml
				documentURI: 'valid/sa/052.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions