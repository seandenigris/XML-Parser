tests
testDeclaringXMLNamespace
	| xmlNamespace |

	xmlNamespace :=XMLNamespaceScope xmlNamespaceURI.
	self deny:
		((XMLDOMParser parse: self addressBookNamespacedXML) root
			declaresPrefix: 'xml'
			uri: xmlNamespace).

	self assert:
		((XMLDOMParser parse: '<test xmlns:xml="', xmlNamespace, '"/>') root
			declaresPrefix: 'xml'
			uri: xmlNamespace).