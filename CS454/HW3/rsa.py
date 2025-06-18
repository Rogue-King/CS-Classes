import random

def gcd(a, b):
    while b:
        a, b = b, a % b
    return a

def extended_gcd(a, b):
    if a == 0:
        return b, 0, 1
    gcd, x1, y1 = extended_gcd(b % a, a)
    x = y1 - (b // a) * x1
    y = x1
    return gcd, x, y

def miller_rabin(n, k=40):
    if n <= 1:
        return False
    if n <= 3:
        return True
    if n % 2 == 0:
        return False

    r, s = 0, n - 1
    while s % 2 == 0:
        r += 1
        s //= 2

    for _ in range(k):
        a = random.randint(2, n - 2)
        x = pow(a, s, n)
        if x == 1 or x == n - 1:
            continue
        for _ in range(r - 1):
            x = pow(x, 2, n)
            if x == n - 1:
                break
        else:
            return False
    return True

def generate_large_prime(bits, seed=None):
    if seed is not None:
        random.seed(seed)
    while True:
        prime_candidate = random.getrandbits(bits)
        prime_candidate |= (1 << bits - 1) | 1
        if miller_rabin(prime_candidate):
            return prime_candidate

def calculate_totient(p, q):
    return (p - 1) * (q - 1)

def choose_e(totient):
    e = 3
    while gcd(e, totient) != 1:
        e += 2
    return e

def calculate_d(e, totient):
    gcd, x, y = extended_gcd(e, totient)
    if gcd != 1:
        raise Exception('e and totient are not coprime')
    return x % totient

def generate_keypair(bits, seed=None):
    p = generate_large_prime(bits, seed)
    q = generate_large_prime(bits, seed + 1)
    while q == p:
        q = generate_large_prime(bits, seed + random.randint(1, 1000))
    n = p * q
    totient = calculate_totient(p, q)
    e = choose_e(totient)
    d = calculate_d(e, totient)
    print("Generated values for RSA key pair:")
    print(f"p (prime): {p}, q (prime): {q}, n (modulus): {n}, Totient (φ(n)): {totient}")
    print(f"e (public exponent): {e}, d (private exponent): {d}")
    return (e, n), (d, n)

def mod_exp(base, exp, mod):
    result = 1
    base = base % mod
    while exp > 0:
        if exp % 2 == 1:
            result = (result * base) % mod
        exp = exp >> 1
        base = (base * base) % mod
    return result

def rsa_encrypt(message, e, n):
    return [mod_exp(ord(char), e, n) for char in message]

def rsa_decrypt(ciphertext, d, n):
    return ''.join([chr(mod_exp(char, d, n)) for char in ciphertext])

def main(bits, seed, message):
    public_key, private_key = generate_keypair(bits=bits, seed=seed)
    print("Public Key:", public_key)
    print("Private Key:", private_key)
    print("Original Message:", message)
    
    ciphertext = rsa_encrypt(message, *public_key)
    print(f"Ciphertext: {ciphertext}")
    
    decrypted_message = rsa_decrypt(ciphertext, *private_key)
    print("Decrypted Message:", decrypted_message)
    
    # Debugging: Print intermediate values
list
    assert message == decrypted_message, "Decryption failed!"
    print("RSA Encryption and Decryption successful!")

if __name__ == "__main__":
    bits = 8
    seed = 12
    message = "Hello, RSA!"
    main(bits, seed, message)