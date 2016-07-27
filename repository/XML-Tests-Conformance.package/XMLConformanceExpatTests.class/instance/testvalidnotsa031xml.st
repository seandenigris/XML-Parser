tests
testvalidnotsa031xml
	"Source file: xmltest/valid/not-sa/031.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa031xml
				documentURI: 'valid/not-sa/031.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions