accessing
interspersedWithNodes: anElementCollection
	| mixedNodes |

	mixedNodes := OrderedCollection new.
	anElementCollection
		do: [:each | mixedNodes add: each]
		separatedBy: [mixedNodes add: XMLNode new].
	^ mixedNodes.