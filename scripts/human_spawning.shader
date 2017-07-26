models/buildables/humanSpawning
{
	deformVertexes rotgrow 5.0 3.0 2.0
        cull disable
        {
                map models/buildables/telenode/rep_cyl
                blendfunc add
                rgbGen lightingDiffuse
                tcMod scroll 0.2 0
        }
        {
                map models/buildables/telenode/lines2
                blendfunc add
                rgbGen identity
                tcMod scroll 0 0.2
        }
}
