local x1y1, x2y1, x1y2, x2y2 = 1, 2, 3, 4
local p = 67102137

local function matrix_mul(a, b)
    return {
        (a[x1y1] * b[x1y1] % p + a[x2y1] * b[x1y2]) % p,
        (a[x1y1] * b[x2y1] % p + a[x2y1] * b[x2y2]) % p,
        (a[x1y2] * b[x1y1] % p + a[x2y2] * b[x1y2]) % p,
        (a[x1y2] * b[x2y1] % p + a[x2y2] * b[x2y2]) % p
    }
end

local function matrix_pow(x, n)
    if n == 1 then return x end
    local y = matrix_pow(x, math.floor(n / 2))
    y = matrix_mul(y, y)
    if n % 2 == 1 then y = matrix_mul(y, x) end
    return y
end

local function fibonacci(n)
    if n < 2 then return n end
    local origin = {0, 1, 1, 1}
    return matrix_pow(origin, n - 1)[1]
end

local sum = 0
local upto = 1e7
for n = 0, upto do sum = (sum + fibonacci(n)) % p end

print("F(0) + F(1) + ... + F(" .. upto .. ") mod (" .. p .. ") = " .. sum)
