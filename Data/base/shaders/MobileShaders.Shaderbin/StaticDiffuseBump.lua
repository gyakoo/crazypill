
-- *** Vision Shader-Permutation Config-File *** 


--   Functions to add Permutation-Variables and their valid Values:

-- AddPermutationBool      ("VAR_NAME");
-- AddPermutationBoolGroup ("VAR_NAME1", "VAR_NAME2", "VAR_NAME3", ...);
-- AddPermutationInt       ("VAR_NAME", int1, int2, int3, ...);
-- AddPermutationConst     ("VAR_NAME", true/false);
-- AddPermutationConst     ("VAR_NAME", int);


--   The following Permutation-Variables were extracted from the Shader:

AddPermutationConst("VMATERIAL_BUMPCUBEMAP", false);
AddPermutationConst("VMATERIAL_CUBEMAP", false);
AddPermutationConst("VMATERIAL_BUMP", true);
AddPermutationConst("VMATERIAL_GLOW", false);
AddPermutationConst("VMATERIAL_BUMPANIMATED", false);
AddPermutationConst("VMATERIAL_FAKESPECBUMP", false);
AddPermutationBool("NOFOG");
AddPermutationBool("MIRROR");

AddPermutationBoolGroup("LIGHTMAP", "LIGHTGRIDSIMPLE", "FULLBRIGHT_DUMMY");
AddPermutationBoolGroup("LIGHTMAPDOT3", "LIGHTGRID", "FULLBRIGHT");


--   Filtering-Function to remove unnecessary permutations:

function IsPermutationSupported (PermutationValues, Platform)

-- Let LIGHTMAP also provide the LIGHTMAPDOT3 inclusion tag so that the shader can be selected by a non-mobile shader provider
if (PermutationValues["LIGHTMAPDOT3"] ~= PermutationValues["LIGHTMAP"]) then
  return false;
end

-- Let LIGHTGRIDSIMPLE also provide the LIGHTGRID inclusion tag so that the shader can be selected by a non-mobile shader provider
if (PermutationValues["LIGHTGRID"] ~= PermutationValues["LIGHTGRIDSIMPLE"]) then
  return false;
end

if (PermutationValues["FULLBRIGHT"] ~= PermutationValues["FULLBRIGHT_DUMMY"]) then
  return false;
end

  return true;
end