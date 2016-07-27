tests
testvalidext02xml
	"Source file: sun/valid/ext02.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidext02xml
				documentURI: 'valid/ext02.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions