tests - exception raising
testnotwfsa031xml
	"Source file: xmltest/not-wf/sa/031.xml"

	(self isSkippableTest: #testnotwfsa031xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa031xml
				documentURI: 'not-wf/sa/031.xml']
		raise: self parserExceptions