tests
testvalidsa055xml
	"Source file: xmltest/valid/sa/055.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa055xml
				documentURI: 'valid/sa/055.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions