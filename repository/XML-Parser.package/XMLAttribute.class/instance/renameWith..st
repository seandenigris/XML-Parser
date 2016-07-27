private
renameWith: aBlock
	| oldName |

	oldName := self name.
	aBlock value.
	(self name ~= oldName
		and: [self element notNil])
			ifTrue: [
				self element
					renamedAttribute: self
					from: oldName
					to: self name].