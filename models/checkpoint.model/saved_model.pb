??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02unknown8??	
?
conv_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv_layer1/kernel
?
&conv_layer1/kernel/Read/ReadVariableOpReadVariableOpconv_layer1/kernel*&
_output_shapes
:*
dtype0
x
conv_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv_layer1/bias
q
$conv_layer1/bias/Read/ReadVariableOpReadVariableOpconv_layer1/bias*
_output_shapes
:*
dtype0
?
conv_layer2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv_layer2/kernel
?
&conv_layer2/kernel/Read/ReadVariableOpReadVariableOpconv_layer2/kernel*&
_output_shapes
:*
dtype0
x
conv_layer2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv_layer2/bias
q
$conv_layer2/bias/Read/ReadVariableOpReadVariableOpconv_layer2/bias*
_output_shapes
:*
dtype0
?
hidden_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(*%
shared_namehidden_layer1/kernel
~
(hidden_layer1/kernel/Read/ReadVariableOpReadVariableOphidden_layer1/kernel*
_output_shapes
:	?(*
dtype0
|
hidden_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*#
shared_namehidden_layer1/bias
u
&hidden_layer1/bias/Read/ReadVariableOpReadVariableOphidden_layer1/bias*
_output_shapes
:(*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:(*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv_layer1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_layer1/kernel/m
?
-Adam/conv_layer1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer1/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv_layer1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv_layer1/bias/m

+Adam/conv_layer1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer1/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv_layer2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_layer2/kernel/m
?
-Adam/conv_layer2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer2/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv_layer2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv_layer2/bias/m

+Adam/conv_layer2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer2/bias/m*
_output_shapes
:*
dtype0
?
Adam/hidden_layer1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(*,
shared_nameAdam/hidden_layer1/kernel/m
?
/Adam/hidden_layer1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer1/kernel/m*
_output_shapes
:	?(*
dtype0
?
Adam/hidden_layer1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_nameAdam/hidden_layer1/bias/m
?
-Adam/hidden_layer1/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer1/bias/m*
_output_shapes
:(*
dtype0
?
Adam/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*%
shared_nameAdam/output/kernel/m
}
(Adam/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output/kernel/m*
_output_shapes

:(*
dtype0
|
Adam/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/m
u
&Adam/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/output/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv_layer1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_layer1/kernel/v
?
-Adam/conv_layer1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer1/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv_layer1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv_layer1/bias/v

+Adam/conv_layer1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer1/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv_layer2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_layer2/kernel/v
?
-Adam/conv_layer2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer2/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv_layer2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv_layer2/bias/v

+Adam/conv_layer2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer2/bias/v*
_output_shapes
:*
dtype0
?
Adam/hidden_layer1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?(*,
shared_nameAdam/hidden_layer1/kernel/v
?
/Adam/hidden_layer1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer1/kernel/v*
_output_shapes
:	?(*
dtype0
?
Adam/hidden_layer1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(**
shared_nameAdam/hidden_layer1/bias/v
?
-Adam/hidden_layer1/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer1/bias/v*
_output_shapes
:(*
dtype0
?
Adam/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*%
shared_nameAdam/output/kernel/v
}
(Adam/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output/kernel/v*
_output_shapes

:(*
dtype0
|
Adam/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/v
u
&Adam/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/output/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?7
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?7
value?7B?7 B?7
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
 trainable_variables
!regularization_losses
"	keras_api
R
#	variables
$trainable_variables
%regularization_losses
&	keras_api
R
'	variables
(trainable_variables
)regularization_losses
*	keras_api
h

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
h

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?
7iter

8beta_1

9beta_2
	:decay
;learning_ratemtmumvmw+mx,my1mz2m{v|v}v~v+v?,v?1v?2v?
8
0
1
2
3
+4
,5
16
27
8
0
1
2
3
+4
,5
16
27
 
?
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics

	variables
trainable_variables
regularization_losses
 
^\
VARIABLE_VALUEconv_layer1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv_layer1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
^\
VARIABLE_VALUEconv_layer2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv_layer2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
 trainable_variables
!regularization_losses
 
 
 
?
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
#	variables
$trainable_variables
%regularization_losses
 
 
 
?
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
'	variables
(trainable_variables
)regularization_losses
`^
VARIABLE_VALUEhidden_layer1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEhidden_layer1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

+0
,1
 
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
-	variables
.trainable_variables
/regularization_losses
YW
VARIABLE_VALUEoutput/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEoutput/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21

10
21
 
?
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
3	variables
4trainable_variables
5regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
8
0
1
2
3
4
5
6
7

i0
j1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	ktotal
	lcount
m	variables
n	keras_api
D
	ototal
	pcount
q
_fn_kwargs
r	variables
s	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

k0
l1

m	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

o0
p1

r	variables
?
VARIABLE_VALUEAdam/conv_layer1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_layer1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv_layer2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_layer2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/hidden_layer1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/hidden_layer1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/output/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/output/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv_layer1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_layer1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv_layer2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv_layer2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/hidden_layer1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/hidden_layer1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/output/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/output/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
!serving_default_conv_layer1_inputPlaceholder*/
_output_shapes
:?????????c+*
dtype0*$
shape:?????????c+
?
StatefulPartitionedCallStatefulPartitionedCall!serving_default_conv_layer1_inputconv_layer1/kernelconv_layer1/biasconv_layer2/kernelconv_layer2/biashidden_layer1/kernelhidden_layer1/biasoutput/kerneloutput/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_402922
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&conv_layer1/kernel/Read/ReadVariableOp$conv_layer1/bias/Read/ReadVariableOp&conv_layer2/kernel/Read/ReadVariableOp$conv_layer2/bias/Read/ReadVariableOp(hidden_layer1/kernel/Read/ReadVariableOp&hidden_layer1/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Adam/conv_layer1/kernel/m/Read/ReadVariableOp+Adam/conv_layer1/bias/m/Read/ReadVariableOp-Adam/conv_layer2/kernel/m/Read/ReadVariableOp+Adam/conv_layer2/bias/m/Read/ReadVariableOp/Adam/hidden_layer1/kernel/m/Read/ReadVariableOp-Adam/hidden_layer1/bias/m/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp-Adam/conv_layer1/kernel/v/Read/ReadVariableOp+Adam/conv_layer1/bias/v/Read/ReadVariableOp-Adam/conv_layer2/kernel/v/Read/ReadVariableOp+Adam/conv_layer2/bias/v/Read/ReadVariableOp/Adam/hidden_layer1/kernel/v/Read/ReadVariableOp-Adam/hidden_layer1/bias/v/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_403465
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv_layer1/kernelconv_layer1/biasconv_layer2/kernelconv_layer2/biashidden_layer1/kernelhidden_layer1/biasoutput/kerneloutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv_layer1/kernel/mAdam/conv_layer1/bias/mAdam/conv_layer2/kernel/mAdam/conv_layer2/bias/mAdam/hidden_layer1/kernel/mAdam/hidden_layer1/bias/mAdam/output/kernel/mAdam/output/bias/mAdam/conv_layer1/kernel/vAdam/conv_layer1/bias/vAdam/conv_layer2/kernel/vAdam/conv_layer2/bias/vAdam/hidden_layer1/kernel/vAdam/hidden_layer1/bias/vAdam/output/kernel/vAdam/output/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_403574??
?6
?
!__inference__wrapped_model_402377
conv_layer1_inputQ
7sequential_1_conv_layer1_conv2d_readvariableop_resource:F
8sequential_1_conv_layer1_biasadd_readvariableop_resource:Q
7sequential_1_conv_layer2_conv2d_readvariableop_resource:F
8sequential_1_conv_layer2_biasadd_readvariableop_resource:L
9sequential_1_hidden_layer1_matmul_readvariableop_resource:	?(H
:sequential_1_hidden_layer1_biasadd_readvariableop_resource:(D
2sequential_1_output_matmul_readvariableop_resource:(A
3sequential_1_output_biasadd_readvariableop_resource:
identity??/sequential_1/conv_layer1/BiasAdd/ReadVariableOp?.sequential_1/conv_layer1/Conv2D/ReadVariableOp?/sequential_1/conv_layer2/BiasAdd/ReadVariableOp?.sequential_1/conv_layer2/Conv2D/ReadVariableOp?1sequential_1/hidden_layer1/BiasAdd/ReadVariableOp?0sequential_1/hidden_layer1/MatMul/ReadVariableOp?*sequential_1/output/BiasAdd/ReadVariableOp?)sequential_1/output/MatMul/ReadVariableOp?
.sequential_1/conv_layer1/Conv2D/ReadVariableOpReadVariableOp7sequential_1_conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_1/conv_layer1/Conv2DConv2Dconv_layer1_input6sequential_1/conv_layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+*
paddingSAME*
strides
?
/sequential_1/conv_layer1/BiasAdd/ReadVariableOpReadVariableOp8sequential_1_conv_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_1/conv_layer1/BiasAddBiasAdd(sequential_1/conv_layer1/Conv2D:output:07sequential_1/conv_layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+?
sequential_1/conv_layer1/ReluRelu)sequential_1/conv_layer1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????c+?
!sequential_1/max_pooling1/MaxPoolMaxPool+sequential_1/conv_layer1/Relu:activations:0*/
_output_shapes
:?????????1*
ksize
*
paddingVALID*
strides
?
.sequential_1/conv_layer2/Conv2D/ReadVariableOpReadVariableOp7sequential_1_conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_1/conv_layer2/Conv2DConv2D*sequential_1/max_pooling1/MaxPool:output:06sequential_1/conv_layer2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????1*
paddingSAME*
strides
?
/sequential_1/conv_layer2/BiasAdd/ReadVariableOpReadVariableOp8sequential_1_conv_layer2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
 sequential_1/conv_layer2/BiasAddBiasAdd(sequential_1/conv_layer2/Conv2D:output:07sequential_1/conv_layer2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????1?
sequential_1/conv_layer2/ReluRelu)sequential_1/conv_layer2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????1?
!sequential_1/max_pooling2/MaxPoolMaxPool+sequential_1/conv_layer2/Relu:activations:0*/
_output_shapes
:?????????
*
ksize
*
paddingVALID*
strides
m
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
sequential_1/flatten_1/ReshapeReshape*sequential_1/max_pooling2/MaxPool:output:0%sequential_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:???????????
sequential_1/dropout_1/IdentityIdentity'sequential_1/flatten_1/Reshape:output:0*
T0*(
_output_shapes
:???????????
0sequential_1/hidden_layer1/MatMul/ReadVariableOpReadVariableOp9sequential_1_hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype0?
!sequential_1/hidden_layer1/MatMulMatMul(sequential_1/dropout_1/Identity:output:08sequential_1/hidden_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
1sequential_1/hidden_layer1/BiasAdd/ReadVariableOpReadVariableOp:sequential_1_hidden_layer1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
"sequential_1/hidden_layer1/BiasAddBiasAdd+sequential_1/hidden_layer1/MatMul:product:09sequential_1/hidden_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
sequential_1/hidden_layer1/ReluRelu+sequential_1/hidden_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????(?
)sequential_1/output/MatMul/ReadVariableOpReadVariableOp2sequential_1_output_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0?
sequential_1/output/MatMulMatMul-sequential_1/hidden_layer1/Relu:activations:01sequential_1/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
*sequential_1/output/BiasAdd/ReadVariableOpReadVariableOp3sequential_1_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/output/BiasAddBiasAdd$sequential_1/output/MatMul:product:02sequential_1/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
sequential_1/output/SigmoidSigmoid$sequential_1/output/BiasAdd:output:0*
T0*'
_output_shapes
:?????????n
IdentityIdentitysequential_1/output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp0^sequential_1/conv_layer1/BiasAdd/ReadVariableOp/^sequential_1/conv_layer1/Conv2D/ReadVariableOp0^sequential_1/conv_layer2/BiasAdd/ReadVariableOp/^sequential_1/conv_layer2/Conv2D/ReadVariableOp2^sequential_1/hidden_layer1/BiasAdd/ReadVariableOp1^sequential_1/hidden_layer1/MatMul/ReadVariableOp+^sequential_1/output/BiasAdd/ReadVariableOp*^sequential_1/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 2b
/sequential_1/conv_layer1/BiasAdd/ReadVariableOp/sequential_1/conv_layer1/BiasAdd/ReadVariableOp2`
.sequential_1/conv_layer1/Conv2D/ReadVariableOp.sequential_1/conv_layer1/Conv2D/ReadVariableOp2b
/sequential_1/conv_layer2/BiasAdd/ReadVariableOp/sequential_1/conv_layer2/BiasAdd/ReadVariableOp2`
.sequential_1/conv_layer2/Conv2D/ReadVariableOp.sequential_1/conv_layer2/Conv2D/ReadVariableOp2f
1sequential_1/hidden_layer1/BiasAdd/ReadVariableOp1sequential_1/hidden_layer1/BiasAdd/ReadVariableOp2d
0sequential_1/hidden_layer1/MatMul/ReadVariableOp0sequential_1/hidden_layer1/MatMul/ReadVariableOp2X
*sequential_1/output/BiasAdd/ReadVariableOp*sequential_1/output/BiasAdd/ReadVariableOp2V
)sequential_1/output/MatMul/ReadVariableOp)sequential_1/output/MatMul/ReadVariableOp:b ^
/
_output_shapes
:?????????c+
+
_user_specified_nameconv_layer1_input
?
?
B__inference_output_layer_call_and_return_conditional_losses_402521

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/output/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:??????????
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype0?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
d
H__inference_max_pooling1_layer_call_and_return_conditional_losses_402386

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?F
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_402869
conv_layer1_input,
conv_layer1_402820: 
conv_layer1_402822:,
conv_layer2_402826: 
conv_layer2_402828:'
hidden_layer1_402834:	?("
hidden_layer1_402836:(
output_402839:(
output_402841:
identity??#conv_layer1/StatefulPartitionedCall?4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?#conv_layer2/StatefulPartitionedCall?4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?!dropout_1/StatefulPartitionedCall?%hidden_layer1/StatefulPartitionedCall?6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?/output/kernel/Regularizer/Square/ReadVariableOp?
#conv_layer1/StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputconv_layer1_402820conv_layer1_402822*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????c+*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer1_layer_call_and_return_conditional_losses_402425?
max_pooling1/PartitionedCallPartitionedCall,conv_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1_layer_call_and_return_conditional_losses_402435?
#conv_layer2/StatefulPartitionedCallStatefulPartitionedCall%max_pooling1/PartitionedCall:output:0conv_layer2_402826conv_layer2_402828*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer2_layer_call_and_return_conditional_losses_402454?
max_pooling2/PartitionedCallPartitionedCall,conv_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2_layer_call_and_return_conditional_losses_402464?
flatten_1/PartitionedCallPartitionedCall%max_pooling2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_402472?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_402611?
%hidden_layer1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0hidden_layer1_402834hidden_layer1_402836*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_402498?
output/StatefulPartitionedCallStatefulPartitionedCall.hidden_layer1/StatefulPartitionedCall:output:0output_402839output_402841*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_402521?
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer1_402820*&
_output_shapes
:*
dtype0?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer2_402826*&
_output_shapes
:*
dtype0?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_layer1_402834*
_output_shapes
:	?(*
dtype0?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(w
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_402839*
_output_shapes

:(*
dtype0?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^conv_layer1/StatefulPartitionedCall5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp$^conv_layer2/StatefulPartitionedCall5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp"^dropout_1/StatefulPartitionedCall&^hidden_layer1/StatefulPartitionedCall7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 2J
#conv_layer1/StatefulPartitionedCall#conv_layer1/StatefulPartitionedCall2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2J
#conv_layer2/StatefulPartitionedCall#conv_layer2/StatefulPartitionedCall2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2N
%hidden_layer1/StatefulPartitionedCall%hidden_layer1/StatefulPartitionedCall2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:b ^
/
_output_shapes
:?????????c+
+
_user_specified_nameconv_layer1_input
?	
?
$__inference_signature_wrapper_402922
conv_layer1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?(
	unknown_4:(
	unknown_5:(
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_402377o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:?????????c+
+
_user_specified_nameconv_layer1_input
?
?
G__inference_conv_layer2_layer_call_and_return_conditional_losses_402454

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?4conv_layer2/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????1*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????1X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????1?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????1?
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????1
 
_user_specified_nameinputs
?
d
H__inference_max_pooling1_layer_call_and_return_conditional_losses_403140

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_403310W
=conv_layer1_kernel_regularizer_square_readvariableop_resource:
identity??4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=conv_layer1_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: d
IdentityIdentity&conv_layer1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: }
NoOpNoOp5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp
?	
?
-__inference_sequential_1_layer_call_fn_402943

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?(
	unknown_4:(
	unknown_5:(
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_402552o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?F
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_402725

inputs,
conv_layer1_402676: 
conv_layer1_402678:,
conv_layer2_402682: 
conv_layer2_402684:'
hidden_layer1_402690:	?("
hidden_layer1_402692:(
output_402695:(
output_402697:
identity??#conv_layer1/StatefulPartitionedCall?4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?#conv_layer2/StatefulPartitionedCall?4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?!dropout_1/StatefulPartitionedCall?%hidden_layer1/StatefulPartitionedCall?6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?/output/kernel/Regularizer/Square/ReadVariableOp?
#conv_layer1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_layer1_402676conv_layer1_402678*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????c+*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer1_layer_call_and_return_conditional_losses_402425?
max_pooling1/PartitionedCallPartitionedCall,conv_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1_layer_call_and_return_conditional_losses_402435?
#conv_layer2/StatefulPartitionedCallStatefulPartitionedCall%max_pooling1/PartitionedCall:output:0conv_layer2_402682conv_layer2_402684*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer2_layer_call_and_return_conditional_losses_402454?
max_pooling2/PartitionedCallPartitionedCall,conv_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2_layer_call_and_return_conditional_losses_402464?
flatten_1/PartitionedCallPartitionedCall%max_pooling2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_402472?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_402611?
%hidden_layer1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0hidden_layer1_402690hidden_layer1_402692*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_402498?
output/StatefulPartitionedCallStatefulPartitionedCall.hidden_layer1/StatefulPartitionedCall:output:0output_402695output_402697*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_402521?
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer1_402676*&
_output_shapes
:*
dtype0?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer2_402682*&
_output_shapes
:*
dtype0?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_layer1_402690*
_output_shapes
:	?(*
dtype0?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(w
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_402695*
_output_shapes

:(*
dtype0?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^conv_layer1/StatefulPartitionedCall5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp$^conv_layer2/StatefulPartitionedCall5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp"^dropout_1/StatefulPartitionedCall&^hidden_layer1/StatefulPartitionedCall7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 2J
#conv_layer1/StatefulPartitionedCall#conv_layer1/StatefulPartitionedCall2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2J
#conv_layer2/StatefulPartitionedCall#conv_layer2/StatefulPartitionedCall2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2N
%hidden_layer1/StatefulPartitionedCall%hidden_layer1/StatefulPartitionedCall2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?
c
*__inference_dropout_1_layer_call_fn_403218

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_402611p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_conv_layer2_layer_call_fn_403160

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer2_layer_call_and_return_conditional_losses_402454w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????1`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????1: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????1
 
_user_specified_nameinputs
?
d
H__inference_max_pooling2_layer_call_and_return_conditional_losses_403197

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????
*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????1:W S
/
_output_shapes
:?????????1
 
_user_specified_nameinputs
?
I
-__inference_max_pooling2_layer_call_fn_403182

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2_layer_call_and_return_conditional_losses_402398?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
d
H__inference_max_pooling1_layer_call_and_return_conditional_losses_403145

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????1*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????c+:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?
d
H__inference_max_pooling2_layer_call_and_return_conditional_losses_402398

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_402472

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_403208

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_403332R
?hidden_layer1_kernel_regularizer_square_readvariableop_resource:	?(
identity??6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp?hidden_layer1_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?(*
dtype0?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(w
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentity(hidden_layer1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp
?	
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_402611

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_conv_layer1_layer_call_and_return_conditional_losses_403125

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?4conv_layer1/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????c+?
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????c+?
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????c+: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?
d
H__inference_max_pooling2_layer_call_and_return_conditional_losses_402464

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????
*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????1:W S
/
_output_shapes
:?????????1
 
_user_specified_nameinputs
?
?
G__inference_conv_layer2_layer_call_and_return_conditional_losses_403177

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?4conv_layer2/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????1*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????1X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????1?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????1?
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????1
 
_user_specified_nameinputs
?
I
-__inference_max_pooling1_layer_call_fn_403130

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1_layer_call_and_return_conditional_losses_402386?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?O
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_403025

inputsD
*conv_layer1_conv2d_readvariableop_resource:9
+conv_layer1_biasadd_readvariableop_resource:D
*conv_layer2_conv2d_readvariableop_resource:9
+conv_layer2_biasadd_readvariableop_resource:?
,hidden_layer1_matmul_readvariableop_resource:	?(;
-hidden_layer1_biasadd_readvariableop_resource:(7
%output_matmul_readvariableop_resource:(4
&output_biasadd_readvariableop_resource:
identity??"conv_layer1/BiasAdd/ReadVariableOp?!conv_layer1/Conv2D/ReadVariableOp?4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?"conv_layer2/BiasAdd/ReadVariableOp?!conv_layer2/Conv2D/ReadVariableOp?4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?$hidden_layer1/BiasAdd/ReadVariableOp?#hidden_layer1/MatMul/ReadVariableOp?6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOp?/output/kernel/Regularizer/Square/ReadVariableOp?
!conv_layer1/Conv2D/ReadVariableOpReadVariableOp*conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv_layer1/Conv2DConv2Dinputs)conv_layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+*
paddingSAME*
strides
?
"conv_layer1/BiasAdd/ReadVariableOpReadVariableOp+conv_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv_layer1/BiasAddBiasAddconv_layer1/Conv2D:output:0*conv_layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+p
conv_layer1/ReluReluconv_layer1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????c+?
max_pooling1/MaxPoolMaxPoolconv_layer1/Relu:activations:0*/
_output_shapes
:?????????1*
ksize
*
paddingVALID*
strides
?
!conv_layer2/Conv2D/ReadVariableOpReadVariableOp*conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv_layer2/Conv2DConv2Dmax_pooling1/MaxPool:output:0)conv_layer2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????1*
paddingSAME*
strides
?
"conv_layer2/BiasAdd/ReadVariableOpReadVariableOp+conv_layer2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv_layer2/BiasAddBiasAddconv_layer2/Conv2D:output:0*conv_layer2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????1p
conv_layer2/ReluReluconv_layer2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????1?
max_pooling2/MaxPoolMaxPoolconv_layer2/Relu:activations:0*/
_output_shapes
:?????????
*
ksize
*
paddingVALID*
strides
`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
flatten_1/ReshapeReshapemax_pooling2/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????m
dropout_1/IdentityIdentityflatten_1/Reshape:output:0*
T0*(
_output_shapes
:???????????
#hidden_layer1/MatMul/ReadVariableOpReadVariableOp,hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype0?
hidden_layer1/MatMulMatMuldropout_1/Identity:output:0+hidden_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
$hidden_layer1/BiasAdd/ReadVariableOpReadVariableOp-hidden_layer1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
hidden_layer1/BiasAddBiasAddhidden_layer1/MatMul:product:0,hidden_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(l
hidden_layer1/ReluReluhidden_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????(?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0?
output/MatMulMatMul hidden_layer1/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
output/SigmoidSigmoidoutput/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp,hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype0?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(w
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityoutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv_layer1/BiasAdd/ReadVariableOp"^conv_layer1/Conv2D/ReadVariableOp5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp#^conv_layer2/BiasAdd/ReadVariableOp"^conv_layer2/Conv2D/ReadVariableOp5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp%^hidden_layer1/BiasAdd/ReadVariableOp$^hidden_layer1/MatMul/ReadVariableOp7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 2H
"conv_layer1/BiasAdd/ReadVariableOp"conv_layer1/BiasAdd/ReadVariableOp2F
!conv_layer1/Conv2D/ReadVariableOp!conv_layer1/Conv2D/ReadVariableOp2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2H
"conv_layer2/BiasAdd/ReadVariableOp"conv_layer2/BiasAdd/ReadVariableOp2F
!conv_layer2/Conv2D/ReadVariableOp!conv_layer2/Conv2D/ReadVariableOp2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2L
$hidden_layer1/BiasAdd/ReadVariableOp$hidden_layer1/BiasAdd/ReadVariableOp2J
#hidden_layer1/MatMul/ReadVariableOp#hidden_layer1/MatMul/ReadVariableOp2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?	
?
-__inference_sequential_1_layer_call_fn_402964

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?(
	unknown_4:(
	unknown_5:(
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_402725o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?
?
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_402498

inputs1
matmul_readvariableop_resource:	?(-
biasadd_readvariableop_resource:(
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????(?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?(*
dtype0?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(w
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????(?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_conv_layer1_layer_call_fn_403108

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????c+*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer1_layer_call_and_return_conditional_losses_402425w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????c+`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????c+: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?	
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_403235

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_403223

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_max_pooling2_layer_call_and_return_conditional_losses_403192

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_403267

inputs1
matmul_readvariableop_resource:	?(-
biasadd_readvariableop_resource:(
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????(?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?(*
dtype0?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(w
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????(?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?G
?
__inference__traced_save_403465
file_prefix1
-savev2_conv_layer1_kernel_read_readvariableop/
+savev2_conv_layer1_bias_read_readvariableop1
-savev2_conv_layer2_kernel_read_readvariableop/
+savev2_conv_layer2_bias_read_readvariableop3
/savev2_hidden_layer1_kernel_read_readvariableop1
-savev2_hidden_layer1_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_adam_conv_layer1_kernel_m_read_readvariableop6
2savev2_adam_conv_layer1_bias_m_read_readvariableop8
4savev2_adam_conv_layer2_kernel_m_read_readvariableop6
2savev2_adam_conv_layer2_bias_m_read_readvariableop:
6savev2_adam_hidden_layer1_kernel_m_read_readvariableop8
4savev2_adam_hidden_layer1_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop8
4savev2_adam_conv_layer1_kernel_v_read_readvariableop6
2savev2_adam_conv_layer1_bias_v_read_readvariableop8
4savev2_adam_conv_layer2_kernel_v_read_readvariableop6
2savev2_adam_conv_layer2_bias_v_read_readvariableop:
6savev2_adam_hidden_layer1_kernel_v_read_readvariableop8
4savev2_adam_hidden_layer1_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_conv_layer1_kernel_read_readvariableop+savev2_conv_layer1_bias_read_readvariableop-savev2_conv_layer2_kernel_read_readvariableop+savev2_conv_layer2_bias_read_readvariableop/savev2_hidden_layer1_kernel_read_readvariableop-savev2_hidden_layer1_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_adam_conv_layer1_kernel_m_read_readvariableop2savev2_adam_conv_layer1_bias_m_read_readvariableop4savev2_adam_conv_layer2_kernel_m_read_readvariableop2savev2_adam_conv_layer2_bias_m_read_readvariableop6savev2_adam_hidden_layer1_kernel_m_read_readvariableop4savev2_adam_hidden_layer1_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop4savev2_adam_conv_layer1_kernel_v_read_readvariableop2savev2_adam_conv_layer1_bias_v_read_readvariableop4savev2_adam_conv_layer2_kernel_v_read_readvariableop2savev2_adam_conv_layer2_bias_v_read_readvariableop6savev2_adam_hidden_layer1_kernel_v_read_readvariableop4savev2_adam_hidden_layer1_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::	?(:(:(:: : : : : : : : : :::::	?(:(:(::::::	?(:(:(:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?(: 

_output_shapes
:(:$ 

_output_shapes

:(: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?(: 

_output_shapes
:(:$ 

_output_shapes

:(: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?(: 

_output_shapes
:(:$  

_output_shapes

:(: !

_output_shapes
::"

_output_shapes
: 
?
?
G__inference_conv_layer1_layer_call_and_return_conditional_losses_402425

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?4conv_layer1/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????c+?
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????c+?
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????c+: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?
?
'__inference_output_layer_call_fn_403282

inputs
unknown:(
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_402521o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????(: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
B__inference_output_layer_call_and_return_conditional_losses_403299

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/output/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:??????????
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype0?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
d
H__inference_max_pooling1_layer_call_and_return_conditional_losses_402435

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????1*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????c+:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?
?
.__inference_hidden_layer1_layer_call_fn_403250

inputs
unknown:	?(
	unknown_0:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_402498o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_403574
file_prefix=
#assignvariableop_conv_layer1_kernel:1
#assignvariableop_1_conv_layer1_bias:?
%assignvariableop_2_conv_layer2_kernel:1
#assignvariableop_3_conv_layer2_bias::
'assignvariableop_4_hidden_layer1_kernel:	?(3
%assignvariableop_5_hidden_layer1_bias:(2
 assignvariableop_6_output_kernel:(,
assignvariableop_7_output_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: G
-assignvariableop_17_adam_conv_layer1_kernel_m:9
+assignvariableop_18_adam_conv_layer1_bias_m:G
-assignvariableop_19_adam_conv_layer2_kernel_m:9
+assignvariableop_20_adam_conv_layer2_bias_m:B
/assignvariableop_21_adam_hidden_layer1_kernel_m:	?(;
-assignvariableop_22_adam_hidden_layer1_bias_m:(:
(assignvariableop_23_adam_output_kernel_m:(4
&assignvariableop_24_adam_output_bias_m:G
-assignvariableop_25_adam_conv_layer1_kernel_v:9
+assignvariableop_26_adam_conv_layer1_bias_v:G
-assignvariableop_27_adam_conv_layer2_kernel_v:9
+assignvariableop_28_adam_conv_layer2_bias_v:B
/assignvariableop_29_adam_hidden_layer1_kernel_v:	?(;
-assignvariableop_30_adam_hidden_layer1_bias_v:(:
(assignvariableop_31_adam_output_kernel_v:(4
&assignvariableop_32_adam_output_bias_v:
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp#assignvariableop_conv_layer1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp#assignvariableop_1_conv_layer1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp%assignvariableop_2_conv_layer2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp#assignvariableop_3_conv_layer2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp'assignvariableop_4_hidden_layer1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp%assignvariableop_5_hidden_layer1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp assignvariableop_6_output_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_output_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp-assignvariableop_17_adam_conv_layer1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_conv_layer1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp-assignvariableop_19_adam_conv_layer2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_conv_layer2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_adam_hidden_layer1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp-assignvariableop_22_adam_hidden_layer1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_output_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_output_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp-assignvariableop_25_adam_conv_layer1_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_conv_layer1_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp-assignvariableop_27_adam_conv_layer2_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_conv_layer2_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp/assignvariableop_29_adam_hidden_layer1_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp-assignvariableop_30_adam_hidden_layer1_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_output_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_output_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?

?
-__inference_sequential_1_layer_call_fn_402571
conv_layer1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?(
	unknown_4:(
	unknown_5:(
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_402552o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:?????????c+
+
_user_specified_nameconv_layer1_input
?
?
__inference_loss_fn_1_403321W
=conv_layer2_kernel_regularizer_square_readvariableop_resource:
identity??4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=conv_layer2_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: d
IdentityIdentity&conv_layer2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: }
NoOpNoOp5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp
?D
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_402552

inputs,
conv_layer1_402426: 
conv_layer1_402428:,
conv_layer2_402455: 
conv_layer2_402457:'
hidden_layer1_402499:	?("
hidden_layer1_402501:(
output_402522:(
output_402524:
identity??#conv_layer1/StatefulPartitionedCall?4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?#conv_layer2/StatefulPartitionedCall?4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?%hidden_layer1/StatefulPartitionedCall?6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?/output/kernel/Regularizer/Square/ReadVariableOp?
#conv_layer1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_layer1_402426conv_layer1_402428*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????c+*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer1_layer_call_and_return_conditional_losses_402425?
max_pooling1/PartitionedCallPartitionedCall,conv_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1_layer_call_and_return_conditional_losses_402435?
#conv_layer2/StatefulPartitionedCallStatefulPartitionedCall%max_pooling1/PartitionedCall:output:0conv_layer2_402455conv_layer2_402457*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer2_layer_call_and_return_conditional_losses_402454?
max_pooling2/PartitionedCallPartitionedCall,conv_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2_layer_call_and_return_conditional_losses_402464?
flatten_1/PartitionedCallPartitionedCall%max_pooling2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_402472?
dropout_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_402479?
%hidden_layer1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0hidden_layer1_402499hidden_layer1_402501*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_402498?
output/StatefulPartitionedCallStatefulPartitionedCall.hidden_layer1/StatefulPartitionedCall:output:0output_402522output_402524*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_402521?
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer1_402426*&
_output_shapes
:*
dtype0?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer2_402455*&
_output_shapes
:*
dtype0?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_layer1_402499*
_output_shapes
:	?(*
dtype0?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(w
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_402522*
_output_shapes

:(*
dtype0?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^conv_layer1/StatefulPartitionedCall5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp$^conv_layer2/StatefulPartitionedCall5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp&^hidden_layer1/StatefulPartitionedCall7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 2J
#conv_layer1/StatefulPartitionedCall#conv_layer1/StatefulPartitionedCall2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2J
#conv_layer2/StatefulPartitionedCall#conv_layer2/StatefulPartitionedCall2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2N
%hidden_layer1/StatefulPartitionedCall%hidden_layer1/StatefulPartitionedCall2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?E
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_402817
conv_layer1_input,
conv_layer1_402768: 
conv_layer1_402770:,
conv_layer2_402774: 
conv_layer2_402776:'
hidden_layer1_402782:	?("
hidden_layer1_402784:(
output_402787:(
output_402789:
identity??#conv_layer1/StatefulPartitionedCall?4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?#conv_layer2/StatefulPartitionedCall?4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?%hidden_layer1/StatefulPartitionedCall?6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?output/StatefulPartitionedCall?/output/kernel/Regularizer/Square/ReadVariableOp?
#conv_layer1/StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputconv_layer1_402768conv_layer1_402770*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????c+*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer1_layer_call_and_return_conditional_losses_402425?
max_pooling1/PartitionedCallPartitionedCall,conv_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1_layer_call_and_return_conditional_losses_402435?
#conv_layer2/StatefulPartitionedCallStatefulPartitionedCall%max_pooling1/PartitionedCall:output:0conv_layer2_402774conv_layer2_402776*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_conv_layer2_layer_call_and_return_conditional_losses_402454?
max_pooling2/PartitionedCallPartitionedCall,conv_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2_layer_call_and_return_conditional_losses_402464?
flatten_1/PartitionedCallPartitionedCall%max_pooling2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_402472?
dropout_1/PartitionedCallPartitionedCall"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_402479?
%hidden_layer1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0hidden_layer1_402782hidden_layer1_402784*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_402498?
output/StatefulPartitionedCallStatefulPartitionedCall.hidden_layer1/StatefulPartitionedCall:output:0output_402787output_402789*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_402521?
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer1_402768*&
_output_shapes
:*
dtype0?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer2_402774*&
_output_shapes
:*
dtype0?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_layer1_402782*
_output_shapes
:	?(*
dtype0?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(w
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_402787*
_output_shapes

:(*
dtype0?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^conv_layer1/StatefulPartitionedCall5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp$^conv_layer2/StatefulPartitionedCall5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp&^hidden_layer1/StatefulPartitionedCall7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 2J
#conv_layer1/StatefulPartitionedCall#conv_layer1/StatefulPartitionedCall2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2J
#conv_layer2/StatefulPartitionedCall#conv_layer2/StatefulPartitionedCall2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2N
%hidden_layer1/StatefulPartitionedCall%hidden_layer1/StatefulPartitionedCall2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:b ^
/
_output_shapes
:?????????c+
+
_user_specified_nameconv_layer1_input
?
I
-__inference_max_pooling2_layer_call_fn_403187

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2_layer_call_and_return_conditional_losses_402464h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????1:W S
/
_output_shapes
:?????????1
 
_user_specified_nameinputs
?
F
*__inference_flatten_1_layer_call_fn_403202

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_402472a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?
I
-__inference_max_pooling1_layer_call_fn_403135

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling1_layer_call_and_return_conditional_losses_402435h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????1"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????c+:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?
F
*__inference_dropout_1_layer_call_fn_403213

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_402479a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_403343J
8output_kernel_regularizer_square_readvariableop_resource:(
identity??/output/kernel/Regularizer/Square/ReadVariableOp?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8output_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:(*
dtype0?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentity!output/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_402479

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?V
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_403093

inputsD
*conv_layer1_conv2d_readvariableop_resource:9
+conv_layer1_biasadd_readvariableop_resource:D
*conv_layer2_conv2d_readvariableop_resource:9
+conv_layer2_biasadd_readvariableop_resource:?
,hidden_layer1_matmul_readvariableop_resource:	?(;
-hidden_layer1_biasadd_readvariableop_resource:(7
%output_matmul_readvariableop_resource:(4
&output_biasadd_readvariableop_resource:
identity??"conv_layer1/BiasAdd/ReadVariableOp?!conv_layer1/Conv2D/ReadVariableOp?4conv_layer1/kernel/Regularizer/Square/ReadVariableOp?"conv_layer2/BiasAdd/ReadVariableOp?!conv_layer2/Conv2D/ReadVariableOp?4conv_layer2/kernel/Regularizer/Square/ReadVariableOp?$hidden_layer1/BiasAdd/ReadVariableOp?#hidden_layer1/MatMul/ReadVariableOp?6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOp?/output/kernel/Regularizer/Square/ReadVariableOp?
!conv_layer1/Conv2D/ReadVariableOpReadVariableOp*conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv_layer1/Conv2DConv2Dinputs)conv_layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+*
paddingSAME*
strides
?
"conv_layer1/BiasAdd/ReadVariableOpReadVariableOp+conv_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv_layer1/BiasAddBiasAddconv_layer1/Conv2D:output:0*conv_layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????c+p
conv_layer1/ReluReluconv_layer1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????c+?
max_pooling1/MaxPoolMaxPoolconv_layer1/Relu:activations:0*/
_output_shapes
:?????????1*
ksize
*
paddingVALID*
strides
?
!conv_layer2/Conv2D/ReadVariableOpReadVariableOp*conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv_layer2/Conv2DConv2Dmax_pooling1/MaxPool:output:0)conv_layer2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????1*
paddingSAME*
strides
?
"conv_layer2/BiasAdd/ReadVariableOpReadVariableOp+conv_layer2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv_layer2/BiasAddBiasAddconv_layer2/Conv2D:output:0*conv_layer2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????1p
conv_layer2/ReluReluconv_layer2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????1?
max_pooling2/MaxPoolMaxPoolconv_layer2/Relu:activations:0*/
_output_shapes
:?????????
*
ksize
*
paddingVALID*
strides
`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  ?
flatten_1/ReshapeReshapemax_pooling2/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_1/dropout/MulMulflatten_1/Reshape:output:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:??????????a
dropout_1/dropout/ShapeShapeflatten_1/Reshape:output:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
#hidden_layer1/MatMul/ReadVariableOpReadVariableOp,hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype0?
hidden_layer1/MatMulMatMuldropout_1/dropout/Mul_1:z:0+hidden_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
$hidden_layer1/BiasAdd/ReadVariableOpReadVariableOp-hidden_layer1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
hidden_layer1/BiasAddBiasAddhidden_layer1/MatMul:product:0,hidden_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(l
hidden_layer1/ReluReluhidden_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????(?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0?
output/MatMulMatMul hidden_layer1/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
output/SigmoidSigmoidoutput/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             ?
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp,hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	?(*
dtype0?
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?(w
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0?
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:(p
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityoutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^conv_layer1/BiasAdd/ReadVariableOp"^conv_layer1/Conv2D/ReadVariableOp5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp#^conv_layer2/BiasAdd/ReadVariableOp"^conv_layer2/Conv2D/ReadVariableOp5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp%^hidden_layer1/BiasAdd/ReadVariableOp$^hidden_layer1/MatMul/ReadVariableOp7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 2H
"conv_layer1/BiasAdd/ReadVariableOp"conv_layer1/BiasAdd/ReadVariableOp2F
!conv_layer1/Conv2D/ReadVariableOp!conv_layer1/Conv2D/ReadVariableOp2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2H
"conv_layer2/BiasAdd/ReadVariableOp"conv_layer2/BiasAdd/ReadVariableOp2F
!conv_layer2/Conv2D/ReadVariableOp!conv_layer2/Conv2D/ReadVariableOp2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2L
$hidden_layer1/BiasAdd/ReadVariableOp$hidden_layer1/BiasAdd/ReadVariableOp2J
#hidden_layer1/MatMul/ReadVariableOp#hidden_layer1/MatMul/ReadVariableOp2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????c+
 
_user_specified_nameinputs
?

?
-__inference_sequential_1_layer_call_fn_402765
conv_layer1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	?(
	unknown_4:(
	unknown_5:(
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_402725o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:?????????c+
+
_user_specified_nameconv_layer1_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
W
conv_layer1_inputB
#serving_default_conv_layer1_input:0?????????c+:
output0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ĥ
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
 trainable_variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#	variables
$trainable_variables
%regularization_losses
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
7iter

8beta_1

9beta_2
	:decay
;learning_ratemtmumvmw+mx,my1mz2m{v|v}v~v+v?,v?1v?2v?"
	optimizer
X
0
1
2
3
+4
,5
16
27"
trackable_list_wrapper
X
0
1
2
3
+4
,5
16
27"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics

	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
,:*2conv_layer1/kernel
:2conv_layer1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*2conv_layer2/kernel
:2conv_layer2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
 trainable_variables
!regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
#	variables
$trainable_variables
%regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
'	variables
(trainable_variables
)regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
':%	?(2hidden_layer1/kernel
 :(2hidden_layer1/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
-	variables
.trainable_variables
/regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:(2output/kernel
:2output/bias
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
3	variables
4trainable_variables
5regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	ktotal
	lcount
m	variables
n	keras_api"
_tf_keras_metric
^
	ototal
	pcount
q
_fn_kwargs
r	variables
s	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
k0
l1"
trackable_list_wrapper
-
m	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
o0
p1"
trackable_list_wrapper
-
r	variables"
_generic_user_object
1:/2Adam/conv_layer1/kernel/m
#:!2Adam/conv_layer1/bias/m
1:/2Adam/conv_layer2/kernel/m
#:!2Adam/conv_layer2/bias/m
,:*	?(2Adam/hidden_layer1/kernel/m
%:#(2Adam/hidden_layer1/bias/m
$:"(2Adam/output/kernel/m
:2Adam/output/bias/m
1:/2Adam/conv_layer1/kernel/v
#:!2Adam/conv_layer1/bias/v
1:/2Adam/conv_layer2/kernel/v
#:!2Adam/conv_layer2/bias/v
,:*	?(2Adam/hidden_layer1/kernel/v
%:#(2Adam/hidden_layer1/bias/v
$:"(2Adam/output/kernel/v
:2Adam/output/bias/v
?2?
-__inference_sequential_1_layer_call_fn_402571
-__inference_sequential_1_layer_call_fn_402943
-__inference_sequential_1_layer_call_fn_402964
-__inference_sequential_1_layer_call_fn_402765?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_1_layer_call_and_return_conditional_losses_403025
H__inference_sequential_1_layer_call_and_return_conditional_losses_403093
H__inference_sequential_1_layer_call_and_return_conditional_losses_402817
H__inference_sequential_1_layer_call_and_return_conditional_losses_402869?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_402377conv_layer1_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_conv_layer1_layer_call_fn_403108?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_conv_layer1_layer_call_and_return_conditional_losses_403125?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_max_pooling1_layer_call_fn_403130
-__inference_max_pooling1_layer_call_fn_403135?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_max_pooling1_layer_call_and_return_conditional_losses_403140
H__inference_max_pooling1_layer_call_and_return_conditional_losses_403145?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_conv_layer2_layer_call_fn_403160?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_conv_layer2_layer_call_and_return_conditional_losses_403177?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_max_pooling2_layer_call_fn_403182
-__inference_max_pooling2_layer_call_fn_403187?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_max_pooling2_layer_call_and_return_conditional_losses_403192
H__inference_max_pooling2_layer_call_and_return_conditional_losses_403197?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_flatten_1_layer_call_fn_403202?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_flatten_1_layer_call_and_return_conditional_losses_403208?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dropout_1_layer_call_fn_403213
*__inference_dropout_1_layer_call_fn_403218?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_1_layer_call_and_return_conditional_losses_403223
E__inference_dropout_1_layer_call_and_return_conditional_losses_403235?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_hidden_layer1_layer_call_fn_403250?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_403267?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_output_layer_call_fn_403282?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_output_layer_call_and_return_conditional_losses_403299?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_403310?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_403321?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_403332?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_403343?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
$__inference_signature_wrapper_402922conv_layer1_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_402377+,12B??
8?5
3?0
conv_layer1_input?????????c+
? "/?,
*
output ?
output??????????
G__inference_conv_layer1_layer_call_and_return_conditional_losses_403125l7?4
-?*
(?%
inputs?????????c+
? "-?*
#? 
0?????????c+
? ?
,__inference_conv_layer1_layer_call_fn_403108_7?4
-?*
(?%
inputs?????????c+
? " ??????????c+?
G__inference_conv_layer2_layer_call_and_return_conditional_losses_403177l7?4
-?*
(?%
inputs?????????1
? "-?*
#? 
0?????????1
? ?
,__inference_conv_layer2_layer_call_fn_403160_7?4
-?*
(?%
inputs?????????1
? " ??????????1?
E__inference_dropout_1_layer_call_and_return_conditional_losses_403223^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
E__inference_dropout_1_layer_call_and_return_conditional_losses_403235^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? 
*__inference_dropout_1_layer_call_fn_403213Q4?1
*?'
!?
inputs??????????
p 
? "???????????
*__inference_dropout_1_layer_call_fn_403218Q4?1
*?'
!?
inputs??????????
p
? "????????????
E__inference_flatten_1_layer_call_and_return_conditional_losses_403208a7?4
-?*
(?%
inputs?????????

? "&?#
?
0??????????
? ?
*__inference_flatten_1_layer_call_fn_403202T7?4
-?*
(?%
inputs?????????

? "????????????
I__inference_hidden_layer1_layer_call_and_return_conditional_losses_403267]+,0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????(
? ?
.__inference_hidden_layer1_layer_call_fn_403250P+,0?-
&?#
!?
inputs??????????
? "??????????(;
__inference_loss_fn_0_403310?

? 
? "? ;
__inference_loss_fn_1_403321?

? 
? "? ;
__inference_loss_fn_2_403332+?

? 
? "? ;
__inference_loss_fn_3_4033431?

? 
? "? ?
H__inference_max_pooling1_layer_call_and_return_conditional_losses_403140?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
H__inference_max_pooling1_layer_call_and_return_conditional_losses_403145h7?4
-?*
(?%
inputs?????????c+
? "-?*
#? 
0?????????1
? ?
-__inference_max_pooling1_layer_call_fn_403130?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
-__inference_max_pooling1_layer_call_fn_403135[7?4
-?*
(?%
inputs?????????c+
? " ??????????1?
H__inference_max_pooling2_layer_call_and_return_conditional_losses_403192?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
H__inference_max_pooling2_layer_call_and_return_conditional_losses_403197h7?4
-?*
(?%
inputs?????????1
? "-?*
#? 
0?????????

? ?
-__inference_max_pooling2_layer_call_fn_403182?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
-__inference_max_pooling2_layer_call_fn_403187[7?4
-?*
(?%
inputs?????????1
? " ??????????
?
B__inference_output_layer_call_and_return_conditional_losses_403299\12/?,
%?"
 ?
inputs?????????(
? "%?"
?
0?????????
? z
'__inference_output_layer_call_fn_403282O12/?,
%?"
 ?
inputs?????????(
? "???????????
H__inference_sequential_1_layer_call_and_return_conditional_losses_402817}+,12J?G
@?=
3?0
conv_layer1_input?????????c+
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_402869}+,12J?G
@?=
3?0
conv_layer1_input?????????c+
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_403025r+,12??<
5?2
(?%
inputs?????????c+
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_403093r+,12??<
5?2
(?%
inputs?????????c+
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_1_layer_call_fn_402571p+,12J?G
@?=
3?0
conv_layer1_input?????????c+
p 

 
? "???????????
-__inference_sequential_1_layer_call_fn_402765p+,12J?G
@?=
3?0
conv_layer1_input?????????c+
p

 
? "???????????
-__inference_sequential_1_layer_call_fn_402943e+,12??<
5?2
(?%
inputs?????????c+
p 

 
? "???????????
-__inference_sequential_1_layer_call_fn_402964e+,12??<
5?2
(?%
inputs?????????c+
p

 
? "???????????
$__inference_signature_wrapper_402922?+,12W?T
? 
M?J
H
conv_layer1_input3?0
conv_layer1_input?????????c+"/?,
*
output ?
output?????????