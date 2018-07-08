models/buildables/telenode/telenode_dead
{
	diffuseMap	models/buildables/telenode/telenode_d
	normalMap	models/buildables/telenode/telenode_n
	specularMap	models/buildables/telenode/telenode_s
}

models/buildables/telenode/telenode
{
	qer_editorImage models/buildables/telenode/telenode_d
	diffuseMap	models/buildables/telenode/telenode_d
	normalMap	models/buildables/telenode/telenode_n
	specularMap	models/buildables/telenode/telenode_s
	glowMap		models/buildables/telenode/telenode_a

	when unpowered models/buildables/telenode/telenode_dead
	when destroyed models/buildables/telenode/telenode_dead
}

models/buildables/telenode/effect
{
	qer_editorImage models/buildables/telenode/effect_p
	qer_trans 0.5
	cull none

	surfaceparm nolightmap

	{
		map   models/buildables/telenode/effect_d
		blend blend

		tcMod scroll -1.0 0

		// TODO: Add a comment explaining what this does
		tAlphaZeroClamp
	}
}
