tests - exception raising
testnotwfsa166xml
	"Source file: xmltest/not-wf/sa/166.xml"

	(self isSkippableTest: #testnotwfsa166xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa166xml
				documentURI: 'not-wf/sa/166.xml']
		raise: self parserExceptions