tests
testvalidsa003xml
	"Source file: xmltest/valid/sa/003.xml"

	(self isSkippableTest: #testvalidsa003xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa003xml
				documentURI: 'valid/sa/003.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions