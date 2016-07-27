tests
testvalidsa062xml
	"Source file: xmltest/valid/sa/062.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa062xml
				documentURI: 'valid/sa/062.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions