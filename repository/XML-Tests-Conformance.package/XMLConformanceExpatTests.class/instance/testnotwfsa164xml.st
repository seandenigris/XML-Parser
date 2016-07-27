tests - exception raising
testnotwfsa164xml
	"Source file: xmltest/not-wf/sa/164.xml"

	(self isSkippableTest: #testnotwfsa164xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa164xml
				documentURI: 'not-wf/sa/164.xml']
		raise: self parserExceptions