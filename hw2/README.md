# HW2
## 2.1

<details>
  <summary>IRQ number</summary>
  <p align="center">
    <img src="https://github.com/user-attachments/assets/9aec32e4-9af0-4976-b065-e883ca39b2a9" width="600">
  </p>
</details>

<details>
  <summary>IRQ ID port</summary>
  <p align="center">
    <img src="https://github.com/user-attachments/assets/4ce49dc4-d054-4acf-8ba8-bedf5f8b850f" width="600">
  </p>
</details>

<details>
  <summary>pending register</summary>
  <p align="center">
    <img src="https://github.com/user-attachments/assets/c2c63e09-3397-42b8-bd5b-843390a50250" width="600">
  </p>
</details>

<details>
  <summary>disable/mask register</summary>
  <p align="center">
    <img src="https://github.com/user-attachments/assets/29a7f4a6-1012-4c54-a32d-935f24f6cf87" width="600">
  </p>
</details>

## 2.2

<details>
  <summary>pending</summary>
  <p align="center">
    <img src="https://github.com/user-attachments/assets/bdb851d3-3c4f-47e9-a379-fc31504908c6" width="600">
  </p>
</details>

<details>
  <summary>啟用mask</summary>
  <p align="center">
    <img src="https://github.com/user-attachments/assets/cc111239-4745-4b10-9bb3-f366e618a30d" width="600">
  </p>
</details>

<details>
  <summary>IRQ ID 變數名稱</summary>
  <p align="center">
    <img src="https://github.com/user-attachments/assets/242845fd-3e89-4049-9c10-a63e87437265" width="600">
  </p>
</details>

<details>
  <summary>ISR放入IRQ </summary>
  <p align="center">
    <img src="https://github.com/user-attachments/assets/1153a589-4acd-4e4b-92d0-c3fb6d37b7ab" width="600">
  </p>
</details>


## 2.3
- ### block design
![螢幕擷取畫面 2025-05-14 134056](https://github.com/user-attachments/assets/5ef158e9-f34e-4c9f-b9b7-d7da9d2a8c92)



- ### code 
    - top_wrapper
[hw2_v1_0.v](https://github.com/austin9328/SOC/blob/main/hw2/ip_repo/hw2_1.0/hdl/hw2_v1_0.v)

    - s00
[hw2_v1_0_S00_AXI.v](https://github.com/austin9328/SOC/blob/main/hw2/ip_repo/hw2_1.0/hdl/hw2_v1_0_S00_AXI.v)

    - intr
[hw2_v1_0_S_AXI_INTR.v](https://github.com/austin9328/SOC/blob/main/hw2/ip_repo/hw2_1.0/hdl/hw2_v1_0_S_AXI_INTR.v)

    - rtl
[hw2_intr.v](https://github.com/austin9328/SOC/blob/main/hw2/ip_repo/hw2_1.0/src/hw2_intr.v)

    - sdk
[helloworld.c](https://github.com/austin9328/SOC/blob/main/hw2/hw2/hw2.sdk/hw2_sw/src/helloworld.c)

- ### demo
  - [影片](https://youtube.com/shorts/2GGQ-b6P8NM?feature=share)  
  - SDK軟體中斷
  ![螢幕擷取畫面 2025-05-28 161302](https://github.com/user-attachments/assets/8e6eebec-a7e2-4feb-bfec-932c4fc13923)

  - btn硬體中斷
  ![螢幕擷取畫面 2025-05-28 161228](https://github.com/user-attachments/assets/fe53e4ef-8e5e-4ebc-a4af-7b0cb7b86181)



