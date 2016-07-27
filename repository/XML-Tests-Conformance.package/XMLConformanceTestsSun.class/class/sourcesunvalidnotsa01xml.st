as yet unclassified
sourcesunvalidnotsa01xml
	^'<?xml version="1.0" standalone="no"?>

<?xml version="1.0" encoding="UTF-8"?>

    <!ELEMENT root (child|attributes)*>
    <!ELEMENT child (#PCDATA)>
    <!ELEMENT attributes EMPTY>
    <!ATTLIST attributes
	token		(a|b|c)		"a"
	notation	(nonce|foo|bar)	#IMPLIED
	nmtoken		NMTOKEN		#IMPLIED
	nmtokens	NMTOKENS	#IMPLIED
	id		ID		#IMPLIED
	idref		IDREF		#IMPLIED
	idrefs		IDREFS		#IMPLIED
	entity		ENTITY		#IMPLIED
	entities	ENTITIES	#IMPLIED
	cdata		CDATA		#IMPLIED
	>
    
    <!-- this needs normalization when used as an ID -->
    <!ENTITY internal	" internal&number; ">
    <!ENTITY number	"42">

    <!NOTATION nonce	SYSTEM "file:/dev/null">
    <!NOTATION foo	PUBLIC "-//public id//foo" "file:/dev/null">
    <!NOTATION bar	SYSTEM "file:/dev/tty">

    <!ENTITY unparsed-1 PUBLIC "-//some public//ID" "file:/dev/console"
			NDATA nonce>
    <!ENTITY unparsed-2 SYSTEM "scheme://host/data"
			NDATA foo>

<root>
    <child>
    The whitespace before and after this element keeps
    this from being standalone.
    </child>
</root>'