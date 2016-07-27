tests - exception raising
testnotwfextsa001xml
	"Source file: xmltest/not-wf/ext-sa/001.xml"

	(self isSkippableTest: #testnotwfextsa001xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfextsa001xml
				documentURI: 'not-wf/ext-sa/001.xml']
		raise: self parserExceptions