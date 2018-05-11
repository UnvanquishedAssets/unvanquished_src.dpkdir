models/buildables/drill/drill
{
	qer_editorimage models/buildables/drill/drill_p
	diffuseMap models/buildables/drill/drill_d
	normalMap models/buildables/drill/drill_n
	specularMap models/buildables/drill/drill_s
	// white lamp on top
	{
		map models/buildables/drill/drill_top_a
		blendfunc add
		rgbGen    wave sin 1.0 0.85 0.5 0.08
	}
	// small yellow lamps around
	{
		map models/buildables/drill/drill_around_a
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
