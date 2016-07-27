tests - exception raising
testnotwfencoding03xml
	"Source file: sun/not-wf/encoding03.xml"

	(self isSkippableTest: #testnotwfencoding03xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfencoding03xml
				documentURI: 'not-wf/encoding03.xml']
		raise: self parserExceptions