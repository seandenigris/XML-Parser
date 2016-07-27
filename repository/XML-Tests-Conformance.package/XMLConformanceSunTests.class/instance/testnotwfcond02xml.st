tests - exception raising
testnotwfcond02xml
	"Source file: sun/not-wf/cond02.xml"

	self
		should: [
			self
				parse: self class sourcenotwfcond02xml
				documentURI: 'not-wf/cond02.xml']
		raise: self exceptionClass