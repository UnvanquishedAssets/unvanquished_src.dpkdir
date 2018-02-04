creep
{
	nopicmip
	polygonoffset
	twoSided
	{
		clampmap gfx/creep/creep_d
		blendfunc blend
		blend diffusemap
		rgbGen identity
		alphaGen vertex
		alphaFunc GE128
	}
	specularMap gfx/creep/creep_s
	normalMap gfx/creep/creep_n
}
