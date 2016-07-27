tests
testvalidsa048xml
	"Source file: xmltest/valid/sa/048.xml"

	(self isSkippableTest: #testvalidsa048xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa048xml
				documentURI: 'valid/sa/048.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions