tests
testvalidpe00xml
	"Source file: sun/valid/pe00.xml"

	(self isSkippableTest: #testvalidpe00xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidpe00xml
				documentURI: 'valid/pe00.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions