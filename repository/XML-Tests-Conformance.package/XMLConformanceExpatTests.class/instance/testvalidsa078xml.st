tests
testvalidsa078xml
	"Source file: xmltest/valid/sa/078.xml"

	(self isSkippableTest: #testvalidsa078xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa078xml
				documentURI: 'valid/sa/078.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions