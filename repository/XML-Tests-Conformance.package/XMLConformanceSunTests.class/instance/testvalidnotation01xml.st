tests
testvalidnotation01xml
	"Source file: sun/valid/notation01.xml"

	(self isSkippableTest: #testvalidnotation01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidnotation01xml
				documentURI: 'valid/notation01.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions