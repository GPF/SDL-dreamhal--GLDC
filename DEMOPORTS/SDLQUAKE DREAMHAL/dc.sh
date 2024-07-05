sh-elf-objcopy -R .stack -O binary quake.elf quake.bin
$KOS_BASE/utils/scramble/scramble quake.bin 1st_read.bin
cp 1st_read.bin cd/
# Define the command to find and format the directories
DIRS=$(find . -type d | grep '/cd' | sed 's/^/-d /' | tr '\n' ' ')
~/code/dreamcast/mkdcdisc/builddir/mkdcdisc -n DCQuake -N $DIRS -e quake.elf -o sdlquake.cdi -I -n
cp sdlquake.cdi sdlquake.iso quake.elf /mnt/d/dev/dc_dbg/Vice/
