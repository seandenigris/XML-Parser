tests - exception raising
testnotwfsa084xml
	"Source file: xmltest/not-wf/sa/084.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa084xml
				documentURI: 'not-wf/sa/084.xml']
		raise: self exceptionClass