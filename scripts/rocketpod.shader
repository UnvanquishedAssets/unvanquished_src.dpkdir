models/buildables/rocketpod/rocketpod
{
	diffuseMap  models/buildables/rocketpod/rocketpod_d
	normalMap   models/buildables/rocketpod/rocketpod_n
	specularMap models/buildables/rocketpod/rocketpod_s
}

models/buildables/rocketpod/rocket
{
	cull                none
	surfaceparm         trans

	{
		map       models/buildables/rocketpod/rocket_d
		stage     diffuseMap
		blend     blend
	}
	normalMap   models/buildables/rocketpod/rocket_n
	specularMap models/buildables/rocketpod/rocket_s
	glowMap     models/buildables/rocketpod/rocket_g
}
