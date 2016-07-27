tests
testElementsDetectIfNone
	| root element |

	root := self newNodeWithElements firstElement.
	element :=
		root
			elementsDetect: [:each |
				(each isNamed: 'four') and: [each namespaceURI = 'testNS']]
			ifNone: [#absent].
	self deny: element = #absent.
	self assert:
		element == 
			(root elements
				detect: [:each |
					(each isNamed: 'four') and: [each namespaceURI = 'testNS']]
				ifNone: [#absent]).
	self assert:
		(root
			elementsDetect: [:each |
				(each isNamed: 'four') and: [each namespaceURI = 'absentNS']]
			ifNone: [#absent]) = #absent.