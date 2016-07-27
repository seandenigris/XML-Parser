private
setWithOrderPreservingDictionary: anOrderPreservingDictionary
	"hack to reuse a dictionary for speed"
	attributeNodesByName := anOrderPreservingDictionary dictionary.

	"add the XMLAttributes in order directly to the collection
	to avoid sending notifications and also replace the value in
	the attributesByName association with the XMLAttribute"
	anOrderPreservingDictionary keysDo: [:each | | association |
		(association := attributeNodesByName associationAt: each ifAbsent: nil)
			value:
				(collection addLast: 
					(self attributeClass new
						setName: each
						value: association value
						element: observer))].