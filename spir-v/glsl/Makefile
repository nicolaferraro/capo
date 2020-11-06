default: build

build:
	# vert is not the right kind of shader here, we need compute shaders
	glslc -fshader-stage=vert -o increment.spv increment.glsl

.PHONY: build
