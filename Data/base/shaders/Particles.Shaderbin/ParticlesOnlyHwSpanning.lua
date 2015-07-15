-- ParticlesOnlyHwSpanning.lua
-- *** Vision Shader-Permutation Config-File *** 

AddPermutationBool ("HWSPANNING");
AddPermutationBool ("SMOOTHANIM");
AddPermutationBool ("ALPHATESTINSHADER");

function IsPermutationSupported (PermutationValues, Platform)
  
  -- only allow hardware spanning
  -- but do not use AddPermutationConst because the inclusion tag
  -- "HWSPANNING" must appear for this technique
  if (PermutationValues["HWSPANNING"] == false)
  then
    return false;
  end

  -- alpha test instruction in shader is only needed on some platforms
  if (PermutationValues["ALPHATESTINSHADER"] and
      (Platform == DX9 or Platform == XBOX360 or
      Platform == PS3 or Platform == PSP2 or Platform == GLES2)) 
  then
    return false;
  end

  return true;
end
