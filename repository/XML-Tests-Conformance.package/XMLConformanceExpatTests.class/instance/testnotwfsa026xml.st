tests - exception raising
testnotwfsa026xml
	"Source file: xmltest/not-wf/sa/026.xml"

	(self isSkippableTest: #testnotwfsa026xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa026xml
				documentURI: 'not-wf/sa/026.xml']
		raise: self parserExceptions