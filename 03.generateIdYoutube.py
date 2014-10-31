import string, random
def genHash(seed):
    base = string.ascii_letters+string.digits # Output hash base: all alphabets and digits
    random.seed(seed) # Input string as the random seed
    hash_value = ""
    for i in range(4):
        # Generate a 10-character hash by randomly select characters from base
        hash_value += random.choice(base)
    return hash_value

#example
print genHash(1)
print genHash(2)
print genHash('anibal')
print genHash('anib')