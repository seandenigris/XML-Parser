source
addressBookNamespacePrefixedXML
	| xmlWithPrefixes |

	xmlWithPrefixes := self addressBookNamespacedXML.
	#('<addressbook' '</addressbook' '<person' '</person' 'family-name=')
		with: #('<book:addressbook' '</book:addressbook' '<ps:person' '</ps:person' 'ps:family-name=')
		do: [:source :replacement |
			xmlWithPrefixes := xmlWithPrefixes copyReplaceAll: source with: replacement].
	^ xmlWithPrefixes.