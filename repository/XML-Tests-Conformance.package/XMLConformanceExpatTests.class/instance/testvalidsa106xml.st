tests
testvalidsa106xml
	"Source file: xmltest/valid/sa/106.xml"

	(self isSkippableTest: #testvalidsa106xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa106xml
				documentURI: 'valid/sa/106.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions