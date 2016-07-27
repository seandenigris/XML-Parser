tests - exception raising
testnotwfsa121xml
	"Source file: xmltest/not-wf/sa/121.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa121xml
				documentURI: 'not-wf/sa/121.xml']
		raise: self exceptionClass