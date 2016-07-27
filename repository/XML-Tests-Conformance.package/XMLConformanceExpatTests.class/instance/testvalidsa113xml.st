tests
testvalidsa113xml
	"Source file: xmltest/valid/sa/113.xml"

	(self isSkippableTest: #testvalidsa113xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa113xml
				documentURI: 'valid/sa/113.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions