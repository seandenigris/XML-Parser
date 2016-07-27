tests
testvalidsa038xml
	"Source file: xmltest/valid/sa/038.xml"

	(self isSkippableTest: #testvalidsa038xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa038xml
				documentURI: 'valid/sa/038.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions