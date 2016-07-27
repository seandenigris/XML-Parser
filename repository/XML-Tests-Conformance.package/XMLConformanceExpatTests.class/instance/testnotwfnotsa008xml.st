tests - exception raising
testnotwfnotsa008xml
	"Source file: xmltest/not-wf/not-sa/008.xml"

	(self isSkippableTest: #testnotwfnotsa008xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfnotsa008xml
				documentURI: 'not-wf/not-sa/008.xml']
		raise: self parserExceptions