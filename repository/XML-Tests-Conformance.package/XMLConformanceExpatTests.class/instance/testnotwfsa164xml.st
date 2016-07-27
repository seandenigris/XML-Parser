tests - exception raising
testnotwfsa164xml
	"Source file: xmltest/not-wf/sa/164.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa164xml
				documentURI: 'not-wf/sa/164.xml']
		raise: self exceptionClass