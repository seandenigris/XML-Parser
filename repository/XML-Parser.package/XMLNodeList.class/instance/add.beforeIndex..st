adding
add: newNode beforeIndex: oldNode
	^ self with: [super add: newNode beforeIndex: oldNode] add: newNode