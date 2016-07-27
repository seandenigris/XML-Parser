tests
testvalidsa082xml
	"Source file: xmltest/valid/sa/082.xml"

	(self isSkippableTest: #testvalidsa082xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa082xml
				documentURI: 'valid/sa/082.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions