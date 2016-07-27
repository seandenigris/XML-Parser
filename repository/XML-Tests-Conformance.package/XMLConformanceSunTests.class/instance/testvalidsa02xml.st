tests
testvalidsa02xml
	"Source file: sun/valid/sa02.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa02xml
				documentURI: 'valid/sa02.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions