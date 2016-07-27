tests - exception raising
testnotwfpixml
	"Source file: sun/not-wf/pi.xml"

	(self isSkippableTest: #testnotwfpixml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcenotwfpixml
				documentURI: 'not-wf/pi.xml']
		raise: self parserExceptions