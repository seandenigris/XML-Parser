tests - exception raising
testnotwfsa078xml
	"Source file: xmltest/not-wf/sa/078.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa078xml
				documentURI: 'not-wf/sa/078.xml']
		raise: self exceptionClass