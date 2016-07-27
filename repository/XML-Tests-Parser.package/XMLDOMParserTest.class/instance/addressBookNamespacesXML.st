source
addressBookNamespacesXML
	^ '<addressbook xmlns="defaultNS" xmlns:book="bookNS" xmlns:ps="personNS">',
		(self addressBookXML copyAfter:  $>)