accessing
absentElement
	^ absentAttribute
		ifNil: [absentAttribute := XMLAttribute name: 'absentName' value: 'absentValue']