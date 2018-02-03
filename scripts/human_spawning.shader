// shader for human buildable spawning
models/buildables/human_base/spawning
{
	deformVertexes rotgrow 5.0 3.0 2.0
        cull disable
        {
                map models/buildables/human_base/rep_cyl
                blendfunc add
                rgbGen lightingDiffuse
                tcMod scroll 0.2 0
        }
        {
                map models/buildables/human_base/lines2
                blendfunc add
                rgbGen identity
                tcMod scroll 0 0.2
        }
}
