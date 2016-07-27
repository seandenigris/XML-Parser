source
addressBookNamespacesXMLWithPrefixes
	| xmlWithPrefixes |

	xmlWithPrefixes :=
		'<book:',
		((self addressBookNamespacesXML copyAfter: $<) copyUpToLast: $<),
		'</book:addressbook>'.
	^ ((xmlWithPrefixes
		copyReplaceAll: '<person' with: '<ps:person')
			copyReplaceAll: '</person' with: '</ps:person')
				copyReplaceAll: 'family-name=' with: 'ps:family-name='.