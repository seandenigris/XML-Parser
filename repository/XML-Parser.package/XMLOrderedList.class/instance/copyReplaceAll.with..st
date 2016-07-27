copying
copyReplaceAll: anOldCollection with: aNewCollection
	| copy |

	"workaround so the interal collection is always copied"
	^ self newWithCollection:
		((copy :=
			collection
				copyReplaceAll: anOldCollection
				with: aNewCollection) == collection
			ifTrue: [collection copy]
			ifFalse: [copy])