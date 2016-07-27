as yet unclassified
generateTests
	"XMLParserTests generateTests"

	self
		removeTests: 'test_*';
		generateTestsFrom: 'xmltest/xmltest.xml' category:  'clark';
		generateTestsFrom: 'oasis/oasis.xml' category:  'oasis'.

	#('sun/valid/sun-valid.xml' 'sun/invalid/sun-invalid.xml' 'sun/not-wf/sun-not-wf.xml' 'sun/error/sun-error.xml') do: 
			[:each |  self generateTestsFrom: each category: 'sun']