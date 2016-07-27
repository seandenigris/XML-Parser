tests - exception raising
testnotwfnotsa03xml
	"Source file: sun/not-wf/not-sa03.xml"

	(self isSkippableTest: #testnotwfnotsa03xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfnotsa03xml
				documentURI: 'not-wf/not-sa03.xml']
		raise: self parserExceptions