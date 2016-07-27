tests
testvalidsa055xml
	"Source file: xmltest/valid/sa/055.xml"

	(self isSkippableTest: #testvalidsa055xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa055xml
				documentURI: 'valid/sa/055.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions