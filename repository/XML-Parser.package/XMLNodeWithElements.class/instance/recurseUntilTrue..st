searching
recurseUntilTrue: aBlock
	"Descend down the tree visiting each element with aBlock until one such evaluation
	of aBlock with an element is true, then return that element. Otherwise, return nil."

	| result |

	self elementsDo: [:each | (result := each recurseUntilTrue: aBlock) ifNotNil: [^ result]].
	^ nil.