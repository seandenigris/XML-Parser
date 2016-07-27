tests
testvalidsa007xml
	"Source file: xmltest/valid/sa/007.xml"

	(self isSkippableTest: #testvalidsa007xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa007xml
				documentURI: 'valid/sa/007.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions