tests
testvalidpe01xml
	"Source file: sun/valid/pe01.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidpe01xml
				documentURI: 'valid/pe01.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions