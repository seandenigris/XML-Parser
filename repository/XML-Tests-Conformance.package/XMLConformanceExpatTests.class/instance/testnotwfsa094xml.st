tests - exception raising
testnotwfsa094xml
	"Source file: xmltest/not-wf/sa/094.xml"

	(self isSkippableTest: #testnotwfsa094xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa094xml
				documentURI: 'not-wf/sa/094.xml']
		raise: self parserExceptions