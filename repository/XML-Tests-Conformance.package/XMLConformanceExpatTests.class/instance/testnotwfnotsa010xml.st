tests - exception raising
testnotwfnotsa010xml
	"Source file: xmltest/not-wf/not-sa/010.xml"

	self
		should: [
			self
				parse: self class sourcenotwfnotsa010xml
				documentURI: 'not-wf/not-sa/010.xml']
		raise: self exceptionClass