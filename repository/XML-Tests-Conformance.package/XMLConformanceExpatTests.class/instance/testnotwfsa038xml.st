tests - exception raising
testnotwfsa038xml
	"Source file: xmltest/not-wf/sa/038.xml"

	(self isSkippableTest: #testnotwfsa038xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa038xml
				documentURI: 'not-wf/sa/038.xml']
		raise: self parserExceptions