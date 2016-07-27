tests
test3processingInstructionNodes
	| pi t d |

	pi := XMLPI new.
	t := 'target'.
	d := 'data'.
	self
		assertPI: pi hasTarget: '' data: '';
		assertPI: (pi target: t) hasTarget: t data: '';
		assertPI: (pi data: d) hasTarget: t data: d;
		assertPI: (XMLPI target: t data: d) hasTarget: t data: d.