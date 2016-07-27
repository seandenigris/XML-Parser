tests - exception raising
testnotwfsa117xml
	"Source file: xmltest/not-wf/sa/117.xml"

	(self isSkippableTest: #testnotwfsa117xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa117xml
				documentURI: 'not-wf/sa/117.xml']
		raise: self parserExceptions