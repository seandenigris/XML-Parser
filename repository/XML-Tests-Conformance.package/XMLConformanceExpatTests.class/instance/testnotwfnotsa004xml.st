tests - exception raising
testnotwfnotsa004xml
	"Source file: xmltest/not-wf/not-sa/004.xml"

	(self isSkippableTest: #testnotwfnotsa004xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfnotsa004xml
				documentURI: 'not-wf/not-sa/004.xml']
		raise: self parserExceptions