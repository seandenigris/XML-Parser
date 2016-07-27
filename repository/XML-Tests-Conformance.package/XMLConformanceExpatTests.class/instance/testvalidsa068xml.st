tests
testvalidsa068xml
	"Source file: xmltest/valid/sa/068.xml"

	(self isSkippableTest: #testvalidsa068xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa068xml
				documentURI: 'valid/sa/068.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions