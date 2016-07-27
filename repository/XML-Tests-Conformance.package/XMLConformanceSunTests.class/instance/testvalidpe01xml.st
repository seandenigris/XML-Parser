tests
testvalidpe01xml
	"Source file: sun/valid/pe01.xml"

	(self isSkippableTest: #testvalidpe01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidpe01xml
				documentURI: 'valid/pe01.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions