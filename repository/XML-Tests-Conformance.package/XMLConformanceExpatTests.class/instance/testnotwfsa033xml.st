tests - exception raising
testnotwfsa033xml
	"Source file: xmltest/not-wf/sa/033.xml"

	(self isSkippableTest: #testnotwfsa033xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa033xml
				documentURI: 'not-wf/sa/033.xml']
		raise: self parserExceptions