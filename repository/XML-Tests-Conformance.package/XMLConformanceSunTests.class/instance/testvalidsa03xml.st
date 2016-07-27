tests
testvalidsa03xml
	"Source file: sun/valid/sa03.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa03xml
				documentURI: 'valid/sa03.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions