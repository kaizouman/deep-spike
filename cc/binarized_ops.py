import tensorflow as tf

_binarized_module = tf.load_op_library('./cc/binarized.so')
binarized = _binarized_module.binarized
