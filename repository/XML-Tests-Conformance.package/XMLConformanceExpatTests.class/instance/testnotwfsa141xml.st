tests - exception raising
testnotwfsa141xml
	"Source file: xmltest/not-wf/sa/141.xml"

	(self isSkippableTest: #testnotwfsa141xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa141xml
				documentURI: 'not-wf/sa/141.xml']
		raise: self parserExceptions