# Item files in UNRAY

### Libraries used:

- [gopher-lua](https://github.com/yuin/gopher-lua) by yuin

## Naming:

Item files are in the format `itemName.lua`

For example: `healthPack.lua`

## Usage:

### Information function:

```go
function getInformation()
    name = "testItem"
    functionName = "test"
    numReturns = 0
    imageBounds = "0, 96, 15, 105"
    return name, functionName, numReturns, imageBounds
end
```

*Return a name and a list of the function names*

### Making a function:

**One important note:**

- You must make the function parameters the same order as this
- You can choose to leave out as many of these as you need, but treat it as a stack [remove from right to left, do not remove anything from the middle]

```lua

function getInformation()
    name = "testItem"
    functionName = "test"
    numReturns = 0
    imageBounds = "0, 96, 15, 105"
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

-- Will not properly!

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