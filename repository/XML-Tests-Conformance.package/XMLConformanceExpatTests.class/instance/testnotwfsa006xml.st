tests - exception raising
testnotwfsa006xml
	"Source file: xmltest/not-wf/sa/006.xml"

	(self isSkippableTest: #testnotwfsa006xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa006xml
				documentURI: 'not-wf/sa/006.xml']
		raise: self parserExceptions