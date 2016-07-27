tests - exception raising
testnotwfsa124xml
	"Source file: xmltest/not-wf/sa/124.xml"

	(self isSkippableTest: #testnotwfsa124xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa124xml
				documentURI: 'not-wf/sa/124.xml']
		raise: self parserExceptions