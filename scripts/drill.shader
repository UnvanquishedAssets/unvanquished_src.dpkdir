models/buildables/drill/drill
{
	diffuseMap models/buildables/drill/drill_d
	normalMap models/buildables/drill/drill_n
	{
		stage specularMap
		map models/buildables/drill/drill_s
	}
	// white lamp on top
	{
		map models/buildables/drill/drill_g2
		blendfunc add
		rgbGen    wave sin 1.0 0.85 0.5 0.08
	}
	// small yellow lamps
	{
		map models/buildables/drill/drill_g1
		blendfunc add
		rgb       0.85 0.85 0.85
	}

	when destroyed models/buildables/drill/drill_dead
}

models/buildables/drill/drill_dead
{
	diffuseMap models/buildables/drill/drill_d
	normalMap models/buildables/drill/drill_n
	{
		stage specularMap
		map models/buildables/drill/drill_s
	}
}
