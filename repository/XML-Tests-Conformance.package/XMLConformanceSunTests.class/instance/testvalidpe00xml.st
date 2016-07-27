tests
testvalidpe00xml
	"Source file: sun/valid/pe00.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidpe00xml
				documentURI: 'valid/pe00.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions