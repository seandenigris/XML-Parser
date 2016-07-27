tests - exception raising
testnotwfnotsa003xml
	"Source file: xmltest/not-wf/not-sa/003.xml"

	(self isSkippableTest: #testnotwfnotsa003xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfnotsa003xml
				documentURI: 'not-wf/not-sa/003.xml']
		raise: self parserExceptions