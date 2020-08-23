# Item file API for UNRAY

### Libraries used:

- [gopher-lua](https://github.com/yuin/gopher-lua) by yuin

## File naming:

Item files are in the format `itemName.lua`

For example: `healthPack.lua`

## Usage:

### Information function:

#### All returns for getInformation (in proper order)

*0:name, 1:functionName, 2:numReturns, 3:imageBounds*

- Separate imageBounds numbers with semicolons *Ex: (minX; minY; maxX; maxY;)*

```go
function getInformation()
    name = "testItem"
    functionName = "test"
    numReturns = 0
    imageBounds = "0;96;15;105;"
    return name, functionName, numReturns, imageBounds
end
```

***You must return these variables in this order, I would just copy paste and edit this from here 
or another file***

### Making a function:

- When you are designing an item, consider whether it will be an item that continually 
runs its function, or stops after a single use.
- - An example of an item that runs continually would be an item that makes bullets explode 
into shrapnel every single bullet, over and over.
- - An example of an item that runs once then stops after a single use and deletes itself would 
be a health pack, you heal once, that's it.

```lua

function getInformation()
    name = "testItem"
    functionName = "test"
    numReturns = 1
    imageBounds = "0;96;15;105;"
    return name, functionName, numReturns, imageBounds
end

function test() 
    healRate = 2
    SetPlayerHealth(PlayerHealth() + healRate)

    return true -- Discard item after using function once
end
```

*Functions are simple and you can pretty much do whatever you want within the bounds of my API*

## API functions:

```lua
SetPlayerHealth(Number) -- Pass a Number in to change the player's health
Playerhealth() -- Returns the player's current health

SetPlayerEnergy(Number) -- Pass a Number in to change the player's energy
PlayerEnergy() -- Returns the player's current energy

SetPlayerWalkSpeed(Number) -- Pass a number in to change the player's walk speed
PlayerWalkSpeed() -- Returns the player's current walk speed

SetGunFireSpeed(Number) -- Pass a number in to change the player's gun fire speed
GunFireSpeed() -- Returns the player's gun fire speed
```



### Developed by Hunter Kepley 2020 for UNRAY and the DUNGY engine