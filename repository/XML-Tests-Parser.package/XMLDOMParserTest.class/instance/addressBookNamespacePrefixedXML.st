source
addressBookNamespacePrefixedXML
	^ addressBookNamespacePrefixedXML
		ifNil: [addressBookNamespacePrefixedXML := self class addressBookNamespacePrefixedXML]