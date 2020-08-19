# Item files in UNRAY

## Naming:

Item files are in the format `itemName.lua`

For example: `healthPack.lua`

## Usage:

### Information function:

```go
function getInformation()
    name = "testItem"
    functions = {"test"}
    numReturns = 0
    return name, functions, numReturns
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
    functions = {"testAll", "testSome", "testNone", "testRemoval", "testPlaceholder"}
    numReturns = 0
    return name, functions, numReturns
end

function testAll(playerHealth, playerEnergy, gunFirespeed) -- With all parameters
    print(playerHealth)
end

function testSome(playerHealth, playerEnergy) -- Without some parameters
    print(playerEnergy)
end

function testNone() -- Without any parameters
    print("No parameters!")
end

function testRemoval(gunFirespeed) -- Will not properly!
    print(gunFirespeed)
end

function testPlaceholder(_, _, gunFirespeed) -- A solution to the above problem
    print(gunFirespeed)
end
```

*Functions are simple and you can pretty much do whatever you want*

**Make sure to return either a number or a string, in most cases, strings are preferred**



### Developed by Hunter Kepley 2020 for UNRAY and the DUNGY engine