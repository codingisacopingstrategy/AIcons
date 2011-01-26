#
#  Background Choices for a Color Display (to pick randomly)
#
changequote(`[',`]')dnl     Set quotes to [ and ]
#
# The following after processing with the `M4' is a list of X window
# commands (one per line) each of which can set an X window displays root
# background pattern to a icon found in this library.
# 
# That is to say any one uncommented line after preprocessing can be
# selected to set your XWIndows Background. The colors given below for
# bitmapo images are purely examples and recommendations, you are welcome
# to suggest different colors for bitmap patterns, mail me.
#
# This file can be used with the "randomline" command to select ONE
# command line from this file (ignoring `!' comments). For Example...
#
#  eval "nice `m4 icons/support/xbgnd_cmds.m4 | randomline` &"
#
# The above will
#    1/ filter the file though the M4 Macro processor
#    2/ select at random one uncommented/non-blank line
#    3/ execute that `set background' command, nicely.
#
# The randomline program is a simple perl script to read a file and print a
# random non-blank or comment line. Very handy. You can find it in the
# ``support/scripts'' sub-directory of Anthony's Icon Library.
#      http://www.cit.gu.edu.au/~anthony/icons/
#
# I use to use the C-Preprocessor for this task, but GNU liked to
# constantally change the way the cpp command handles quotes, and concatante
# strings. Eventually I found iut just not worth the effort!
#
# Set this to the base of the AIcons Tree              <--- MODIFY HERE!!!
define([BASE],/home/anthony/icons)dnl
#
# Many backgrounds below have been commented out.  Usally this is because
# the background is too light, too colorful, simplistic, or distracting to
# use as a background etc.  Many of these are Bitmap backgrounds, which
# while the color choices make them OK for a background on a color display,
# their are other much better choices in the library.
#
# A monocrome or grey scale display would probably find a completely
# different set of the backgrounds below more suitable for use. Experiment
# by uncommenting all and then commenting out backgrounds you do not like
# as thay appear. A -e option on the `randomline' script will have it print
# a copy of the line selected to the error channel.
#
dnl Define the "set background pattern"  commands to use...
define([XBM],   xsetroot -fg $1 -bg $2 -bitmap)dnl
#
dnl  Use xv to directly display a color image
define([COL],	xv -root -quit)dnl
#define([COL],	xv -root -ncols 48 -quit)dnl
#
dnl  Run it though ImageMagick convert (tinting greyscale)
define([CVT],	convert $1 miff:- | display -window root)dnl
#
# NOTE: the second COL xv command above is limited to 48 colors so the
# background can not use up all your displays color table. Modify if you
# like, to suit.
#
# I use to use the program ``xloadimages'' but it adds a extra color and
# will also slightly change color selections, even if that is not nessary.
#
# ------------------------------------------------------------------------------
#
# Bitmap Backgrounds
#   (many of these are only nice on a black and white display)
#
undefine([DIR])dnl
define([DIR],BASE/desc/bw-bgnd)dnl
#XBM(	FOREGROUND,    BACKGROUND    ) BITMAP_FILE 
XBM(	Black,         Sienna        ) DIR/Brick.xbm
XBM(	Black,         Blue          ) DIR/Cubism.xbm
XBM(	Black,         Blue          ) DIR/Madness.xbm
XBM(	Sienna,        Peru          ) DIR/Sandy_Waves.xbm
XBM(	Black,         PaleGreen     ) DIR/Spotty.xbm
##XBM(	Sienna,        LimeGreen     ) DIR/Swamp.xbm
##XBM(	Navy,          SkyBlue       ) DIR/alhambra.xbm
##XBM(	Blue,          SkyBlue       ) DIR/arabic_floor.xbm
##XBM(	Black,         SlateGrey     ) DIR/arabic_rug.xbm
##XBM(	Black,         Navy          ) DIR/bitwize.xbm
#XBM(	Black,         Peru          ) DIR/bricks.xbm
##XBM(	Black,         Tan           ) DIR/brain.xbm
##XBM(	Navy,          SkyBlue       ) DIR/bubbles.xbm
XBM(	Black,         PaleGreen     ) DIR/buttons16.xbm
XBM(	Navy,          DodgerBlue    ) DIR/burl.xbm
##XBM(	Navy,          Black         ) DIR/cane_fancy.xbm
##XBM(	SeaGreen,      Black         ) DIR/cane_fancy2.xbm
##XBM(	SlateGrey,     Black         ) DIR/cane_seat.xbm
##XBM(	Tan,           Black         ) DIR/cane_square.xbm
XBM(	DarkSlateGrey, Wheat         ) DIR/cardback.xbm
XBM(	SkyBlue,       SlateGrey     ) DIR/cardback.xbm
##XBM(	Navy,          Purple        ) DIR/chitz.xbm
##XBM(	Tan,           Firebrick     ) DIR/cinder_block.xbm
##XBM(	DodgerBlue,    White         ) DIR/clouds.xbm
##XBM(	Navy,          Grey          ) DIR/clouds.xbm
##XBM(	Navy,          Peru          ) DIR/criss_cross.xbm
##XBM(	Black,         DodgerBlue    ) DIR/cyber.xbm
XBM(	Black,         DodgerBlue    ) DIR/cyber_tile.xbm
#XBM(	Black,         Navy          ) DIR/dolphins.xbm
XBM(	Peru,          Tan           ) DIR/dune.xbm
XBM(	Navy,          RoyalBlue     ) DIR/escher_ducks.xbm
##XBM(	Sienna,        Wheat         ) DIR/escher_encounter.xbm
#XBM(	Navy,          SeaGreen      ) DIR/escher_fish.xbm
XBM(	Sienna,        Peru          ) DIR/escher_swans.xbm
XBM(	DarkSlateGrey, SeaGreen      ) DIR/fly_eye.xbm
XBM(	Navy,          DodgerBlue    ) DIR/grainy.xbm
XBM(	DarkSlateGrey, Black         ) DIR/grainy.xbm
XBM(	SlateGrey,     SkyBlue       ) DIR/granite.xbm
XBM(	Tan,           Sienna        ) DIR/granite.xbm
##XBM(	SeaGreen,      DarkSlateGrey ) DIR/hex_plates.xbm
##XBM(	Black,         SeaGreen      ) DIR/itchy_scratchy.xbm
##XBM(	DarkSlateGrey, LimeGreen     ) DIR/leaves.xbm
##XBM(	Black,         Wheat         ) DIR/leaves.xbm
##XBM(	Sienna,        Orange        ) DIR/leaves.xbm
XBM(	Peru,          Tan           ) DIR/linen.xbm
XBM(	DarkSlateGrey, DodgerBlue    ) DIR/marble.xbm
##XBM(	Sienna,        Tan           ) DIR/moor_star.xbm
##XBM(	Sienna,        Wheat         ) DIR/moor_star2.xbm
##XBM(	DodgerBlue,    SkyBlue       ) DIR/pakistan_star.xbm
##XBM(	Black,         Tan           ) DIR/pegboard.xbm
XBM(	Black,         Magenta       ) DIR/plasma_maze.xbm
XBM(	Black,         SteelBlue     ) DIR/rings.xbm
##XBM(	Firebrick,     Peru          ) DIR/scribble.xbm
##XBM(	Sienna,        Wheat         ) DIR/sea_shells.xbm
XBM(	Navy,          Purple        ) DIR/swirl.xbm
#XBM(	Navy,          LimeGreen     ) DIR/shapez.xbm
##XBM(	Navy,          SeaGreen      ) DIR/spain_vine.xbm
##XBM(	Navy,          SeaGreen      ) DIR/spain_weave.xbm
XBM(	Black,         LimeGreen     ) DIR/speckled.xbm
##XBM(	Sienna,        Peru          ) DIR/squiggles.xbm
##XBM(	Navy,          Blue          ) DIR/subliminal.xbm
##XBM(	Black,         DodgerBlue    ) DIR/tetris.xbm
##XBM(	SeaGreen,      Tan           ) DIR/tetris2.xbm
##XBM(	Navy,          Gray          ) DIR/turkish_base.xbm
##XBM(	Black,         Peru          ) DIR/turkish_hex.xbm
XBM(	Sienna,        Tan           ) DIR/wave_tiles.xbm
XBM(	Black,         Tan           ) DIR/weave.xbm
XBM(	Black,         Navy          ) DIR/weird.xbm
XBM(	Tan,           Wheat         ) DIR/wrinkle.xbm
#
# Bitmap Patterns
#
undefine([DIR])dnl
define([DIR], BASE/prog/patterns)dnl
#XBM(	FOREGROUND,    BACKGROUND    ) BITMAP_FILE 
XBM(	Black,         DodgerBlue    ) DIR/bumps.xbm
XBM(	Black,         Firebrick     ) DIR/scales.xbm
XBM(	Black,         Navy          ) DIR/trelis.xbm
XBM(	Black,         Firebrick     ) DIR/plaid.xbm
##XBM(	Blue,          Black         ) DIR/rain.xbm
XBM(	Black,         LimeGreen     ) DIR/grid16.xbm
XBM(	Black,         SteelBlue     ) DIR/fence_link2.xbm
XBM(	Black,         DarkSlateGrey ) DIR/fence_knitting.xbm
XBM(	Black,         Navy          ) DIR/weave_rect_wide2.xbm
XBM(	Black,         SeaGreen      ) DIR/weave_diag_2.xbm
XBM(	Black,         Sienna        ) DIR/weave_wide.xbm
#
# Landscape Patterns
#
undefine([DIR])dnl
define([DIR], BASE/prog/map)dnl
#XBM(	FOREGROUND,    BACKGROUND    ) BITMAP_FILE 
##XBM(	SeaGreen,      Black         ) DIR/crossfire-bw/swamp.xbm
##XBM(	LimeGreen,     Black         ) DIR/crossfire-bw/brush.xbm
##XBM(	Black,         Sienna        ) DIR/crossfire-bw/desert.xbm
##COL()	DIR/misc/forest_small.xpm
COL()	DIR/misc/floor_wood.xpm
##COL()	DIR/misc/sea.xpm
##COL()	DIR/misc/sea_deep.xpm
# forest is repeated in cl-bgnd/medium
##COL()	DIR/forest.xpm
#
# Spell Effect Patterns
undefine([DIR])dnl
define([DIR], BASE/prog/effects)dnl
#XBM(	FOREGROUND,    BACKGROUND    ) BITMAP_FILE
XBM(	Black,         DodgerBlue    ) DIR/crossfire-bw/exit.xbm
#
# Grey Scale Backgrounds
# 
undefine([DIR])dnl
define([DIR], BASE/desc/gr-bgnd)dnl
COL()	DIR/amstyle.xpm
COL()	DIR/bowtie.jpg
##COL()	DIR/brain.xpm
##COL()	DIR/byzan.xpm
##COL()	DIR/byzan_sm.xpm
##COL()	DIR/circles.xpm
##COL()	DIR/crossed.xpm
##COL()	DIR/crossed2.xpm
COL()	DIR/cubes.xpm
COL()	DIR/curves.xpm
##COL()	DIR/diamonds.xpm
##COL()	DIR/dotted.xpm
##COL()	DIR/escher_geezer.gif
CVT(	DIR/escher_horsemen.xpm  -fill navy -tint 50 )
##COL()	DIR/hex_tiles.xpm
COL()	DIR/moon.gif
COL()	DIR/snaketrails.xpm
##COL()	DIR/squares2.xpm
##COL()	DIR/swirls.xpm
COL()	DIR/thatch.xpm
CVT(	DIR/twister.xpm  -fill navy -tint 100 )
##COL()	DIR/zigzag.xpm

#
# Color Display Backgrounds
#  (few of these work well on a Black and White Display)
#
undefine([DIR])dnl
define([DIR], BASE/desc/cl-bgnd/display)dnl
COL()	DIR/balls_blue.xpm
COL()	DIR/balls_red.xpm
##COL()	DIR/basket_weave.xpm
##COL()	DIR/bee_hive.xpm
COL()	DIR/black_marble.jpg
COL()	DIR/blotch_red.xpm
COL()	DIR/bubble_3d.xpm
COL()	DIR/bubble_green.gif
COL()	DIR/byzan.xpm
##COL()	DIR/byzan_sm.xpm
COL()	DIR/circle_weave.xpm
##COL()	DIR/circles.xpm
##COL()	DIR/circtile.gif
##COL()	DIR/colored_disks.jpg
COL()	DIR/colored_ripples.gif
##COL()	DIR/cubes_blue.xpm
##COL()	DIR/cubes_green.xpm
##COL()	DIR/cubes_red.xpm
COL()	DIR/dehumanization.jpg
##COL()	DIR/diamonds.xpm
##COL()	DIR/dotted.xpm
COL()	DIR/bluetile.gif
COL()	DIR/earth.gif
COL()	DIR/filaments.xpm
COL()	DIR/fire.xpm
COL()	DIR/flare.gif
COL()	DIR/fractile.xpm
COL()	DIR/funkyblue_weave.gif
COL()	DIR/grey_ripples.jpg
##COL()	DIR/hex_weave.xpm
COL()	DIR/hexes_blue_cream.gif
COL()	DIR/hexes_colored.gif
COL()	DIR/hyper_metal.gif
##COL()	DIR/lattice.xpm
COL()	DIR/leaves.gif
COL()	DIR/leaves2.xpm
COL()	DIR/leopard.xpm
COL()	DIR/light_squares.gif
COL()	DIR/maze_blue.xpm
COL()	DIR/net_wear.xpm
COL()	DIR/overlap.xpm
##COL()	DIR/parrots.jpg
##COL()	DIR/pipes.xpm
##COL()	DIR/plaid.xpm
##COL()	DIR/plaid2.xpm
COL()	DIR/rain.xpm
##COL()	DIR/red_white_blue.xpm
COL()	DIR/ribbon_red.xpm
COL()	DIR/ridges_blue.xpm
COL()	DIR/ridges_red.xpm
##COL()	DIR/ringmail.xpm
COL()	DIR/ripples_blue.xpm
COL()	DIR/rocks.gif
COL()	DIR/rocks_smooth.gif
COL()	DIR/rock_wall.jpg
COL()	DIR/rough.xpm
##COL()	DIR/sky_streaks.gif
COL()	DIR/space_metal.gif
COL()	DIR/squares.xpm
COL()	DIR/swirls.xpm
##COL()	DIR/tetris.xpm
##COL()	DIR/tickertape_parade.xpm
COL()	DIR/trees.xpm
COL()	DIR/tripindicular.xpm
COL()	DIR/volcanic.xpm
COL()	DIR/wall1.gif
##COL()	DIR/waves.xpm
COL()	DIR/weave.jpg
COL()	DIR/weave-blue.gif
COL()	DIR/weave-green.gif
COL()	DIR/weave-red.gif
COL()	DIR/weave-brown.gif
COL()	DIR/weave-purple.gif
##COL()	DIR/ybrrect.gif
##COL()	DIR/xenon.xpm
#
# Dark Document Backgrounds
# (for light colored text)
#
undefine([DIR])dnl
define([DIR],BASE/desc/cl-bgnd/dark)dnl
COL()	DIR/aqua_ravines.jpg
COL()	DIR/berries.jpg
COL()	DIR/blackblue.gif
COL()	DIR/blocks.jpg
COL()	DIR/blueblop.jpg
COL()	DIR/brick_grey.jpg
CVT(	DIR/brick_grey.jpg  -fill red -tint 40)
COL()	DIR/celtic_knots.jpg
COL()	DIR/chicken_songs.jpg
COL()	DIR/circuit.jpg
COL()	DIR/crystal.jpg
COL()	DIR/cyber_tile.xpm
COL()	DIR/desert_room.jpg
COL()	DIR/dragonscale.gif
COL()	DIR/gator_hide.jpg
COL()	DIR/greennet.gif
COL()	DIR/gremlin_buds.jpg
COL()	DIR/hemp.jpg
COL()	DIR/leaves_green.gif
COL()	DIR/lizard_scales.jpg
COL()	DIR/marble.gif
COL()	DIR/new_product.jpg
COL()	DIR/raindrops_dark.xpm
COL()	DIR/space.xpm
COL()	DIR/space_blue.jpg
#COL()	DIR/spacebox.xpm
COL()	DIR/spacemap.gif
COL()	DIR/starfield.xpm
COL()	DIR/striped_fragments.jpg
COL()	DIR/won_ton_soup.jpg
COL()	DIR/wood.gif
#
# Medium Document Backgrounds
# (only black and white text can contrast)
#
undefine([DIR])dnl
define([DIR],BASE/desc/cl-bgnd/medium)dnl
COL()	DIR/aqua.jpg
COL()	DIR/block_cliff.xpm
COL()	DIR/blue4.gif
COL()	DIR/blueswrl.gif
COL()	DIR/brick.xpm
COL()	DIR/brick_plain.xpm
COL()	DIR/brick_real.xpm
COL()	DIR/brick_rough.gif
COL()	DIR/bubbled_cyan.xpm
COL()	DIR/chitz.gif
COL()	DIR/cobblestone.jpg
COL()	DIR/crinkled.xpm
COL()	DIR/denim.xpm
COL()	DIR/fibre.jpg
COL()	DIR/lawn.jpg
COL()	DIR/linen.gif
COL()	DIR/linen_blue.gif
COL()	DIR/marble.xpm
COL()	DIR/no_laughing.jpg
COL()	DIR/paper_old.jpg
COL()	DIR/purple.jpg
COL()	DIR/raindrops.gif
COL()	DIR/ripple_green.jpg
COL()	DIR/rivets.xpm
COL()	DIR/sandfoot.gif
COL()	DIR/silky.gif
COL()	DIR/square.xpm
COL()	DIR/stones.pcx
COL()	DIR/twister.xpm
COL()	DIR/water.jpg
COL()	DIR/wood_floor.xpm
#
# Light Document Backgrounds
# (Good for document backgrounds but not display backgrounds)
#
undefine([DIR])dnl
define([DIR],BASE/desc/cl-bgnd/light)dnl
COL()	DIR/blue_drops.gif
COL()	DIR/blue_rough.gif
COL()	DIR/blueswrl.gif
##COL()	DIR/cheese.jpg
##COL()	DIR/chitz.xpm
##COL()	DIR/daisy.jpg
##COL()	DIR/dew_web.jpg
COL()	DIR/liquid_blue.jpg
COL()	DIR/mud.gif
##COL()	DIR/newsprint.gif
##COL()	DIR/paperslats.gif
##COL()	DIR/pasta.gif
COL()	DIR/paws.gif
##COL()	DIR/pebbles.jpg
##COL()	DIR/popcorn.jpg
##COL()	DIR/rings.jpg
COL()	DIR/sandstone.gif
COL()	DIR/shells.gif
##COL()	DIR/specled.xpm
##COL()	DIR/spiralbook.gif
##COL()	DIR/twister.xpm
COL()	DIR/wood.xpm
#
# Cloud Backgrounds
# (For my Kite Flying Web pages)
#
undefine([DIR])dnl
define([DIR],BASE/desc/cl-bgnd/clouds)dnl
##COL()	DIR/ciel.jpg
##COL()	DIR/cloud.jpg
COL()	DIR/cloud_clumps.gif
COL()	DIR/cloud_electric.gif
COL()	DIR/cloud_heavy.jpg
COL()	DIR/cloud_ltblue.gif
##COL()	DIR/cloud_mottled.jpg
##COL()	DIR/cloud_mottled2.gif
##COL()	DIR/cloud_puffy.gif
COL()	DIR/cloud_real.jpg
COL()	DIR/cloud_scatter.jpg
COL()	DIR/cloud_tile.jpg
COL()	DIR/cloud_traces.jpg
COL()	DIR/cloud_wormy.gif
##COL()	DIR/ice_blue.jpg
#
# Desktop Textures
#  (lots of colors are used, please limit them to suit)
#
undefine([DIR])dnl
define([DIR],BASE/desc/cl-bgnd/textures)dnl
COL()	DIR/bg_blu.gif
COL()	DIR/bg_grn.gif
COL()	DIR/blue_maze.gif
COL()	DIR/blue_water.gif
COL()	DIR/bluemars.png
COL()	DIR/bow-tiles.gif
COL()	DIR/brick.gif
COL()	DIR/cloth.gif
COL()	DIR/coarse.gif
COL()	DIR/concrete.gif
COL()	DIR/cyber.gif
COL()	DIR/cyber_metal.gif
COL()	DIR/dirt.gif
COL()	DIR/ether.gif
COL()	DIR/fire_maze.gif
COL()	DIR/fire_ring.gif
COL()	DIR/fossil.png
##COL()	DIR/granite_dark.gif
##COL()	DIR/granite_light.gif
COL()	DIR/honey.gif
COL()	DIR/icerings.gif
COL()	DIR/jeweled_tiles.gif
COL()	DIR/marble1.gif
COL()	DIR/marble2.gif
COL()	DIR/marbled.gif
#COL()	DIR/mezzotint.gif
COL()	DIR/newtile.gif
COL()	DIR/plasma.gif
COL()	DIR/plasma_maze.gif
COL()	DIR/pinkoil.gif
##COL()	DIR/pool.gif
COL()	DIR/purple_flames.gif
COL()	DIR/raindrops_dark.gif
COL()	DIR/red_rock.gif
COL()	DIR/red_stucco.gif
COL()	DIR/sharks.gif
COL()	DIR/slate.gif
COL()	DIR/slate_green.gif
##COL()	DIR/snails.gif
COL()	DIR/space.gif
COL()	DIR/terracotta.gif
COL()	DIR/water_ripples.jpg
COL()	DIR/waves.gif

# -----------------------------------------------
