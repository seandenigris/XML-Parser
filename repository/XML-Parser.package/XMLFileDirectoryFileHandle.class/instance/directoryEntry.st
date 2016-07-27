private
directoryEntry
	^ directoryEntry
		ifNil: [directoryEntry := (Smalltalk at: #FileDirectory) directoryEntryFor: path]