tests
testvalidsa012xml
	"Source file: xmltest/valid/sa/012.xml"

	(self isSkippableTest: #testvalidsa012xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa012xml
				documentURI: 'valid/sa/012.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions