tests - exception raising
testnotwfcond01xml
	"Source file: sun/not-wf/cond01.xml"

	(self isSkippableTest: #testnotwfcond01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfcond01xml
				documentURI: 'not-wf/cond01.xml']
		raise: self parserExceptions