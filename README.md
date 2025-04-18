# 8bit_mult_vedic
# Vedic 8-bit Multiplier Using Verilog

This project implements a hierarchical **8x8 Vedic Multiplier** using Verilog, leveraging the Urdhva Tiryakbhyam Sutra. The multiplier is composed of smaller Vedic modules (2x2 and 4x4), promoting modularity and reusability. It is designed for FPGA implementation, specifically targeting the **Basys 3** development board.

---

## 🧠 Vedic Multiplication Concept

Vedic mathematics is an ancient system of Indian mathematics. The Urdhva Tiryakbhyam (Vertically and Crosswise) method enables fast and efficient multiplication, especially well-suited for hardware implementation.

**Hierarchy:**
- `vedicmult2x2.v`: Base 2x2 Vedic multiplier.
- `4x4mult.v`: Built using four `vedicmult2x2` modules.
- `8x8mult.v`: Built using four `4x4mult` modules.

---

## 📁 Directory Structure

Directory structure:
└── adamyaaa-8bit_mult_vedic/
    ├── README.md
    ├── 4x4mult.v
    ├── 4x4mult_tb.v
    ├── 8x8mult.v
    ├── 8x8mult_tb.v
    ├── vedicmult2x2.v
    └── vedicmult2x2_tb.v



---

## 🚀 How It Works

Each module follows the Urdhva Tiryakbhyam principle:
- Partial products are calculated in parallel.
- Results are combined using adders.
- Smaller modules are reused in a bottom-up design.

This results in a **faster** and **resource-efficient** multiplier compared to conventional array or booth multipliers.

---

## ✅ Simulation & Testing

Each module includes a corresponding testbench:
- Testbenches apply multiple test cases with different operand combinations.
- Outputs are verified using simulation tools like **ModelSim**, **Vivado Simulator**, etc.
- You can modify the testbenches to expand test coverage or simulate edge cases.

---

## 🛠 Tools Used

- **Verilog HDL** – For hardware description.
- **Vivado Design Suite** – For simulation and FPGA implementation.
- **Basys 3 FPGA** (optional) – Target hardware for deployment.

---

