tests - exception raising
testnotwfsa098xml
	"Source file: xmltest/not-wf/sa/098.xml"

	(self isSkippableTest: #testnotwfsa098xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa098xml
				documentURI: 'not-wf/sa/098.xml']
		raise: self parserExceptions