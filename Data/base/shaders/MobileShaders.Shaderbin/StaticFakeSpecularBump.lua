
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
AddPermutationConst("VMATERIAL_BUMP", false);
AddPermutationConst("VMATERIAL_GLOW", false);
AddPermutationConst("VMATERIAL_BUMPANIMATED", false);
AddPermutationConst("VMATERIAL_FAKESPECBUMP", true);
AddPermutationBool("NOFOG");
AddPermutationBool("MIRROR");
AddPermutationBoolGroup("LIGHTMAP", "LIGHTGRIDSIMPLE", "FULLBRIGHT", "DYNAMIC_ONLY");


--   Filtering-Function to remove unnecessary permutations:

-- function IsPermutationSupported (PermutationValues, Platform)


--if (PermutationValues["VAR_NAME"] > some_value) and (Platform == DX9 / DX11 / XBOX360 / PS3 / PSP2 / GLES2 / WIIU) then
--  return false;
--end

--if (PermutationValues["VAR_NAME"] ~= some_value) and/or (PermutationValues["VAR_NAME"] == some_other_value) then
--  return false;
--end

  --return true;
--end


