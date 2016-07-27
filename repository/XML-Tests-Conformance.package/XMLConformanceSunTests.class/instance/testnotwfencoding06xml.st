tests - exception raising
testnotwfencoding06xml
	"Source file: sun/not-wf/encoding06.xml"

	(self isSkippableTest: #testnotwfencoding06xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfencoding06xml
				documentURI: 'not-wf/encoding06.xml']
		raise: self parserExceptions