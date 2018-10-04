models/buildables/booster/body
{
	qer_editorImage models/buildables/booster/booster_d
	diffuseMap      models/buildables/booster/booster_d
	normalMap       models/buildables/booster/booster_n
	specularMap     models/buildables/booster/booster_s
	glowMap         models/buildables/booster/booster_a
}

gfx/buildables/booster/spore
{
	cull none
	entityMergable
	{
		map gfx/buildables/booster/spore
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen    vertex
		alphaGen  vertex
		depthFade 100
	}
}
