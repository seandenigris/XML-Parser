private
validatePrefix: aPrefix of: aMarkupEntityType named: aName
	(aPrefix isEmptyOrNil or: [aPrefix = 'xml'])
		ifTrue: [^ self].

	aPrefix = 'xmlns'
		ifTrue: [
			XMLNamespaceException signal:
				('Cannot use reserved "xmlns" prefix for {1} {2}' format:
					(Array with: aMarkupEntityType with: aName))].

	(self includesPrefix: aPrefix)
		ifFalse: [
			XMLNamespaceException signal:
				('Unmapped prefix "{1}" in {2} {3}' format:
					(Array with: aPrefix with: aMarkupEntityType with: aName))].