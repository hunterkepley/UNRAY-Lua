# Item files in UNRAY

### Libraries used:

- [gopher-lua](https://github.com/yuin/gopher-lua) by yuin

## Naming:

Item files are in the format `itemName.lua`

For example: `healthPack.lua`

## Usage:

### Information function:

#### All returns for getInformation (in proper order)

**0:name, 1:functionName, 2:numReturns, 3:imageBounds**

- Separate imageBounds numbers (minX, minY, maxX, maxY) with semicolons

```go
function getInformation()
    name = "testItem"
    functionName = "test"
    numReturns = 0
    imageBounds = "0;96;15;105;"
    return name, functionName, numReturns, imageBounds
end
```

*Return a name and a list of the function names*

### Parameters/Returns

- You must make the function parameters the same order as this
- You can choose to leave out as many of these as you need, but treat it as a stack [remove from right to left, do not remove anything from the middle]
- The same goes for function returns as it does for parameters!

#### All parameters you can use (in proper order)

- *playerHealth, playerEnergy, gunFirespeed*

#### All returns you can use (in proper order)

- *isFinished, playerHealth, playerEnergy*

***Remember, you must return in reverse order, refer to testItem.lua for an example***

### Making a function:

```lua

function getInformation()
    name = "testItem"
    functionName = "test"
    numReturns = 0
    imageBounds = "0;96;15;105;"
    return name, functionName, numReturns, imageBounds
end

-- With all parameters

function test(playerHealth, playerEnergy, gunFirespeed) 
    print(playerHealth)
end

-- Without some parameters

function test(playerHealth, playerEnergy) 
    print(playerEnergy)
end

-- Without any parameters 

function test() 
    print("No parameters!")
end

-- Will not work properly!

function test(gunFirespeed) 
    print(gunFirespeed)
end

-- A solution to the above problem

function test(_, _, gunFirespeed) 
    print(gunFirespeed)
end
```

*Functions are simple and you can pretty much do whatever you want*




### Developed by Hunter Kepley 2020 for UNRAY and the DUNGY engine