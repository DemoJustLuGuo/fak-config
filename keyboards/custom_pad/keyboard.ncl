let { DirectPinKey, PhysicalEncoder, .. } = import "fak/keyboard.ncl" in
let { CH552G, .. } = import "fak/mcus.ncl" in

{
  mcu = CH552G,
  usb_dev = {
    vendor_id = 51966,  # 0xCAFE
    product_id = 47806, # 0xBABE
    product_ver = 256,  # 0x0100
  },
  keys =
    let D = DirectPinKey in
    [
        D 17,  # KEY_1(D) > P1.7
        D 16,  # KEY_2(F) > P1.6
        D 15,  # KEY_3(J) > P1.5
        D 14,  # KEY_4(K) > P1.4
        D 11,  # EC_C > P1.1 
    ],
  encoders =
    let E = PhysicalEncoder in
    [
        E 33 30 4,  # EC_A > P3.3, EC_D > P3.0, resolution 4 
    ]
}
