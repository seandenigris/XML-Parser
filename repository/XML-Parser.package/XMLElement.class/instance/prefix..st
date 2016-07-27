namespaces
prefix: aPrefix
	self notifyParentAfterRenamingWith: [self nodeName prefix: aPrefix].
	self validateName.