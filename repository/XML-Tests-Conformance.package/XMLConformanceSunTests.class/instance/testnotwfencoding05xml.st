tests - exception raising
testnotwfencoding05xml
	"Source file: sun/not-wf/encoding05.xml"

	(self isSkippableTest: #testnotwfencoding05xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfencoding05xml
				documentURI: 'not-wf/encoding05.xml']
		raise: self parserExceptions