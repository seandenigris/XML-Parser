adding
add: newNode afterIndex: oldNode
	^ self with: [super add: newNode afterIndex: oldNode] add: newNode