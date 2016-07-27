private
notifyParentOfChange
	self hasParent ifFalse: [^ self].

	self parent changedChildElement: self.