tests - exception raising
testnotwfsa017xml
	"Source file: xmltest/not-wf/sa/017.xml"

	(self isSkippableTest: #testnotwfsa017xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa017xml
				documentURI: 'not-wf/sa/017.xml']
		raise: self parserExceptions