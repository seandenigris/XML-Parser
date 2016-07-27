tests - exception raising
testnotwfsa123xml
	"Source file: xmltest/not-wf/sa/123.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa123xml
				documentURI: 'not-wf/sa/123.xml']
		raise: self exceptionClass