tests - exception raising
testnotwfsa146xml
	"Source file: xmltest/not-wf/sa/146.xml"

	(self isSkippableTest: #testnotwfsa146xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa146xml
				documentURI: 'not-wf/sa/146.xml']
		raise: self parserExceptions