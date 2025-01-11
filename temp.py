import struct

def float_to_ieee754_double_hex(value):
    # Pack the float into 4 bytes as a single-precision float
    packed = struct.pack('>f', value)  # '>f' for big-endian single precision
    ieee754 = struct.unpack('>I', packed)[0]
    bin_rep = f'{ieee754:08X}'
    # Convert the packed bytes to hexadecimal
    return bin_rep

# Example usage
def doing_float():
    while(True):
        value = input("")
        if value == "q":
            return
        value = float(value)
        ieee754_hex = float_to_ieee754_double_hex(value)
        print(f"0x{ieee754_hex}")

if __name__ == "__main__":
    doing_float()