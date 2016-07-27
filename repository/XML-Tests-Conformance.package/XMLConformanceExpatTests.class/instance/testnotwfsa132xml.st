tests - exception raising
testnotwfsa132xml
	"Source file: xmltest/not-wf/sa/132.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa132xml
				documentURI: 'not-wf/sa/132.xml']
		raise: self exceptionClass