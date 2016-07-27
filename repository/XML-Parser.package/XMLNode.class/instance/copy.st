copying
copy
	"returns a deep copy of the receiver, including copies of any descendant nodes"

	^ self shallowCopy
		postCopy;
		postCopyConfiguration