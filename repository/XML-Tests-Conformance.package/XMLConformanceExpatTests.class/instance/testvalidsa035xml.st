tests
testvalidsa035xml
	"Source file: xmltest/valid/sa/035.xml"

	(self isSkippableTest: #testvalidsa035xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa035xml
				documentURI: 'valid/sa/035.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions