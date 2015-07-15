
-- *** Vision Shader-Permutation Config-File *** 

-- vertex lighting and dot3 normal mapping cannot be active at the same time
-- place MOBILE_DEFAULT at the end (will be looked at first)
AddPermutationBoolGroup("MOBILE_VERTEXLIGHTING", "MOBILE_DYNAMICLIGHTNORMALMAPPING", "MOBILE_DEFAULT")

AddPermutationBoolGroup("POINTLIGHT", "SPOTLIGHT", "DIRECTIONALLIGHT")

AddPermutationBool("NOFOG")

--AddPermutationBool("SHADOWMAP")

--AddPermutationBool("VMATERIAL_SPECULAR")
