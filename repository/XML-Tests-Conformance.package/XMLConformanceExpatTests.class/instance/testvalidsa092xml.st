tests
testvalidsa092xml
	"Source file: xmltest/valid/sa/092.xml"

	(self isSkippableTest: #testvalidsa092xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa092xml
				documentURI: 'valid/sa/092.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions