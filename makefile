all: test

test: test.as
	@ $$ARROW -L $(dir $(ARROW))../src $^ | llc -filetype=obj > test.o && gcc -o $@ test.o -ltcod -L. -Wl,-rpath,.

clean:
	@- rm -rf $(wildcard *.o)
	@- rm -rf $(wildcard test)
