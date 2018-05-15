import tensorflow as tf

_overwrite_output = tf.load_op_library('./cc/overwrite_output.so')
overwrite_output = _overwrite_output.overwrite_output
