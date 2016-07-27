tests
testvalidrequired00xml
	"Source file: sun/valid/required00.xml"

	(self isSkippableTest: #testvalidrequired00xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidrequired00xml
				documentURI: 'valid/required00.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions