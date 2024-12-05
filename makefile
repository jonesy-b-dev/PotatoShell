SRC := $(wildcard ./source/*.c)
OUTDIR := build
OUTNAME := potatoShell

run: $(OUTNAME)
	build/$(OUTNAME)

$(OUTNAME): $(SRC) $(OUTDIR)
	gcc -o $(OUTDIR)/$@ $<

$(OUTDIR):
	mkdir -p $(OUTDIR)

clean:
	rm -rf build/.
