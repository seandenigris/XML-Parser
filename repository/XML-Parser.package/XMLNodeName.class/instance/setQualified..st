private
setQualified: aQualifiedName
	(qualified := aQualifiedName)
		splitQualifiedNameInto: [:aPrefix :aLocalPart |
			prefix := aPrefix.
			localPart := aLocalPart].