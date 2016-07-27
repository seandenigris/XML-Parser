tests
testvalidsa112xml
	"Source file: xmltest/valid/sa/112.xml"

	(self isSkippableTest: #testvalidsa112xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa112xml
				documentURI: 'valid/sa/112.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions