instance creation
on: aStringOrStream withRootNode: aRootNode
	| parser |

	(parser := self on: aStringOrStream)
		pushNode: aRootNode.
	aRootNode isElement
		ifTrue: [parser elementNester rootElement: aRootNode name].
	^ parser.