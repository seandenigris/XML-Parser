tests
testvalidsa118xml
	"Source file: xmltest/valid/sa/118.xml"

	(self isSkippableTest: #testvalidsa118xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa118xml
				documentURI: 'valid/sa/118.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions