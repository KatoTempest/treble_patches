LiR Project (LineageOS based)


This is GSI project, patches based on the Phh's and Andy Yan works

apply-patches.sh to apply all patches
	ex. usage:
	cd /where/los/sources
	bash ~/files/patches/los/v302/apply-patches.sh ~/files/patches/los/v302/

buildLir.sh for starting build process from zero
	ex. usage:
	cd ~/files/patches/los/v302
	bash buildLir.sh /where/los/sources

Patches separated to the three category:
lineage - specific fixes to adapt LineageOS for GSI (mainly based on Andy's patches)
generic - Phh's patches, some of them adapted for LineageOS
personal - my personal additional tweaks & fixes (for LiR Project)
