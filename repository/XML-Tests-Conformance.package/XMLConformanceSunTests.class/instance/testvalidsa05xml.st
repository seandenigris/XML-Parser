tests
testvalidsa05xml
	"Source file: sun/valid/sa05.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa05xml
				documentURI: 'valid/sa05.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions