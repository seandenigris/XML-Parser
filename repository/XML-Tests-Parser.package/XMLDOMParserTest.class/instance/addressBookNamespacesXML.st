source
addressBookNamespacesXML
	^ '<root xmlns="defaultNS" xmlns:ps="personNS">',
		self addressBookXML,
		'</root>'