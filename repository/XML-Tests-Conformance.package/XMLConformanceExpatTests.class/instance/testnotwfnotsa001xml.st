tests - exception raising
testnotwfnotsa001xml
	"Source file: xmltest/not-wf/not-sa/001.xml"

	self
		should: [
			self
				parse: self class sourcenotwfnotsa001xml
				documentURI: 'not-wf/not-sa/001.xml']
		raise: self exceptionClass