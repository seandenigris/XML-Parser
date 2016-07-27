private
changeWith: aBlock
	| oldName newName |

	oldName := self qualified.
	aBlock value.
	newName := self qualified.
	self notifyOf: #nodeNameChangedFrom:to: with: oldName with: newName.