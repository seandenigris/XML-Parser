tests - exception raising
testnotwfnotsa011xml
	"Source file: xmltest/not-wf/not-sa/011.xml"

	(self isSkippableTest: #testnotwfnotsa011xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfnotsa011xml
				documentURI: 'not-wf/not-sa/011.xml']
		raise: self parserExceptions