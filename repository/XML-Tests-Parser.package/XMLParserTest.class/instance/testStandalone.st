tests
testStandalone
	| dtdXml standaloneDeclXml |

	dtdXml := self addressBookXMLWithDTD.
	self
		shouldnt: [
			SAXHandler
				parse: dtdXml
				usingNamespaces: true
				validation: true
				externalEntities: false]
		raise: XMLFileException.

	standaloneDeclXml :=
		(dtdXml copyUpTo: $>) allButLast, ' standalone="yes" ?>', (dtdXml copyAfter: $>).
	self
		shouldnt: [
			SAXHandler
				parse: standaloneDeclXml
				usingNamespaces: true
				validation: false
				externalEntities: true]
		raise: XMLFileException.
	self
		shouldnt: [
			SAXHandler
				parse: standaloneDeclXml
				usingNamespaces: true
				validation: true
				externalEntities: false]
		raise: XMLFileException.