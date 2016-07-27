private
topNode
	"for speed"
	^ self nodeStack size > 0
		ifTrue: [nodeStack at: nodeStack size]
		ifFalse: [nil]