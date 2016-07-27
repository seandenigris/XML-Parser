tests
testvalidnotsa01xml
	"Source file: sun/valid/not-sa01.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotsa01xml
				documentURI: 'valid/not-sa01.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions