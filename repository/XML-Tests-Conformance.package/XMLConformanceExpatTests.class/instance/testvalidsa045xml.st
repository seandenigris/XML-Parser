tests
testvalidsa045xml
	"Source file: xmltest/valid/sa/045.xml"

	(self isSkippableTest: #testvalidsa045xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa045xml
				documentURI: 'valid/sa/045.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions