searching
recurse: aBlock
	"Descend down the tree visiting each element with aBlock."

	self elementsDo: [:each | each recurse: aBlock]