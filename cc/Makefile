all: binarized.so overwrite_output.so

TF_CFLAGS := $(shell python -c 'import tensorflow as tf; print(" ".join(tf.sysconfig.get_compile_flags()))')
TF_LFLAGS := $(shell python -c 'import tensorflow as tf; print(" ".join(tf.sysconfig.get_link_flags()))')

%.so: %.cc
	g++ -std=c++11 -shared $^ -o $@ -fPIC ${TF_CFLAGS} ${TF_LFLAGS} -O2

clean:
	rm *.so
