tests
testvalidsa060xml
	"Source file: xmltest/valid/sa/060.xml"

	(self isSkippableTest: #testvalidsa060xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa060xml
				documentURI: 'valid/sa/060.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions