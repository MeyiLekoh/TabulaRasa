-----------------------------------
-- Ability: Violent Flourish
-- Stuns target with a low rate of success. Requires one Finishing Move.
-- Obtained: Dancer Level 45
-- Finishing Moves Used: 1
-- Recast Time: 0:20
-- Duration: ??
-----------------------------------
require('scripts/globals/job_utils/dancer')
-----------------------------------
local abilityObject = {}

abilityObject.onAbilityCheck = function(player, target, ability)
    return xi.job_utils.dancer.checkViolentFlourishAbility(player, target, ability)
end

abilityObject.onUseAbility = function(player, target, ability, action)
    xi.job_utils.dancer.useViolentFlourishAbility(player, target, ability, action)
end

return abilityObject
