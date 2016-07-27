tests
testvalidsa014xml
	"Source file: xmltest/valid/sa/014.xml"

	(self isSkippableTest: #testvalidsa014xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa014xml
				documentURI: 'valid/sa/014.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions