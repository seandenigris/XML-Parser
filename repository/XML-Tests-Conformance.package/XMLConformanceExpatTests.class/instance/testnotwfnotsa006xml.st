tests - exception raising
testnotwfnotsa006xml
	"Source file: xmltest/not-wf/not-sa/006.xml"

	(self isSkippableTest: #testnotwfnotsa006xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfnotsa006xml
				documentURI: 'not-wf/not-sa/006.xml']
		raise: self parserExceptions