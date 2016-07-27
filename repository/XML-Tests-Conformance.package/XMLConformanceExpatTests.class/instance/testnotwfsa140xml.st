tests - exception raising
testnotwfsa140xml
	"Source file: xmltest/not-wf/sa/140.xml"

	(self isSkippableTest: #testnotwfsa140xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfsa140xml
				documentURI: 'not-wf/sa/140.xml']
		raise: self parserExceptions