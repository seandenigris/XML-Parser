accessing
firstElementNamed: aName
	^ (self elementsByName at: aName ifAbsent: [^ nil]) first