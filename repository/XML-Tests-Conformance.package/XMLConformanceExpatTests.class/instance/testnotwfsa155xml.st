tests - exception raising
testnotwfsa155xml
	"Source file: xmltest/not-wf/sa/155.xml"

	(self isSkippableTest: #testnotwfsa155xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa155xml
				documentURI: 'not-wf/sa/155.xml']
		raise: self parserExceptions