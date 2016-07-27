tests
testElementWellFormedness
	| error |

	error := XMLWellFormednessException.
	self
		should: [SAXHandler parse: '<root1>'] raise: error;
		should: [SAXHandler parse: '</root1>'] raise: error;
		should: [SAXHandler parse: '<root1/><root2/>'] raise: error;
		should: [SAXHandler parse: '<root></unopened></root>'] raise: error;
		should: [SAXHandler parse: '<root><unclosed></root>'] raise: error;
		should: [SAXHandler parse: '<root><first><second></first></second></root>'] raise: error.