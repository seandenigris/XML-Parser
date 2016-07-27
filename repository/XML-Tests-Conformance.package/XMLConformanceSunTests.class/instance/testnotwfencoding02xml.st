tests - exception raising
testnotwfencoding02xml
	"Source file: sun/not-wf/encoding02.xml"

	(self isSkippableTest: #testnotwfencoding02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfencoding02xml
				documentURI: 'not-wf/encoding02.xml']
		raise: self parserExceptions