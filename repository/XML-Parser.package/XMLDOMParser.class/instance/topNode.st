private
topNode
	"For performance"
	^ self nodeStack isEmpty
		ifTrue: [nil]
		ifFalse: [nodeStack at: nodeStack size]