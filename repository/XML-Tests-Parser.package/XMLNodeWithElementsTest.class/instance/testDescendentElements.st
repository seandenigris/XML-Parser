tests
testDescendentElements
	| nodeWithElements descendentElements |

	nodeWithElements := self newNodeWithElements.
	descendentElements := nodeWithElements descendentElements.
	self assert:
		(descendentElements collect: [:each | each name]) asArray =
			#('zero' 'one' 'two' 'three' 'four' 'prefix:four' 'prefix:five' 'four').
	self
		assertList: descendentElements first descendentElements selects: (descendentElements copyFrom: 2 to: 8);
		assertList: descendentElements second descendentElements selects: (descendentElements copyFrom: 3 to: 3);
		assertList: descendentElements third descendentElements selects: descendentElements copyEmpty;
		assertList: descendentElements fourth descendentElements selects: (descendentElements copyFrom: 5 to: 5);
		assertList: descendentElements fifth descendentElements selects: descendentElements copyEmpty;
		assertList: descendentElements sixth descendentElements selects: (descendentElements copyFrom: 7 to: 7);
		assertList: descendentElements seventh descendentElements selects: descendentElements copyEmpty;
		assertList: descendentElements eighth descendentElements selects: descendentElements copyEmpty.