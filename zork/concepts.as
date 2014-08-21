# import lib.utils;
import stdlib;
import list;
import dict;

struct Room {
	# In Zork, A room has a number called rval. (who knows what it does) 
	# The rval of a room is usually 0. 
	coordinates:Coordinates, # The rooms coordinates
	rval:int,
	name:str,
	description:str, # i.e "This is a forest, with trees in all directions. To the east, there appears to be sunlight."
	# A list of all usable items in the "room"
	items: dict.Dict



}

struct Inventory {
	"""A generic Inventory.

	Each player/item has a max inventory size (capacity), 
	occupied space is determined by the sum of each item's 
	item.size in contents"""

	contents:list.List,
	capacity:int,
	occupied_slots:int

}

implement Inventory {

	# Check if the item actually can contain something
	let can_hold_items(self):bool -> {
		if self.capacity == 0 {
			return false;
		}
		return true;	
	}

	let retrieve(self, index:int):Item -> {
		if not self.can_hold_items(){
			assert(false);
		}

		let item = self.contents.get(index) as *Item;
		self.contents.remove(index);

		# Reduce the number of occupied slots by the item
		# that was taken out
		self.occupied_slots = self.occupied_slots - item.size;
		# let l = list.List.with_element_size(size_of(Item));

		return item
	}

	let store(self, item:Item) -> {

		if not self.can_hold_items(){
			return;
		}

		if ((item.size + self.capacity) <= self.capacity) {
			self.contents.push(&item);
		}

		return; # Probably need to do some error checking or somin
	}


	
}

struct ItemAttributes {
	is_flammable: bool,
	is_readable: bool,
	is_static: bool, # Can it move from its current spot?

}

struct Item {
	"""Generic representation of an item."""

	# TODO: Arrow should have defaults like the following:
	# is_plural: bool = false,
	name: str,
	plural_name:str,
	size:int,
	inventory:Inventory,
	text:str,
	attributes:ItemAttributes,

}

implement Item {

	let read(self) ->{
		# This will kill the entire program if the item
		# is NOT a "readable" entity
		assert(self.attributes.is_readable);


	}
}


