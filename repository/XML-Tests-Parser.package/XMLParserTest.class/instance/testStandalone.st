tests
testStandalone
	| dtdXML standaloneDeclXML |

	dtdXML := self addressBookXMLWithDTD.
	self
		shouldnt: [
			SAXHandler
				parse: dtdXML
				usingNamespaces: true
				validation: true
				externalEntities: false]
		raise: XMLFileException.

	standaloneDeclXML :=
		(dtdXML copyUpTo: $>) allButLast, ' standalone="yes" ?>', (dtdXML copyAfter: $>).
	self
		shouldnt: [
			SAXHandler
				parse: standaloneDeclXML
				usingNamespaces: true
				validation: false
				externalEntities: true]
		raise: XMLFileException.
	self
		shouldnt: [
			SAXHandler
				parse: standaloneDeclXML
				usingNamespaces: true
				validation: true
				externalEntities: false]
		raise: XMLFileException.