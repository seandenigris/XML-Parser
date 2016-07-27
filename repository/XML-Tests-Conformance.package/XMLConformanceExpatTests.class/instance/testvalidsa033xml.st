tests
testvalidsa033xml
	"Source file: xmltest/valid/sa/033.xml"

	(self isSkippableTest: #testvalidsa033xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa033xml
				documentURI: 'valid/sa/033.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions