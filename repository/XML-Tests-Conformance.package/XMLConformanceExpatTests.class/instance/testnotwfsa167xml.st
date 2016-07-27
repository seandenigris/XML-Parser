tests - exception raising
testnotwfsa167xml
	"Source file: xmltest/not-wf/sa/167.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa167xml
				documentURI: 'not-wf/sa/167.xml']
		raise: self exceptionClass