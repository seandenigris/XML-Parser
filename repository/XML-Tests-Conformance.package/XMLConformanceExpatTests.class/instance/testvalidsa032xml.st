tests
testvalidsa032xml
	"Source file: xmltest/valid/sa/032.xml"

	(self isSkippableTest: #testvalidsa032xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa032xml
				documentURI: 'valid/sa/032.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions