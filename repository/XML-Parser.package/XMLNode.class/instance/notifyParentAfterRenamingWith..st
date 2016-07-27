private
notifyParentAfterRenamingWith: aBlock
	| oldName newName |

	oldName := self name.
	aBlock value.
	newName := self name.
	self hasParent
		ifTrue: [self parent nodeRenamed: self from: oldName to: newName]