// shader for human_base buildable spawning
gfx/buildables/human_base/spawning
{
	deformVertexes rotgrow 5.0 3.0 2.0
	cull disable
	{
		map gfx/buildables/human_base/spawning_d
		blendfunc add
		rgbGen lightingDiffuse
		tcMod scroll 0.2 0
	}
	{
		map gfx/buildables/human_base/spawning_lines
		blendfunc add
		rgbGen identity
		tcMod scroll 0 0.2
	}
}
