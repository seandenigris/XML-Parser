tests
testvalidnotsa017xml
	"Source file: xmltest/valid/not-sa/017.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa017xml
				documentURI: 'valid/not-sa/017.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions