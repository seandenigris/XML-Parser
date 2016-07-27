tests
testNamespacePrefixAliasing
	| declarations |

	declarations := '<test xmlns:alias1="ns" xmlns:alias2="ns" '.
	self
		shouldnt: [
			SAXHandler
				parse: declarations, ' alias1:name="value" />'
				usingNamespaces: true]
		raise: XMLNamespaceException.
	self
		should: [
			SAXHandler
				parse: declarations, ' alias1:name="value" alias2:name="value"/>'
				usingNamespaces: true]
		raise: XMLNamespaceException.
	self
		shouldnt: [
			SAXHandler
				parse: declarations, ' alias1:name="value" alias2:name2="value"/>'
				usingNamespaces: true]
		raise: XMLNamespaceException.