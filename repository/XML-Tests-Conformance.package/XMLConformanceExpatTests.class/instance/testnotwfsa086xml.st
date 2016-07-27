tests - exception raising
testnotwfsa086xml
	"Source file: xmltest/not-wf/sa/086.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa086xml
				documentURI: 'not-wf/sa/086.xml']
		raise: self exceptionClass