tests
testvalidsa069xml
	"Source file: xmltest/valid/sa/069.xml"

	(self isSkippableTest: #testvalidsa069xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa069xml
				documentURI: 'valid/sa/069.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions