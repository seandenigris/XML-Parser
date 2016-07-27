private
nestableTagGroups
	| nestableTagGroups |

	nestableTagGroups := Dictionary new.

	#('dd' 'dt') do: [:each |
		nestableTagGroups at: each put: #('dl')].
	#('tr' 'th' 'td' 'thead' 'tfoot') do: [:each |
		nestableTagGroups at: each put: #('table')].
	#('rp' 'rt') do: [:each |
		nestableTagGroups at: each put: #('ruby')].
	nestableTagGroups at: 'li' put: #('ul' 'ol' 'menu' 'dir') asSet.

	^ nestableTagGroups.