tests
testvalidsa103xml
	"Source file: xmltest/valid/sa/103.xml"

	(self isSkippableTest: #testvalidsa103xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa103xml
				documentURI: 'valid/sa/103.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions