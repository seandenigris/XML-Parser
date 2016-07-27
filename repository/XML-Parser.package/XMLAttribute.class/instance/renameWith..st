private
renameWith: aBlock
	| oldName newName |

	oldName := self name.
	aBlock value.
	(newName := self name) = oldName
		ifFalse: [
			self
				notifyOf: #renamedAttribute:from:to:
				with: self
				with: oldName
				with: newName].