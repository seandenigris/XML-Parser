adding
add: newNode after: oldNode
	^ self with: [super add: newNode after: oldNode] add: newNode