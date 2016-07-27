tests
testvalidnotsa005xml
	"Source file: xmltest/valid/not-sa/005.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa005xml
				documentURI: 'valid/not-sa/005.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions