# H题 信号分离装置

2023 年全国大学生电子设计竞赛 H 题参考实现，基于 ALINX AX7020（Zynq-7000，xc7z020clg400-2）。

## 文件结构

```
example1_wave_read_v3/
├── project_rebuild.tcl          ← BD 一键重建脚本
├── example1_wave_read_v1.srcs/
│   ├── sources_1/
│   │   ├── bd/zynq_system/      ← Block Design 文件
│   │   ├── new/                 ← 手写 Verilog 源码
│   │   │   ├── top_system.v     ← PL 顶层
│   │   │   ├── ad9238_driver.v  ← ADC 驱动
│   │   │   ├── an9767_driver.v  ← DAC 驱动
│   │   │   ├── data_decimation.v← 降采样
│   │   │   ├── dds_generator.v  ← DDS 波形发生器
│   │   │   ├── key_debounce.v   ← 按键消抖
│   │   │   └── axis_cdc.v       ← 跨时钟域桥接(未使用)
│   │   └── ip/                  ← IP 核 (.xci)
│   └── constrs_1/new/           ← 引脚约束
│       ├── ad9238.xdc
│       ├── da9767.xdc
│       ├── key.xdc
│       └── led.xdc
└── ps/app_component/src/
    └── main.c                   ← PS 端主程序(FFT+锁相)
```

## PL 端重建步骤

### 1. 创建工程
打开 Vivado → Create Project → 命名 → 选 RTL Project
- Part: **xc7z020clg400-2**

### 2. 添加源文件
Add Sources → 把 `example1_wave_read_v1.srcs/sources_1/new/` 下所有 `.v` 文件加入

### 3. 添加约束
Add Constraints → 把 `example1_wave_read_v1.srcs/constrs_1/new/` 下所有 `.xdc` 加入

### 4. 添加 IP 核
在 Project Manager 中逐一点击 Add IP，选择以下 `.xci` 文件:
- `sources_1/ip/adc_pll_65M/adc_pll_65M.xci`
- `sources_1/ip/sin_rom_1024x14/sin_rom_1024x14.xci`
- `sources_1/ip/tri_rom_1024x14/tri_rom_1024x14.xci`

### 5. 重建 Block Design
Tcl Console 中执行:
```tcl
cd <项目路径>/example1_wave_read_v1.srcs/sources_1/bd/zynq_system/
source project_rebuild.tcl
```

### 6. 生成 HDL Wrapper
在 Sources 面板右键 zynq_system → Create HDL Wrapper → 设为 Top

### 7. 构建
Run Synthesis → Run Implementation → Generate Bitstream

### 8. 导出硬件
File → Export → Export Hardware → Include Bitstream → 导出 `.xsa`

## PS 端重建步骤

1. 用导出的 `.xsa` 创建 Vitis Platform
2. 创建 Application (Empty Application, Cortex-A9, standalone)
3. 将 `ps/app_component/src/main.c` 加入工程
4. Build → Run

## 硬件连接

| 模块 | 连接 | 说明 |
|------|------|------|
| AN9238 ADC | J10 扩展口 | 双通道 12-bit, 65MSPS |
| AN9767 DAC | J11 扩展口 | 双通道 14-bit |
| 信号源 | AD1 输入 | C=A+B 混合信号 |
| DA1 输出 | A' 重建信号 | 连接示波器 CH2 |
| 按键 | PSKEY1 | 启动/重新采集 |

## 已知问题

- **频率偏移**: AN9238 模块自带 65MHz 晶振，与 FPGA 50MHz 时钟不同步，导致测量频率偏高约 10%。代码中已加入 ×0.91 补偿，如需调整修改 `FREQ_CORRECTION` 宏。
- **三角波识别**: 时钟异步导致谐波被噪声淹没，三角/正弦判别不稳定。更换支持外部时钟的 ADC 模块可彻底解决。
