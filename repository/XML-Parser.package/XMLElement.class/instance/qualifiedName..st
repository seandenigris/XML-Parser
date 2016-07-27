accessing
qualifiedName: aQualifiedName
	self namespacedName qualifiedName: aQualifiedName.
	self notifyParentOfRenaming.