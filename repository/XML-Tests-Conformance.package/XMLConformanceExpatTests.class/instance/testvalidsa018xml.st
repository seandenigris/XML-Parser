tests
testvalidsa018xml
	"Source file: xmltest/valid/sa/018.xml"

	(self isSkippableTest: #testvalidsa018xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa018xml
				documentURI: 'valid/sa/018.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions