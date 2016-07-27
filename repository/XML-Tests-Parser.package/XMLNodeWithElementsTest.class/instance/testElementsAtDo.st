tests
testElementsAtDo
	| root namedElements |

	root := self newNodeWithElements firstElement.
	self
		should: [:block | root elementsAt: 'absent' do: block]
		enumerate: #().
	namedElements := root elementsAt: 'four'.
	self
		should: [:block | root elementsAt: 'four' do: block]
		enumerate: namedElements.

	(namedElements := namedElements copy) do: [:each |
		root removeNode: each.
		self
			should: [:block | root elementsAt: 'four' do: block]
			enumerate: (namedElements copyAfter: each)].