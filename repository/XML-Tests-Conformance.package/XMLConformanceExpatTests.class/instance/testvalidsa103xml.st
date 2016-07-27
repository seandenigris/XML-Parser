tests
testvalidsa103xml
	"Source file: xmltest/valid/sa/103.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa103xml
				documentURI: 'valid/sa/103.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions