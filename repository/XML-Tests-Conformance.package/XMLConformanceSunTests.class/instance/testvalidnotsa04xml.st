tests
testvalidnotsa04xml
	"Source file: sun/valid/not-sa04.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa04xml
				documentURI: 'valid/not-sa04.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions