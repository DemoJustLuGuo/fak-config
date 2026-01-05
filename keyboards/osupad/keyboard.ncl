// keyboards/my_pad/keyboard.ncl

{
  // 1. 核心 MCU 定义
  target = "ch552G",

  // 2. 硬件引脚连接 (这是物理层)
  hardware = {
    // 按键引脚：Key1(D), Key2(F), Key3(J), Key4(K), Enc_Btn(Mute)
    // 对应接线：P1.7, P1.6, P1.5, P1.4, P3.0
    direct_pins = ["P1.7", "P1.6", "P1.5", "P1.4", "P1.1"],

    // 编码器引脚
    encoders = [
      {
        pad_a = "P3.3", // A相
        pad_d = "P3.0", // D相
        resolution = 4, // 脉冲分辨率
      },
    ],
  },

  // 3. 设备属性配置
  config = {
    name = "Shimarin Pad 4K",   // 键盘名
    manufacturer = "Shimarin",  // 厂商名
    vid = "0xFEED",             // Vendor ID
    pid = "0x6060",             // Product ID
    debounce = 5,               // 防抖动时间 (ms)
  },
}