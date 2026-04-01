make TOP=${PWD} compiler -j
./out/apps/compiler/nvdla_compiler/nvdla_compiler --prototxt model/deconv_with_conv.prototxt --caffemodel model/deconv_with_conv.caffemodel --cprecision int8 --batch 1 --configtarget nv_small --quantizationMode pre-kernel
#./out/apps/compiler/nvdla_compiler/nvdla_compiler --prototxt model/conv_only.prototxt --caffemodel model/conv_only.caffemodel --cprecision int8 --batch 1 --configtarget nv_small --quantizationMode pre-kernel
#./out/apps/compiler/nvdla_compiler/nvdla_compiler --prototxt model/deconv_1group_with_conv.prototxt --caffemodel model/deconv_1group_with_conv.caffemodel --cprecision int8 --batch 1 --configtarget nv_small --quantizationMode pre-kernel
