entities
entity: aReference put: aValue
	"Only the first declaration of an entity is valid so if there is already
	one don't register the new value."
	self entities at: aReference ifAbsentPut: [aValue]