import concepts;
import list;


struct KeyValue {key:concepts.Room, value:concepts.Coordinates}

struct RoomHashTable{tablesize:int, table:list.List}

implement RoomHashTable {
	let get(self, key:concepts.Coordinates) -> {
		# TODO: Implement a hash-mappy thing that allows
		# Coordinates to be the key
	}

	let put(self, key:concepts.Coordinates, value:concepts.Room) -> {
		# Yep.
	}
}