import concepts

let create_item(name:str, plural_name:str, size:int, inventory_size:int,
						  									 text:str) {
	let mut inv_contents = list.List.with_element_size(size_of(concepts.Item));
	let mut inv = concepts.Inventory(inv_contents, inventory_size, 0);

	return concepts.Item(name, plural_name, size, inv, description);

}

# Create and map some items for easy reference and aliasing
# (I'm pretty sure this will be awfully long)
let mut mailbox = create_item("mailbox", "mailboxes", 0, 10, '');

# TODO: WE NEED LITERALS
# let items_map = {
# 	"mailbox":  mailbox,
# 	"mail box": mailbox,
# 	"mail-box": mailbox,
# }


