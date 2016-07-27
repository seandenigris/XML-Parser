tests - exception raising
testnotwfsa111xml
	"Source file: xmltest/not-wf/sa/111.xml"

	(self isSkippableTest: #testnotwfsa111xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa111xml
				documentURI: 'not-wf/sa/111.xml']
		raise: self parserExceptions