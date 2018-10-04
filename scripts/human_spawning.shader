// shader for human_base buildable spawning
gfx/buildables/human_base/spawning
{
	deformVertexes rotgrow 5 3 2
	cull disable
	{
		map gfx/buildables/human_base/spawning_d
		blendfunc add
		rgbGen lightingDiffuse
		tcMod scroll .2 0
	}
	{
		map gfx/buildables/human_base/spawning_lines
		blendfunc add
		rgbGen identity
		tcMod scroll 0 .2
	}
}
