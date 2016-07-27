tests
testvalidsa047xml
	"Source file: xmltest/valid/sa/047.xml"

	(self isSkippableTest: #testvalidsa047xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa047xml
				documentURI: 'valid/sa/047.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions