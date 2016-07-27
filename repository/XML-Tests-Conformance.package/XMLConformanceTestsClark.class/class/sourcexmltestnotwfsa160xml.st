source
sourcexmltestnotwfsa160xml
	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY % e "">
<!ENTITY foo "%e;">
]>
<doc></doc>
'