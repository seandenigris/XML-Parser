tests
testvalidrequired00xml
	"Source file: sun/valid/required00.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidrequired00xml
				documentURI: 'valid/required00.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions