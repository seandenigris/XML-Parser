private
renameWith: aBlock
	| oldName newName |

	oldName := self name.
	aBlock value.
	(newName := self name) = oldName
		ifFalse: [
			self validateName.
			self
				notifyOf: #renamedElement:from:to:
				with: oldName
				with: newName].