tests - exception raising
testnotwfcond02xml
	"Source file: sun/not-wf/cond02.xml"

	(self isSkippableTest: #testnotwfcond02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfcond02xml
				documentURI: 'not-wf/cond02.xml']
		raise: self parserExceptions