tests - exception raising
testnotwfsa053xml
	"Source file: xmltest/not-wf/sa/053.xml"

	(self isSkippableTest: #testnotwfsa053xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa053xml
				documentURI: 'not-wf/sa/053.xml']
		raise: self parserExceptions