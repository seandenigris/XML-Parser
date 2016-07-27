tests - exception raising
testnotwfsa015xml
	"Source file: xmltest/not-wf/sa/015.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa015xml
				documentURI: 'not-wf/sa/015.xml']
		raise: self exceptionClass