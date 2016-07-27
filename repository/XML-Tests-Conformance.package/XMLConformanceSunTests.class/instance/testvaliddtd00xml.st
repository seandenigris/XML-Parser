tests
testvaliddtd00xml
	"Source file: sun/valid/dtd00.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevaliddtd00xml
				documentURI: 'valid/dtd00.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions