models/buildables/acid_tube/acid_tube
{
	qer_editorimage models/buildables/acid_tube/acid_tube_d
	{
		blend diffusemap
		map models/buildables/acid_tube/acid_tube_d
		alphaFunc GE128
	}
	normalMap models/buildables/acid_tube/acid_tube_n
	specularMap models/buildables/acid_tube/acid_tube_s
	glowMap models/buildables/acid_tube/acid_tube_g
	cull none
}

gfx/buildables/acid_tube/spore
{
	cull none
	entityMergable
	{
		map gfx/buildables/acid_tube/spore
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen    vertex
		alphaGen  vertex
		depthFade 100.0
	}
}
