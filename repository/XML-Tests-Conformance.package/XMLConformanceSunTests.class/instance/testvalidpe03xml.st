tests
testvalidpe03xml
	"Source file: sun/valid/pe03.xml"

	(self isSkippableTest: #testvalidpe03xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidpe03xml
				documentURI: 'valid/pe03.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions