getglobal game
getfield -1 GetService
pushvalue -2
pushstring Players
pcall 2 1 0
getfield -1 LocalPlayer
getfield -1 Data
getfield -1 Str
pushnumber 99999999999
setfield -2 Value
emptystack