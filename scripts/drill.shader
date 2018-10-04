models/buildables/drill/drill
{
	qer_editorImage models/buildables/drill/drill_d
	diffuseMap models/buildables/drill/drill_d
	normalMap models/buildables/drill/drill_n
	specularMap models/buildables/drill/drill_s
	// white lamp on top
	{
		map models/buildables/drill/drill_top_a
		blendfunc add
		rgbGen    wave sin 1 .85 .5 .08
	}
	// small yellow lamps around
	{
		map models/buildables/drill/drill_around_a
		blendfunc add
		rgb       .85 .85 .85
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
