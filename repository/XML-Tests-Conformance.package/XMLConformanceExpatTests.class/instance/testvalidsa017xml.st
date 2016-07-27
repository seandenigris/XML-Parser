tests
testvalidsa017xml
	"Source file: xmltest/valid/sa/017.xml"

	(self isSkippableTest: #testvalidsa017xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa017xml
				documentURI: 'valid/sa/017.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions