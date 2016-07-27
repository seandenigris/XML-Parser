tests
testvalidsa097xml
	"Source file: xmltest/valid/sa/097.xml"

	(self isSkippableTest: #testvalidsa097xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa097xml
				documentURI: 'valid/sa/097.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions