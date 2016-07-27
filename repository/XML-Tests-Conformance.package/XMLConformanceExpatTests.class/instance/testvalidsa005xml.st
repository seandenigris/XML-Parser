tests
testvalidsa005xml
	"Source file: xmltest/valid/sa/005.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa005xml
				documentURI: 'valid/sa/005.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions