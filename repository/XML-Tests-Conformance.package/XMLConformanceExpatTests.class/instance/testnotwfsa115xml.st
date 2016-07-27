tests - exception raising
testnotwfsa115xml
	"Source file: xmltest/not-wf/sa/115.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa115xml
				documentURI: 'not-wf/sa/115.xml']
		raise: self exceptionClass