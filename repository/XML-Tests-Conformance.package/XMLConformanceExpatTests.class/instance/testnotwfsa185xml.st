tests - exception raising
testnotwfsa185xml
	"Source file: xmltest/not-wf/sa/185.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa185xml
				documentURI: 'not-wf/sa/185.xml']
		raise: self exceptionClass