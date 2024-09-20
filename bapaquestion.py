

def permutations(lis):
    if len(lis) == 1:
        return [lis]
    perms = permutations(lis[1:])
    first = [lis[0]]
    result = []
    for perm in perms:
        for i in range(len(perm) + 1):
            new = perm[:1] , first , perm[i:]
            result.append(new)
    
    return result

a = ["a", "b", "c"]
print(permutations(a))