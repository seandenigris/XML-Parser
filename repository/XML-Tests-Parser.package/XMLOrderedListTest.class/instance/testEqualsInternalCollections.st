tests
testEqualsInternalCollections
	| emptyArrayList emptyOCList arrayListWithSingleElement ocListWithSingleElement arrayListWithElements ocListWithElements |

	emptyArrayList := self listClass collection: #().
	emptyOCList := self listClass collection: OrderedCollection new.
	arrayListWithSingleElement := self listClass collection: (Array with: self singleElement).
	ocListWithSingleElement := self listClass collection: (OrderedCollection with: self singleElement).
	"use withAll: for portability to GS"
	arrayListWithElements := self listClass collection: (Array withAll: self listElements).
	ocListWithElements := self listClass collection: (OrderedCollection withAll: self listElements).

	self
		assertList: emptyArrayList equals: emptyOCList;
		assertList: arrayListWithSingleElement equals: ocListWithSingleElement;
		assertList: arrayListWithElements equals: ocListWithElements;
		denyList: emptyArrayList equals: ocListWithSingleElement;
		denyList: emptyArrayList equals: ocListWithElements;
		denyList: arrayListWithSingleElement equals: emptyOCList;
		denyList: arrayListWithSingleElement equals: ocListWithElements;
		denyList: arrayListWithElements equals: emptyOCList;
		denyList: arrayListWithElements equals: ocListWithSingleElement.