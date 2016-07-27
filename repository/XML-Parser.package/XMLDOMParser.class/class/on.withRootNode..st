instance creation
on: aStringOrStream withRootNode: aRootNode
	^ (self on: aStringOrStream)
		pushNode: aRootNode;
		yourself