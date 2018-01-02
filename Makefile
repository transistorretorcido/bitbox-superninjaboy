#Super Ninja Boy (snb) makefile
NO_SDCARD=1
#NO_SOUND=1
#DEFINES = VGA_BPP=16 
#DEFINES += VGA_MODE=320 VGA_BPP=16 
NAME = snb


GAME_C_FILES = assets/art.c sounds.c lib/sampler/sampler.c  $(NAME).c
GAME_C_OPTS = -DVGA_MODE=640
ASSETS_DIR = assets/

include $(BITBOX)/kernel/bitbox.mk

assets/art.c: *.png
	python rle_encode2.py $^ > $@ 
	
sounds.c: sounds/*.wav mk_sounds.py
	python mk_sounds.py $< > $@
	

	

	
	
    
   
	


