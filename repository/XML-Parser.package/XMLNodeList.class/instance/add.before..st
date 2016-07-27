adding
add: newNode before: oldNode
	^ self with: [super add: newNode before: oldNode] add: newNode