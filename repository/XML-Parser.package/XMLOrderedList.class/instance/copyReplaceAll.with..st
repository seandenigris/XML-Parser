copying
copyReplaceAll: anOldCollection with: aNewCollection
	| copy |

	"workaround so the interal collection is always copied"
	^ self speciesNewWithCollection:
		((copy :=
			collection
				copyReplaceAll: anOldCollection
				with: aNewCollection) == collection
			ifTrue: [collection copy]
			ifFalse: [copy])