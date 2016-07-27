tests - exception raising
testnotwfsa135xml
	"Source file: xmltest/not-wf/sa/135.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa135xml
				documentURI: 'not-wf/sa/135.xml']
		raise: self exceptionClass