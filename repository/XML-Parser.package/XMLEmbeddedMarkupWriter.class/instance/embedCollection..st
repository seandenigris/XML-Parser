private
embedCollection: aCollection
	aCollection do: [:each | self embedValue: each]