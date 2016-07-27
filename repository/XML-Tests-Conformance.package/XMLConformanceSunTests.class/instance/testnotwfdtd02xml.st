tests - exception raising
testnotwfdtd02xml
	"Source file: sun/not-wf/dtd02.xml"

	(self isSkippableTest: #testnotwfdtd02xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfdtd02xml
				documentURI: 'not-wf/dtd02.xml']
		raise: self parserExceptions