tests
testvalidsa04xml
	"Source file: sun/valid/sa04.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa04xml
				documentURI: 'valid/sa04.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions