tests - exception raising
testnotwfsa165xml
	"Source file: xmltest/not-wf/sa/165.xml"

	(self isSkippableTest: #testnotwfsa165xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa165xml
				documentURI: 'not-wf/sa/165.xml']
		raise: self parserExceptions