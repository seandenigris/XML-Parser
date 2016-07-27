tests - exception raising
testnotwfdtd05xml
	"Source file: sun/not-wf/dtd05.xml"

	(self isSkippableTest: #testnotwfdtd05xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfdtd05xml
				documentURI: 'not-wf/dtd05.xml']
		raise: self parserExceptions