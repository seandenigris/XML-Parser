tests
testElementAtNamespaceURIIfAbsent
	| root element |

	root := self newNodeWithElements firstElement.
	self assert:
		(root
			elementAt: 'four'
			namespaceURI: 'absent'
			ifAbsent: [#absent]) = #absent.

	element := root elementAt: 'four' namespaceURI: 'testNS' ifAbsent: [#absent].
	self deny: element = #absent.
	self assert:
		element ==
			(root elements
				detect: [:each |
					(each isNamed: 'four')
						and: [each namespaceURI = 'testNS']]
				ifNone: [#absent]).

	root removeNode: element.
	self assert:
		(root
			elementAt: 'four'
			namespaceURI: 'testNS'
			ifAbsent: [#absent]) = #absent.