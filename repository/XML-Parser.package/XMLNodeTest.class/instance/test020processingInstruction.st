tests
test020processingInstruction
	| pi t d |

	pi := XMLPI new.
	t := 'target'.
	d := 'data'.
	self
		assert: pi isPI;
		assertPI: pi target: '' data: '';
		assertPI: (pi target: t) target: t data: '';
		assertPI: (pi data: d) target: t data: d;
		assertPI: (XMLPI target: t data: d) target: t data: d.