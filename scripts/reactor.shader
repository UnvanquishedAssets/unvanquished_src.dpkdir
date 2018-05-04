models/buildables/reactor/reactor1
{
	qer_editorimage models/buildables/reactor/reactor_core_p
	diffuseMap models/buildables/reactor/reactor_core_d
	{
		stage specularMap
		map models/buildables/reactor/reactor_core_s
	}
	// glowing core
	normalMap models/buildables/reactor/reactor_core_n
	{
		map       models/buildables/reactor/reactor_core_glow
		blendfunc add
		rgbGen    wave sin 1.0 0.85 0.5 0.08
	}

	when destroyed models/buildables/reactor/reactor1_dead
}

models/buildables/reactor/reactor1_dead
{
	qer_editorimage models/buildables/reactor/reactor_core_p
	diffuseMap models/buildables/reactor/reactor_core_d
	{
		stage specularMap
		map models/buildables/reactor/reactor_core_s
	}
}

models/buildables/reactor/reactor2
{
	qer_editorimage models/buildables/reactor/reactor_arm_p
	diffuseMap models/buildables/reactor/reactor_arm_d
	normalMap models/buildables/reactor/reactor_arm_n
	{
		stage specularMap
		map models/buildables/reactor/reactor_arm_s

	}
	// big blue lamps
	{
		map       models/buildables/reactor/reactor_arm_glow1
		blendfunc add
		rgbGen    wave inversesawtooth 0.0 1.0 0.0 0.4
	}
	// small yellow lamps
	{
		map       models/buildables/reactor/reactor_arm_glow2
		blendfunc add
		rgb       0.85 0.85 0.85
	}

	when destroyed models/buildables/reactor/reactor2_dead
}

models/buildables/reactor/reactor2_dead
{
	qer_editorimage models/buildables/reactor/reactor_arm_p
	diffuseMap models/buildables/reactor/reactor_arm_d
	normalMap models/buildables/reactor/reactor_arm_n
	{
		stage specularMap
		map models/buildables/reactor/reactor_arm_s
	}
}
