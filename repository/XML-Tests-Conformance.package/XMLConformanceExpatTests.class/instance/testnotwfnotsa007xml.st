tests - exception raising
testnotwfnotsa007xml
	"Source file: xmltest/not-wf/not-sa/007.xml"

	(self isSkippableTest: #testnotwfnotsa007xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfnotsa007xml
				documentURI: 'not-wf/not-sa/007.xml']
		raise: self parserExceptions