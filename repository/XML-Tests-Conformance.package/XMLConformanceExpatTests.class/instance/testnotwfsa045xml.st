tests - exception raising
testnotwfsa045xml
	"Source file: xmltest/not-wf/sa/045.xml"

	(self isSkippableTest: #testnotwfsa045xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa045xml
				documentURI: 'not-wf/sa/045.xml']
		raise: self parserExceptions