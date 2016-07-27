tests - exception raising
testnotwfencoding07xml
	"Source file: sun/not-wf/encoding07.xml"

	(self isSkippableTest: #testnotwfencoding07xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfencoding07xml
				documentURI: 'not-wf/encoding07.xml']
		raise: self parserExceptions