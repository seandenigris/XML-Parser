private
notifyParentOfChange
	self hasParent ifTrue: [self parent changedChildNode: self]