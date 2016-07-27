tests - exception raising
testnotwfsa081xml
	"Source file: xmltest/not-wf/sa/081.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa081xml
				documentURI: 'not-wf/sa/081.xml']
		raise: self exceptionClass