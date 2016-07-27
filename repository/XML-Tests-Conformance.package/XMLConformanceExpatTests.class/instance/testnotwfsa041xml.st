tests - exception raising
testnotwfsa041xml
	"Source file: xmltest/not-wf/sa/041.xml"

	(self isSkippableTest: #testnotwfsa041xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa041xml
				documentURI: 'not-wf/sa/041.xml']
		raise: self parserExceptions