tests - exception raising
testnotwfdtd04xml
	"Source file: sun/not-wf/dtd04.xml"

	(self isSkippableTest: #testnotwfdtd04xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfdtd04xml
				documentURI: 'not-wf/dtd04.xml']
		raise: self parserExceptions