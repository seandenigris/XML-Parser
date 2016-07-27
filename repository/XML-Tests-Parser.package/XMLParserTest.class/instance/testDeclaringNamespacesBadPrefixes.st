tests
testDeclaringNamespacesBadPrefixes
	self
		should: [SAXHandler parse: '<root xmlns:colon:prefix="colonNS"/>']
		raise: XMLNamespaceException.
	self
		should: [SAXHandler parse: '<root xmlns::colonprefix="colonNS"/>']
		raise: XMLNamespaceException.
	self
		should: [SAXHandler parse: '<root xmlns:colonprefix:="colonNS"/>']
		raise: XMLNamespaceException.
	self
		should: [SAXHandler parse: '<colonprefix: />']
		raise: XMLNamespaceException.
	self
		should: [SAXHandler parse: '<root colonprefix:="test" />']
		raise: XMLNamespaceException.