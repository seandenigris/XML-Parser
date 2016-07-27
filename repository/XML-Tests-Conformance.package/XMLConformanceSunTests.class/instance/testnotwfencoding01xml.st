tests - exception raising
testnotwfencoding01xml
	"Source file: sun/not-wf/encoding01.xml"

	(self isSkippableTest: #testnotwfencoding01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfencoding01xml
				documentURI: 'not-wf/encoding01.xml']
		raise: self parserExceptions