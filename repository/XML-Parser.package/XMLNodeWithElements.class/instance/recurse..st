searching
recurse: aBlock
	"Descend depth-first visiting each element with aBlock."

	self elementsDo: [:each | each recurse: aBlock]