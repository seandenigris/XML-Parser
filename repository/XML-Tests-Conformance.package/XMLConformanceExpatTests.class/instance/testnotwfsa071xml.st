tests - exception raising
testnotwfsa071xml
	"Source file: xmltest/not-wf/sa/071.xml"

	(self isSkippableTest: #testnotwfsa071xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa071xml
				documentURI: 'not-wf/sa/071.xml']
		raise: self parserExceptions