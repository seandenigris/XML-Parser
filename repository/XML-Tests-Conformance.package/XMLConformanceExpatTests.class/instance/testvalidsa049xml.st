tests
testvalidsa049xml
	"Source file: xmltest/valid/sa/049.xml"

	(self isSkippableTest: #testvalidsa049xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa049xml
				documentURI: 'valid/sa/049.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions