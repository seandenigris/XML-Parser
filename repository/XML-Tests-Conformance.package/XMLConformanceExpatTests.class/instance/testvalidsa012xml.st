tests
testvalidsa012xml
	"Source file: xmltest/valid/sa/012.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa012xml
				documentURI: 'valid/sa/012.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions