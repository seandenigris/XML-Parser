tests - exception raising
testnotwfsa138xml
	"Source file: xmltest/not-wf/sa/138.xml"

	(self isSkippableTest: #testnotwfsa138xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa138xml
				documentURI: 'not-wf/sa/138.xml']
		raise: self parserExceptions