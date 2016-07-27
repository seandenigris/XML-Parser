tests - exception raising
testnotwfsa032xml
	"Source file: xmltest/not-wf/sa/032.xml"

	(self isSkippableTest: #testnotwfsa032xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa032xml
				documentURI: 'not-wf/sa/032.xml']
		raise: self parserExceptions