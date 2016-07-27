private
validatePrefix: aPrefix of: aName
	(self includesPrefix: aPrefix)
		ifFalse: [
			XMLNamespaceException signal:
				('Unmapped prefix "{1}" in {2}' format:
					(Array with: aPrefix with: aName))].