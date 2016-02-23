vec = [1 2 3 0 5]
haszero = any(vec == 0)
allzeros = all(vec == 0)
vec2 = [5 9 9 9 9]

hassame = any(vec == vec2) %must have the same value at the same position
allsame = all(vec == vec2)

vec3 = [1 4 6 -3 0 -9 -1 9 1]

vec3(vec3 < 0) = vec3(vec3 < 0) + 10

vec3 = vec3 + 10 * (vec3 < 0)

vec4 = [2 4 5 7 -2 0 5]

vec4(mod(vec4, 2) ==1) = vec4(mod(vec4, 2) ==1) .*2;

vec5 = [1 3 4 2 3 4 5 6]
vec5(1:2:end) = vec5(1:2:end) .*2

str1 = 'go-fight-win'

[token, remain] = strtok(str1, '-')
[token2, remain2] = strtok(remain, '-')
token3 = remain2
