private
notifyParentOfRenaming
	self hasParent ifTrue: [self parent renamedChildNode: self]