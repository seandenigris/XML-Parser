tests
testvalidsa054xml
	"Source file: xmltest/valid/sa/054.xml"

	(self isSkippableTest: #testvalidsa054xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa054xml
				documentURI: 'valid/sa/054.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions