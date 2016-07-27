tests
testvalidsa117xml
	"Source file: xmltest/valid/sa/117.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa117xml
				documentURI: 'valid/sa/117.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions