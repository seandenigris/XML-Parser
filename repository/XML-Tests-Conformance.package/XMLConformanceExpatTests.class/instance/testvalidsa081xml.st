tests
testvalidsa081xml
	"Source file: xmltest/valid/sa/081.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa081xml
				documentURI: 'valid/sa/081.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions