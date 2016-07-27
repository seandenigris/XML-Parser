tests - exception raising
testnotwfsa119xml
	"Source file: xmltest/not-wf/sa/119.xml"

	(self isSkippableTest: #testnotwfsa119xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa119xml
				documentURI: 'not-wf/sa/119.xml']
		raise: self parserExceptions