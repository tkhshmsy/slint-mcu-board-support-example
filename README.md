# slint-mcu-board-support-example

Example for mcu-board-support of [slint-ui/slint](https://github.com/slint-ui/slint).  
This repository is a private sandbox for checking slint operation on various mcu boards.

The following code is forked/imported from https://github.com/slint-ui/slint.git .
* mcu-board-support
* printerdemo_mcu

# How to build/run

## Simulator

```bash
$ sudo apt install libfontconfig-dev libxcb-shape0-dev libxcb-xfixes0-dev libxkbcommon-dev libglu1-mesa-dev libudev-dev
$ cargo run -p printerdemo_mcu --features=simulator --release
```

## RaspberryPiPico with ST7789

H/W
* [RaspberryPiPico](https://www.switch-science.com/products/6900)
* [Waveshare Pico-ResTouch-LCD-2.8](https://www.switch-science.com/products/7331)

```bash
$ docker compose run rust
## inside of  container
$ cargo +nightly build -p printerdemo_mcu --no-default-features --features=mcu-board-support/pico-st7789 --target=thumbv6m-none-eabi --release
## outside of container
$ elf2uf2-rs -d target/thumbv6m-none-eabi/release/printerdemo_mcu
```

