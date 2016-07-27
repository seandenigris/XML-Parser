tests
testvalidext02xml
	"Source file: sun/valid/ext02.xml"

	(self isSkippableTest: #testvalidext02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidext02xml
				documentURI: 'valid/ext02.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions