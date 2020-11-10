function getInformation()
    name = "testItem"
    functionName = "test"
    numReturns = 1
    imageBounds = "0;96;15;105;"
    return imageBounds, numReturns, functionName, name
end

-- This function just adds one to the player's energy then returns it
function test()
    SetPlayerHealth(PlayerHealth() + PlayerEnergy() - PlayerWalkSpeed()) -- Set the player's health to a weird value
    return true
end