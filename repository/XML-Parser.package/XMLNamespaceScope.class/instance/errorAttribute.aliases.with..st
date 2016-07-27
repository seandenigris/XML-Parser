private
errorAttribute: anAttribute aliases: anAliasedAttribute with: aUri
	XMLNamespaceException signal:
		('Attribute "{1}" aliases attribute "{2}"; both prefixes map to {3}'
			format: (Array with: anAttribute with: anAliasedAttribute with: aUri))