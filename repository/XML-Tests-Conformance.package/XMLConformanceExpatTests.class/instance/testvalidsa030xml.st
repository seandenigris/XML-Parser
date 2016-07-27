tests
testvalidsa030xml
	"Source file: xmltest/valid/sa/030.xml"

	(self isSkippableTest: #testvalidsa030xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa030xml
				documentURI: 'valid/sa/030.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions