tests
testvalidsa079xml
	"Source file: xmltest/valid/sa/079.xml"

	(self isSkippableTest: #testvalidsa079xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa079xml
				documentURI: 'valid/sa/079.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions