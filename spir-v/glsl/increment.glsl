#version 450

layout(location = 0)in int inputValue;
layout(location = 1)out int outputValue;

void main() {
  outputValue = inputValue + 1;
}
