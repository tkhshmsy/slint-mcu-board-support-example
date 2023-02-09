FROM rust:latest

RUN rustup toolchain install nightly --allow-downgrade
RUN rustup target add thumbv6m-none-eabi
RUN rustup +nightly target add thumbv6m-none-eabi