tests - exception raising
testnotwfsa024xml
	"Source file: xmltest/not-wf/sa/024.xml"

	(self isSkippableTest: #testnotwfsa024xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa024xml
				documentURI: 'not-wf/sa/024.xml']
		raise: self parserExceptions