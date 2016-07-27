class initialization
initializeNestableTagGroups
	NestableTagGroups := Dictionary new.

	#('dt' 'dd') do: [:each |
		NestableTagGroups at: each put: #('dl')].
	#('tr' 'th' 'td' 'thead' 'tfoot') do: [:each |
		NestableTagGroups at: each put: #('table')].
	#('li') do: [:each |
		NestableTagGroups at: each put: #('ul' 'ol' 'menu' 'dir')].