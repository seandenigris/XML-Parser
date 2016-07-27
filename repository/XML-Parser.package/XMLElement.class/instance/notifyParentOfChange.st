private
notifyParentOfChange
	self hasParent ifTrue: [self parent changedChildElement: self]