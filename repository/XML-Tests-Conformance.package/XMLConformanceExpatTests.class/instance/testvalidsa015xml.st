tests
testvalidsa015xml
	"Source file: xmltest/valid/sa/015.xml"

	(self isSkippableTest: #testvalidsa015xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa015xml
				documentURI: 'valid/sa/015.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions