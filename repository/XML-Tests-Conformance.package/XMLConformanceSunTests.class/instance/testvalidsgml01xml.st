tests
testvalidsgml01xml
	"Source file: sun/valid/sgml01.xml"

	(self isSkippableTest: #testvalidsgml01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsgml01xml
				documentURI: 'valid/sgml01.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions