tests
testvalidpe02xml
	"Source file: sun/valid/pe02.xml"

	(self isSkippableTest: #testvalidpe02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidpe02xml
				documentURI: 'valid/pe02.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions