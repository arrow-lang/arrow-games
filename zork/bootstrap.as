implement list.List {
	# This is awful. Generics please c:

	let filter_by_str(self, function:str, key:str) -> {
		let mut ret = list.List.with_element_size(size_of(type(self)))
		let mut i: uint = 0;
		while i < self.size {
			let item = self.contents.get(index) as *Item
			if function(item) == key {
				self.push(&item)
			} 
		}

		return ret;
	}

	let filter_by_int(self, function:int, key:int) -> {
		let mut ret = list.List.with_element_size(size_of(type(self)))
		let mut i: uint = 0;
		while i < self.size {
			let item = self.contents.get(index) as *Item
			if function(item) == key {
				self.push(&item)
			} 
		}

		return ret;
	}


}