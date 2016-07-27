private
remove: anObject exceptAt: anIndex
	"used by subclasse to remove duplicates"
	1 to: anIndex - 1 do: [:i |
		(collection at: i) = anObject
			ifTrue: [^ self removeAt: i]].
	anIndex + 1 to: collection size do: [:i |
		(collection at: i) = anObject
			ifTrue: [^ self removeAt: i]]