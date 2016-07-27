tests
testvalidsa077xml
	"Source file: xmltest/valid/sa/077.xml"

	(self isSkippableTest: #testvalidsa077xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa077xml
				documentURI: 'valid/sa/077.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions