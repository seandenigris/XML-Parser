accessing
addAll: anAssociationCollection
	anAssociationCollection do: [:association | self add: association].
	^ anAssociationCollection.