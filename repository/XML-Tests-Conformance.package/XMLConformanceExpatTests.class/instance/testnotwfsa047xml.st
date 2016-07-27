tests - exception raising
testnotwfsa047xml
	"Source file: xmltest/not-wf/sa/047.xml"

	(self isSkippableTest: #testnotwfsa047xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa047xml
				documentURI: 'not-wf/sa/047.xml']
		raise: self parserExceptions