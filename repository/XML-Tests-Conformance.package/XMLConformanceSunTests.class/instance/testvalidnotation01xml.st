tests
testvalidnotation01xml
	"Source file: sun/valid/notation01.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotation01xml
				documentURI: 'valid/notation01.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions