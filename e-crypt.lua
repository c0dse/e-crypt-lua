local eCrypt = {}

function eCrypt:createKey(strength) 
    local key = {}
    
    for i=1, strength do 
        table.insert(key, {math.random(0,999), math.random(0,999), math.random(0,999)})
    end

    return key
end

function eCrypt:encrypt(string, strength)
    local key = self.createKey(strength)
    local keyLen = #key
    local encryptData = ""

    for i = 1, string.len() do 
        local encryptVec = (string.len() % keyLen) + 1
        local data = string.sub(string, i, i + 1)
        
        encryptData = encryptData .. data
    end

end

