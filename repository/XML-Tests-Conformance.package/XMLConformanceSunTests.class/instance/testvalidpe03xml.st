tests
testvalidpe03xml
	"Source file: sun/valid/pe03.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidpe03xml
				documentURI: 'valid/pe03.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions