tests
testvalidsa064xml
	"Source file: xmltest/valid/sa/064.xml"

	(self isSkippableTest: #testvalidsa064xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa064xml
				documentURI: 'valid/sa/064.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions