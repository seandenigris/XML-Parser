tests
testUndeclaringAttributePrefixes
	| document person |

	document := XMLDOMParser parse: self addressBookNamespacePrefixedXML.
	document root attributeAt: 'ps:name' put: 'value'.
	self
		should: [document root undeclarePrefix: 'ps']
		raise: XMLNamespaceException.

	person := document findElementNamed: 'person'.
	self
		shouldnt: [
			person prefix: ''.
			person attributeNodes do: [:each | each prefix: ''].
			person undeclarePrefix: 'ps']
		raise: XMLNamespaceException.