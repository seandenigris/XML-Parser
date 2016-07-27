tests - exception raising
testnotwfsa167xml
	"Source file: xmltest/not-wf/sa/167.xml"

	(self isSkippableTest: #testnotwfsa167xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa167xml
				documentURI: 'not-wf/sa/167.xml']
		raise: self parserExceptions