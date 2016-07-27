accessing
absentListItem
	^ absentAttribute
		ifNil: [absentAttribute := XMLAttribute name: 'absentName' value: 'absentValue']