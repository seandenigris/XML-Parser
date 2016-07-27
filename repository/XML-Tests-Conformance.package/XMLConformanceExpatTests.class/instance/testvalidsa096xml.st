tests
testvalidsa096xml
	"Source file: xmltest/valid/sa/096.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa096xml
				documentURI: 'valid/sa/096.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions