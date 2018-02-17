gfx/buildables/creep/creep
{
	nopicmip
	polygonoffset
	twoSided
	{
		clampmap gfx/buildables/creep/creep_d
		blendfunc blend
		blend diffusemap
		rgbGen identity
		alphaGen vertex
		alphaFunc GE128
	}
	specularMap gfx/buildables/creep/creep_s
	normalMap gfx/buildables/creep/creep_n
}
