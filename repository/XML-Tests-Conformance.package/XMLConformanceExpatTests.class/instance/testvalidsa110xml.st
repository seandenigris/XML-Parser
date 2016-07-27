tests
testvalidsa110xml
	"Source file: xmltest/valid/sa/110.xml"

	(self isSkippableTest: #testvalidsa110xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa110xml
				documentURI: 'valid/sa/110.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions