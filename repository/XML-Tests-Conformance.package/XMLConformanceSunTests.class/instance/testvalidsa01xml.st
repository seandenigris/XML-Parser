tests
testvalidsa01xml
	"Source file: sun/valid/sa01.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa01xml
				documentURI: 'valid/sa01.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions