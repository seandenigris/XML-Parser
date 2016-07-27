tests - exception raising
testnotwfsa172xml
	"Source file: xmltest/not-wf/sa/172.xml"

	(self isSkippableTest: #testnotwfsa172xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa172xml
				documentURI: 'not-wf/sa/172.xml']
		raise: self parserExceptions