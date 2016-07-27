source
addressBookNamespacedXML
	^ addressBookNamespacedXML
		ifNil: [addressBookNamespacedXML := self class addressBookNamespacedXML]