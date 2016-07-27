tests - exception raising
testnotwfsa117xml
	"Source file: xmltest/not-wf/sa/117.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa117xml
				documentURI: 'not-wf/sa/117.xml']
		raise: self exceptionClass