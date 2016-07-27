accessing
changedListItems
	^ self listItems collect: [:each | self changeListItem: each]