tests - exception raising
testnotwfdtd01xml
	"Source file: sun/not-wf/dtd01.xml"

	(self isSkippableTest: #testnotwfdtd01xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfdtd01xml
				documentURI: 'not-wf/dtd01.xml']
		raise: self parserExceptions