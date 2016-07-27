tests - exception raising
testnotwfsa005xml
	"Source file: xmltest/not-wf/sa/005.xml"

	(self isSkippableTest: #testnotwfsa005xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa005xml
				documentURI: 'not-wf/sa/005.xml']
		raise: self parserExceptions