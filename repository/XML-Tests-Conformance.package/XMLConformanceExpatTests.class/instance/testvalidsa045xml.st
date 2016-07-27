tests
testvalidsa045xml
	"Source file: xmltest/valid/sa/045.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa045xml
				documentURI: 'valid/sa/045.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions