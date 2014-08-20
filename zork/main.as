# import lib.stdlib;
import stdlib;
import items;
import libc;
import parse

# Time for a ton of text.
let action() -> {
	let text = (
		"ZORK I: The Great Underground Empire\n"                                           
		"Copyright (c) 1981, 1982, 1983 Infocom, Inc. All rights reserved.\n"              
		"ZORK is a registered trademark of Infocom, Inc.\n"
		"\n"
		"West of House\n"
		"You are standing in an open field west of a white house, with a boarded front door.\n"
		"There is a small mailbox here.");

	libc.println("%s" text);

	let response = stdlib.input();

}


