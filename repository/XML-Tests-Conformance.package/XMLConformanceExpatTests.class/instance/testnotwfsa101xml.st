tests - exception raising
testnotwfsa101xml
	"Source file: xmltest/not-wf/sa/101.xml"

	(self isSkippableTest: #testnotwfsa101xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa101xml
				documentURI: 'not-wf/sa/101.xml']
		raise: self parserExceptions