tests - exception raising
testnotwfsa063xml
	"Source file: xmltest/not-wf/sa/063.xml"

	(self isSkippableTest: #testnotwfsa063xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa063xml
				documentURI: 'not-wf/sa/063.xml']
		raise: self parserExceptions