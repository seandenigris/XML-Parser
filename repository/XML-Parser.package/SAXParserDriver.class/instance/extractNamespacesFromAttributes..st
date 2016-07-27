private
extractNamespacesFromAttributes: anAttributeDictionary
	| namespaces keysToRemove |

	anAttributeDictionary keysDo: [:name |
		name isXMLNSAttributeName
			ifTrue: [
				"only initialize if needed"
				(namespaces ifNil: [namespaces := OrderedCollection new: 5])
					addLast:
						((name size > 6)
							ifTrue: [name copyFrom: 7 to: name size]
							ifFalse: ['']) -> (anAttributeDictionary at: name).
				(keysToRemove ifNil: [keysToRemove := OrderedCollection new: 5])
					addLast: name]].
	keysToRemove
		ifNotNil: [anAttributeDictionary removeKeys: keysToRemove].

	^ namespaces.