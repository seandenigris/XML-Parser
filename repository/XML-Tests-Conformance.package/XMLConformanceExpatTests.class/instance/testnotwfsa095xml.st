tests - exception raising
testnotwfsa095xml
	"Source file: xmltest/not-wf/sa/095.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa095xml
				documentURI: 'not-wf/sa/095.xml']
		raise: self exceptionClass