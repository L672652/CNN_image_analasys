ўы	
ђ€
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ы
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
В
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
Ѕ
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
executor_typestring И®
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.10.12v2.10.0-76-gfdfc646704c8«Д
А
Adam/dense_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_25/bias/v
y
(Adam/dense_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/v*
_output_shapes
:
*
dtype0
Й
Adam/dense_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
*'
shared_nameAdam/dense_25/kernel/v
В
*Adam/dense_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/v*
_output_shapes
:	А
*
dtype0
Б
Adam/dense_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_24/bias/v
z
(Adam/dense_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/v*
_output_shapes	
:А*
dtype0
К
Adam/dense_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
јА*'
shared_nameAdam/dense_24/kernel/v
Г
*Adam/dense_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/v* 
_output_shapes
:
јА*
dtype0
В
Adam/conv2d_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_38/bias/v
{
)Adam/conv2d_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/bias/v*
_output_shapes
:*
dtype0
Т
Adam/conv2d_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_38/kernel/v
Л
+Adam/conv2d_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/kernel/v*&
_output_shapes
: *
dtype0
В
Adam/conv2d_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_37/bias/v
{
)Adam/conv2d_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/bias/v*
_output_shapes
: *
dtype0
Т
Adam/conv2d_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_37/kernel/v
Л
+Adam/conv2d_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/kernel/v*&
_output_shapes
: *
dtype0
В
Adam/conv2d_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_36/bias/v
{
)Adam/conv2d_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/bias/v*
_output_shapes
:*
dtype0
Т
Adam/conv2d_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_36/kernel/v
Л
+Adam/conv2d_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/kernel/v*&
_output_shapes
:*
dtype0
А
Adam/dense_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_25/bias/m
y
(Adam/dense_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/m*
_output_shapes
:
*
dtype0
Й
Adam/dense_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
*'
shared_nameAdam/dense_25/kernel/m
В
*Adam/dense_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/m*
_output_shapes
:	А
*
dtype0
Б
Adam/dense_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_24/bias/m
z
(Adam/dense_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/m*
_output_shapes	
:А*
dtype0
К
Adam/dense_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
јА*'
shared_nameAdam/dense_24/kernel/m
Г
*Adam/dense_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/m* 
_output_shapes
:
јА*
dtype0
В
Adam/conv2d_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_38/bias/m
{
)Adam/conv2d_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_38/kernel/m
Л
+Adam/conv2d_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/kernel/m*&
_output_shapes
: *
dtype0
В
Adam/conv2d_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_37/bias/m
{
)Adam/conv2d_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/bias/m*
_output_shapes
: *
dtype0
Т
Adam/conv2d_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_37/kernel/m
Л
+Adam/conv2d_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/kernel/m*&
_output_shapes
: *
dtype0
В
Adam/conv2d_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_36/bias/m
{
)Adam/conv2d_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_36/kernel/m
Л
+Adam/conv2d_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/kernel/m*&
_output_shapes
:*
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
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
:
*
dtype0
{
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
* 
shared_namedense_25/kernel
t
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel*
_output_shapes
:	А
*
dtype0
s
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_24/bias
l
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes	
:А*
dtype0
|
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
јА* 
shared_namedense_24/kernel
u
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel* 
_output_shapes
:
јА*
dtype0
t
conv2d_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_38/bias
m
"conv2d_38/bias/Read/ReadVariableOpReadVariableOpconv2d_38/bias*
_output_shapes
:*
dtype0
Д
conv2d_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_38/kernel
}
$conv2d_38/kernel/Read/ReadVariableOpReadVariableOpconv2d_38/kernel*&
_output_shapes
: *
dtype0
t
conv2d_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_37/bias
m
"conv2d_37/bias/Read/ReadVariableOpReadVariableOpconv2d_37/bias*
_output_shapes
: *
dtype0
Д
conv2d_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_37/kernel
}
$conv2d_37/kernel/Read/ReadVariableOpReadVariableOpconv2d_37/kernel*&
_output_shapes
: *
dtype0
t
conv2d_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_36/bias
m
"conv2d_36/bias/Read/ReadVariableOpReadVariableOpconv2d_36/bias*
_output_shapes
:*
dtype0
Д
conv2d_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_36/kernel
}
$conv2d_36/kernel/Read/ReadVariableOpReadVariableOpconv2d_36/kernel*&
_output_shapes
:*
dtype0
Т
serving_default_conv2d_36_inputPlaceholder*/
_output_shapes
:€€€€€€€€€@@*
dtype0*$
shape:€€€€€€€€€@@
ч
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_36_inputconv2d_36/kernelconv2d_36/biasconv2d_37/kernelconv2d_37/biasconv2d_38/kernelconv2d_38/biasdense_24/kerneldense_24/biasdense_25/kerneldense_25/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_877391

NoOpNoOp
ХV
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*–U
value∆UB√U BЉU
√
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
О
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
»
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op*
О
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses* 
»
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op*
О
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 
О
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses* 
¶
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias*
¶
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias*
J
0
1
(2
)3
74
85
L6
M7
T8
U9*
J
0
1
(2
)3
74
85
L6
M7
T8
U9*
* 
∞
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
[trace_0
\trace_1
]trace_2
^trace_3* 
6
_trace_0
`trace_1
atrace_2
btrace_3* 
* 
М
citer

dbeta_1

ebeta_2
	fdecay
glearning_ratem≥mі(mµ)mґ7mЈ8mЄLmєMmЇTmїUmЉvљvЊ(vњ)vј7vЅ8v¬Lv√MvƒTv≈Uv∆*

hserving_default* 

0
1*

0
1*
* 
У
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ntrace_0* 

otrace_0* 
`Z
VARIABLE_VALUEconv2d_36/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_36/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
С
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 

utrace_0* 

vtrace_0* 

(0
)1*

(0
)1*
* 
У
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

|trace_0* 

}trace_0* 
`Z
VARIABLE_VALUEconv2d_37/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_37/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ф
~non_trainable_variables

layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

Гtrace_0* 

Дtrace_0* 

70
81*

70
81*
* 
Ш
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

Кtrace_0* 

Лtrace_0* 
`Z
VARIABLE_VALUEconv2d_38/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_38/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

Сtrace_0* 

Тtrace_0* 
* 
* 
* 
Ц
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 

Шtrace_0* 

Щtrace_0* 

L0
M1*

L0
M1*
* 
Ш
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

Яtrace_0* 

†trace_0* 
_Y
VARIABLE_VALUEdense_24/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_24/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

T0
U1*

T0
U1*
* 
Ш
°non_trainable_variables
Ґlayers
£metrics
 §layer_regularization_losses
•layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*

¶trace_0* 

Іtrace_0* 
_Y
VARIABLE_VALUEdense_25/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_25/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*

®0
©1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
™	variables
Ђ	keras_api

ђtotal

≠count*
M
Ѓ	variables
ѓ	keras_api

∞total

±count
≤
_fn_kwargs*

ђ0
≠1*

™	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

∞0
±1*

Ѓ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
Г}
VARIABLE_VALUEAdam/conv2d_36/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_36/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_37/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_37/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_38/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_38/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_24/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_24/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_25/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_25/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_36/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_36/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_37/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_37/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_38/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_38/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_24/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_24/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_25/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_25/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
і
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_36/kernel/Read/ReadVariableOp"conv2d_36/bias/Read/ReadVariableOp$conv2d_37/kernel/Read/ReadVariableOp"conv2d_37/bias/Read/ReadVariableOp$conv2d_38/kernel/Read/ReadVariableOp"conv2d_38/bias/Read/ReadVariableOp#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv2d_36/kernel/m/Read/ReadVariableOp)Adam/conv2d_36/bias/m/Read/ReadVariableOp+Adam/conv2d_37/kernel/m/Read/ReadVariableOp)Adam/conv2d_37/bias/m/Read/ReadVariableOp+Adam/conv2d_38/kernel/m/Read/ReadVariableOp)Adam/conv2d_38/bias/m/Read/ReadVariableOp*Adam/dense_24/kernel/m/Read/ReadVariableOp(Adam/dense_24/bias/m/Read/ReadVariableOp*Adam/dense_25/kernel/m/Read/ReadVariableOp(Adam/dense_25/bias/m/Read/ReadVariableOp+Adam/conv2d_36/kernel/v/Read/ReadVariableOp)Adam/conv2d_36/bias/v/Read/ReadVariableOp+Adam/conv2d_37/kernel/v/Read/ReadVariableOp)Adam/conv2d_37/bias/v/Read/ReadVariableOp+Adam/conv2d_38/kernel/v/Read/ReadVariableOp)Adam/conv2d_38/bias/v/Read/ReadVariableOp*Adam/dense_24/kernel/v/Read/ReadVariableOp(Adam/dense_24/bias/v/Read/ReadVariableOp*Adam/dense_25/kernel/v/Read/ReadVariableOp(Adam/dense_25/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
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
GPU2*0J 8В *(
f#R!
__inference__traced_save_877810
£
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_36/kernelconv2d_36/biasconv2d_37/kernelconv2d_37/biasconv2d_38/kernelconv2d_38/biasdense_24/kerneldense_24/biasdense_25/kerneldense_25/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_36/kernel/mAdam/conv2d_36/bias/mAdam/conv2d_37/kernel/mAdam/conv2d_37/bias/mAdam/conv2d_38/kernel/mAdam/conv2d_38/bias/mAdam/dense_24/kernel/mAdam/dense_24/bias/mAdam/dense_25/kernel/mAdam/dense_25/bias/mAdam/conv2d_36/kernel/vAdam/conv2d_36/bias/vAdam/conv2d_37/kernel/vAdam/conv2d_37/bias/vAdam/conv2d_38/kernel/vAdam/conv2d_38/bias/vAdam/dense_24/kernel/vAdam/dense_24/bias/vAdam/dense_25/kernel/vAdam/dense_25/bias/v*3
Tin,
*2(*
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
GPU2*0J 8В *+
f&R$
"__inference__traced_restore_877937±∆
І

ш
D__inference_dense_24_layer_call_and_return_conditional_losses_877081

inputs2
matmul_readvariableop_resource:
јА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
јА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
п
Я
*__inference_conv2d_36_layer_call_fn_877538

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_877019w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€>>`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
љ
M
1__inference_max_pooling2d_37_layer_call_fn_877584

inputs
identityЁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_876986Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Х(
Ж
I__inference_sequential_12_layer_call_and_return_conditional_losses_877244

inputs*
conv2d_36_877214:
conv2d_36_877216:*
conv2d_37_877220: 
conv2d_37_877222: *
conv2d_38_877226: 
conv2d_38_877228:#
dense_24_877233:
јА
dense_24_877235:	А"
dense_25_877238:	А

dense_25_877240:

identityИҐ!conv2d_36/StatefulPartitionedCallҐ!conv2d_37/StatefulPartitionedCallҐ!conv2d_38/StatefulPartitionedCallҐ dense_24/StatefulPartitionedCallҐ dense_25/StatefulPartitionedCall€
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_36_877214conv2d_36_877216*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_877019ч
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_876974Ґ
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_37_877220conv2d_37_877222*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_877037ч
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_876986Ґ
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_38_877226conv2d_38_877228*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_38_layer_call_and_return_conditional_losses_877055ч
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_876998г
flatten_12/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_877068С
 dense_24/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_24_877233dense_24_877235*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_877081Ц
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_877238dense_25_877240*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_877098x
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
ш
NoOpNoOp"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€@@: : : : : : : : : : 2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
Ћ

П
.__inference_sequential_12_layer_call_fn_877416

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:
јА
	unknown_6:	А
	unknown_7:	А

	unknown_8:

identityИҐStatefulPartitionedCall…
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_877105o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€@@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
Е
ю
E__inference_conv2d_37_layer_call_and_return_conditional_losses_877037

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≈5
Ю
I__inference_sequential_12_layer_call_and_return_conditional_losses_877529

inputsB
(conv2d_36_conv2d_readvariableop_resource:7
)conv2d_36_biasadd_readvariableop_resource:B
(conv2d_37_conv2d_readvariableop_resource: 7
)conv2d_37_biasadd_readvariableop_resource: B
(conv2d_38_conv2d_readvariableop_resource: 7
)conv2d_38_biasadd_readvariableop_resource:;
'dense_24_matmul_readvariableop_resource:
јА7
(dense_24_biasadd_readvariableop_resource:	А:
'dense_25_matmul_readvariableop_resource:	А
6
(dense_25_biasadd_readvariableop_resource:

identityИҐ conv2d_36/BiasAdd/ReadVariableOpҐconv2d_36/Conv2D/ReadVariableOpҐ conv2d_37/BiasAdd/ReadVariableOpҐconv2d_37/Conv2D/ReadVariableOpҐ conv2d_38/BiasAdd/ReadVariableOpҐconv2d_38/Conv2D/ReadVariableOpҐdense_24/BiasAdd/ReadVariableOpҐdense_24/MatMul/ReadVariableOpҐdense_25/BiasAdd/ReadVariableOpҐdense_25/MatMul/ReadVariableOpР
conv2d_36/Conv2D/ReadVariableOpReadVariableOp(conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ѓ
conv2d_36/Conv2DConv2Dinputs'conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€>>*
paddingVALID*
strides
Ж
 conv2d_36/BiasAdd/ReadVariableOpReadVariableOp)conv2d_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_36/BiasAddBiasAddconv2d_36/Conv2D:output:0(conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€>>l
conv2d_36/ReluReluconv2d_36/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€>>Ѓ
max_pooling2d_36/MaxPoolMaxPoolconv2d_36/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
Р
conv2d_37/Conv2D/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0…
conv2d_37/Conv2DConv2D!max_pooling2d_36/MaxPool:output:0'conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
Ж
 conv2d_37/BiasAdd/ReadVariableOpReadVariableOp)conv2d_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ы
conv2d_37/BiasAddBiasAddconv2d_37/Conv2D:output:0(conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ l
conv2d_37/ReluReluconv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ Ѓ
max_pooling2d_37/MaxPoolMaxPoolconv2d_37/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
Р
conv2d_38/Conv2D/ReadVariableOpReadVariableOp(conv2d_38_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0…
conv2d_38/Conv2DConv2D!max_pooling2d_37/MaxPool:output:0'conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
Ж
 conv2d_38/BiasAdd/ReadVariableOpReadVariableOp)conv2d_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_38/BiasAddBiasAddconv2d_38/Conv2D:output:0(conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€l
conv2d_38/ReluReluconv2d_38/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ѓ
max_pooling2d_38/MaxPoolMaxPoolconv2d_38/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
a
flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@  О
flatten_12/ReshapeReshape!max_pooling2d_38/MaxPool:output:0flatten_12/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€јИ
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource* 
_output_shapes
:
јА*
dtype0С
dense_24/MatMulMatMulflatten_12/Reshape:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype0Р
dense_25/MatMulMatMuldense_24/Relu:activations:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
Д
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0С
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
h
dense_25/SoftmaxSoftmaxdense_25/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
i
IdentityIdentitydense_25/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
Ы
NoOpNoOp!^conv2d_36/BiasAdd/ReadVariableOp ^conv2d_36/Conv2D/ReadVariableOp!^conv2d_37/BiasAdd/ReadVariableOp ^conv2d_37/Conv2D/ReadVariableOp!^conv2d_38/BiasAdd/ReadVariableOp ^conv2d_38/Conv2D/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€@@: : : : : : : : : : 2D
 conv2d_36/BiasAdd/ReadVariableOp conv2d_36/BiasAdd/ReadVariableOp2B
conv2d_36/Conv2D/ReadVariableOpconv2d_36/Conv2D/ReadVariableOp2D
 conv2d_37/BiasAdd/ReadVariableOp conv2d_37/BiasAdd/ReadVariableOp2B
conv2d_37/Conv2D/ReadVariableOpconv2d_37/Conv2D/ReadVariableOp2D
 conv2d_38/BiasAdd/ReadVariableOp conv2d_38/BiasAdd/ReadVariableOp2B
conv2d_38/Conv2D/ReadVariableOpconv2d_38/Conv2D/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_876986

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≈5
Ю
I__inference_sequential_12_layer_call_and_return_conditional_losses_877485

inputsB
(conv2d_36_conv2d_readvariableop_resource:7
)conv2d_36_biasadd_readvariableop_resource:B
(conv2d_37_conv2d_readvariableop_resource: 7
)conv2d_37_biasadd_readvariableop_resource: B
(conv2d_38_conv2d_readvariableop_resource: 7
)conv2d_38_biasadd_readvariableop_resource:;
'dense_24_matmul_readvariableop_resource:
јА7
(dense_24_biasadd_readvariableop_resource:	А:
'dense_25_matmul_readvariableop_resource:	А
6
(dense_25_biasadd_readvariableop_resource:

identityИҐ conv2d_36/BiasAdd/ReadVariableOpҐconv2d_36/Conv2D/ReadVariableOpҐ conv2d_37/BiasAdd/ReadVariableOpҐconv2d_37/Conv2D/ReadVariableOpҐ conv2d_38/BiasAdd/ReadVariableOpҐconv2d_38/Conv2D/ReadVariableOpҐdense_24/BiasAdd/ReadVariableOpҐdense_24/MatMul/ReadVariableOpҐdense_25/BiasAdd/ReadVariableOpҐdense_25/MatMul/ReadVariableOpР
conv2d_36/Conv2D/ReadVariableOpReadVariableOp(conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ѓ
conv2d_36/Conv2DConv2Dinputs'conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€>>*
paddingVALID*
strides
Ж
 conv2d_36/BiasAdd/ReadVariableOpReadVariableOp)conv2d_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_36/BiasAddBiasAddconv2d_36/Conv2D:output:0(conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€>>l
conv2d_36/ReluReluconv2d_36/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€>>Ѓ
max_pooling2d_36/MaxPoolMaxPoolconv2d_36/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
Р
conv2d_37/Conv2D/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0…
conv2d_37/Conv2DConv2D!max_pooling2d_36/MaxPool:output:0'conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
Ж
 conv2d_37/BiasAdd/ReadVariableOpReadVariableOp)conv2d_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ы
conv2d_37/BiasAddBiasAddconv2d_37/Conv2D:output:0(conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ l
conv2d_37/ReluReluconv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ Ѓ
max_pooling2d_37/MaxPoolMaxPoolconv2d_37/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
Р
conv2d_38/Conv2D/ReadVariableOpReadVariableOp(conv2d_38_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0…
conv2d_38/Conv2DConv2D!max_pooling2d_37/MaxPool:output:0'conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
Ж
 conv2d_38/BiasAdd/ReadVariableOpReadVariableOp)conv2d_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_38/BiasAddBiasAddconv2d_38/Conv2D:output:0(conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€l
conv2d_38/ReluReluconv2d_38/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ѓ
max_pooling2d_38/MaxPoolMaxPoolconv2d_38/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
a
flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@  О
flatten_12/ReshapeReshape!max_pooling2d_38/MaxPool:output:0flatten_12/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€јИ
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource* 
_output_shapes
:
јА*
dtype0С
dense_24/MatMulMatMulflatten_12/Reshape:output:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype0Р
dense_25/MatMulMatMuldense_24/Relu:activations:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
Д
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0С
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
h
dense_25/SoftmaxSoftmaxdense_25/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
i
IdentityIdentitydense_25/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
Ы
NoOpNoOp!^conv2d_36/BiasAdd/ReadVariableOp ^conv2d_36/Conv2D/ReadVariableOp!^conv2d_37/BiasAdd/ReadVariableOp ^conv2d_37/Conv2D/ReadVariableOp!^conv2d_38/BiasAdd/ReadVariableOp ^conv2d_38/Conv2D/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€@@: : : : : : : : : : 2D
 conv2d_36/BiasAdd/ReadVariableOp conv2d_36/BiasAdd/ReadVariableOp2B
conv2d_36/Conv2D/ReadVariableOpconv2d_36/Conv2D/ReadVariableOp2D
 conv2d_37/BiasAdd/ReadVariableOp conv2d_37/BiasAdd/ReadVariableOp2B
conv2d_37/Conv2D/ReadVariableOpconv2d_37/Conv2D/ReadVariableOp2D
 conv2d_38/BiasAdd/ReadVariableOp conv2d_38/BiasAdd/ReadVariableOp2B
conv2d_38/Conv2D/ReadVariableOpconv2d_38/Conv2D/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
§

ц
D__inference_dense_25_layer_call_and_return_conditional_losses_877670

inputs1
matmul_readvariableop_resource:	А
-
biasadd_readvariableop_resource:

identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
»
Ч
)__inference_dense_25_layer_call_fn_877659

inputs
unknown:	А

	unknown_0:

identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_877098o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Е
ю
E__inference_conv2d_37_layer_call_and_return_conditional_losses_877579

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
»
b
F__inference_flatten_12_layer_call_and_return_conditional_losses_877630

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
∞(
П
I__inference_sequential_12_layer_call_and_return_conditional_losses_877325
conv2d_36_input*
conv2d_36_877295:
conv2d_36_877297:*
conv2d_37_877301: 
conv2d_37_877303: *
conv2d_38_877307: 
conv2d_38_877309:#
dense_24_877314:
јА
dense_24_877316:	А"
dense_25_877319:	А

dense_25_877321:

identityИҐ!conv2d_36/StatefulPartitionedCallҐ!conv2d_37/StatefulPartitionedCallҐ!conv2d_38/StatefulPartitionedCallҐ dense_24/StatefulPartitionedCallҐ dense_25/StatefulPartitionedCallИ
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallconv2d_36_inputconv2d_36_877295conv2d_36_877297*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_877019ч
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_876974Ґ
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_37_877301conv2d_37_877303*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_877037ч
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_876986Ґ
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_38_877307conv2d_38_877309*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_38_layer_call_and_return_conditional_losses_877055ч
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_876998г
flatten_12/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_877068С
 dense_24/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_24_877314dense_24_877316*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_877081Ц
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_877319dense_25_877321*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_877098x
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
ш
NoOpNoOp"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€@@: : : : : : : : : : 2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€@@
)
_user_specified_nameconv2d_36_input
Ф
h
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_877619

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ж

Ш
.__inference_sequential_12_layer_call_fn_877292
conv2d_36_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:
јА
	unknown_6:	А
	unknown_7:	А

	unknown_8:

identityИҐStatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallconv2d_36_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_877244o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€@@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€@@
)
_user_specified_nameconv2d_36_input
њЬ
И
"__inference__traced_restore_877937
file_prefix;
!assignvariableop_conv2d_36_kernel:/
!assignvariableop_1_conv2d_36_bias:=
#assignvariableop_2_conv2d_37_kernel: /
!assignvariableop_3_conv2d_37_bias: =
#assignvariableop_4_conv2d_38_kernel: /
!assignvariableop_5_conv2d_38_bias:6
"assignvariableop_6_dense_24_kernel:
јА/
 assignvariableop_7_dense_24_bias:	А5
"assignvariableop_8_dense_25_kernel:	А
.
 assignvariableop_9_dense_25_bias:
'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: #
assignvariableop_17_total: #
assignvariableop_18_count: E
+assignvariableop_19_adam_conv2d_36_kernel_m:7
)assignvariableop_20_adam_conv2d_36_bias_m:E
+assignvariableop_21_adam_conv2d_37_kernel_m: 7
)assignvariableop_22_adam_conv2d_37_bias_m: E
+assignvariableop_23_adam_conv2d_38_kernel_m: 7
)assignvariableop_24_adam_conv2d_38_bias_m:>
*assignvariableop_25_adam_dense_24_kernel_m:
јА7
(assignvariableop_26_adam_dense_24_bias_m:	А=
*assignvariableop_27_adam_dense_25_kernel_m:	А
6
(assignvariableop_28_adam_dense_25_bias_m:
E
+assignvariableop_29_adam_conv2d_36_kernel_v:7
)assignvariableop_30_adam_conv2d_36_bias_v:E
+assignvariableop_31_adam_conv2d_37_kernel_v: 7
)assignvariableop_32_adam_conv2d_37_bias_v: E
+assignvariableop_33_adam_conv2d_38_kernel_v: 7
)assignvariableop_34_adam_conv2d_38_bias_v:>
*assignvariableop_35_adam_dense_24_kernel_v:
јА7
(assignvariableop_36_adam_dense_24_bias_v:	А=
*assignvariableop_37_adam_dense_25_kernel_v:	А
6
(assignvariableop_38_adam_dense_25_bias_v:

identity_40ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9м
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*Т
valueИBЕ(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHј
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B й
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ґ
_output_shapes£
†::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_36_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_36_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_37_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_37_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_38_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_38_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_24_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_24_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_25_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_25_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_conv2d_36_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_conv2d_36_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_conv2d_37_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_conv2d_37_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_conv2d_38_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_conv2d_38_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_24_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_24_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_25_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_25_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_36_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_36_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_37_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_37_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_38_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_38_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_24_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_24_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_25_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_25_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ©
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: Ц
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
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
ћB
Ч

!__inference__wrapped_model_876965
conv2d_36_inputP
6sequential_12_conv2d_36_conv2d_readvariableop_resource:E
7sequential_12_conv2d_36_biasadd_readvariableop_resource:P
6sequential_12_conv2d_37_conv2d_readvariableop_resource: E
7sequential_12_conv2d_37_biasadd_readvariableop_resource: P
6sequential_12_conv2d_38_conv2d_readvariableop_resource: E
7sequential_12_conv2d_38_biasadd_readvariableop_resource:I
5sequential_12_dense_24_matmul_readvariableop_resource:
јАE
6sequential_12_dense_24_biasadd_readvariableop_resource:	АH
5sequential_12_dense_25_matmul_readvariableop_resource:	А
D
6sequential_12_dense_25_biasadd_readvariableop_resource:

identityИҐ.sequential_12/conv2d_36/BiasAdd/ReadVariableOpҐ-sequential_12/conv2d_36/Conv2D/ReadVariableOpҐ.sequential_12/conv2d_37/BiasAdd/ReadVariableOpҐ-sequential_12/conv2d_37/Conv2D/ReadVariableOpҐ.sequential_12/conv2d_38/BiasAdd/ReadVariableOpҐ-sequential_12/conv2d_38/Conv2D/ReadVariableOpҐ-sequential_12/dense_24/BiasAdd/ReadVariableOpҐ,sequential_12/dense_24/MatMul/ReadVariableOpҐ-sequential_12/dense_25/BiasAdd/ReadVariableOpҐ,sequential_12/dense_25/MatMul/ReadVariableOpђ
-sequential_12/conv2d_36/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0”
sequential_12/conv2d_36/Conv2DConv2Dconv2d_36_input5sequential_12/conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€>>*
paddingVALID*
strides
Ґ
.sequential_12/conv2d_36/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0≈
sequential_12/conv2d_36/BiasAddBiasAdd'sequential_12/conv2d_36/Conv2D:output:06sequential_12/conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€>>И
sequential_12/conv2d_36/ReluRelu(sequential_12/conv2d_36/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€>> 
&sequential_12/max_pooling2d_36/MaxPoolMaxPool*sequential_12/conv2d_36/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
ђ
-sequential_12/conv2d_37/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0у
sequential_12/conv2d_37/Conv2DConv2D/sequential_12/max_pooling2d_36/MaxPool:output:05sequential_12/conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
Ґ
.sequential_12/conv2d_37/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0≈
sequential_12/conv2d_37/BiasAddBiasAdd'sequential_12/conv2d_37/Conv2D:output:06sequential_12/conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ И
sequential_12/conv2d_37/ReluRelu(sequential_12/conv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  
&sequential_12/max_pooling2d_37/MaxPoolMaxPool*sequential_12/conv2d_37/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
ђ
-sequential_12/conv2d_38/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_38_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0у
sequential_12/conv2d_38/Conv2DConv2D/sequential_12/max_pooling2d_37/MaxPool:output:05sequential_12/conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
Ґ
.sequential_12/conv2d_38/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0≈
sequential_12/conv2d_38/BiasAddBiasAdd'sequential_12/conv2d_38/Conv2D:output:06sequential_12/conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€И
sequential_12/conv2d_38/ReluRelu(sequential_12/conv2d_38/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 
&sequential_12/max_pooling2d_38/MaxPoolMaxPool*sequential_12/conv2d_38/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
o
sequential_12/flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@  Є
 sequential_12/flatten_12/ReshapeReshape/sequential_12/max_pooling2d_38/MaxPool:output:0'sequential_12/flatten_12/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј§
,sequential_12/dense_24/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_24_matmul_readvariableop_resource* 
_output_shapes
:
јА*
dtype0ї
sequential_12/dense_24/MatMulMatMul)sequential_12/flatten_12/Reshape:output:04sequential_12/dense_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А°
-sequential_12/dense_24/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_24_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
sequential_12/dense_24/BiasAddBiasAdd'sequential_12/dense_24/MatMul:product:05sequential_12/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А
sequential_12/dense_24/ReluRelu'sequential_12/dense_24/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А£
,sequential_12/dense_25/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_25_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype0Ї
sequential_12/dense_25/MatMulMatMul)sequential_12/dense_24/Relu:activations:04sequential_12/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
†
-sequential_12/dense_25/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_25_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0ї
sequential_12/dense_25/BiasAddBiasAdd'sequential_12/dense_25/MatMul:product:05sequential_12/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
Д
sequential_12/dense_25/SoftmaxSoftmax'sequential_12/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
w
IdentityIdentity(sequential_12/dense_25/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
І
NoOpNoOp/^sequential_12/conv2d_36/BiasAdd/ReadVariableOp.^sequential_12/conv2d_36/Conv2D/ReadVariableOp/^sequential_12/conv2d_37/BiasAdd/ReadVariableOp.^sequential_12/conv2d_37/Conv2D/ReadVariableOp/^sequential_12/conv2d_38/BiasAdd/ReadVariableOp.^sequential_12/conv2d_38/Conv2D/ReadVariableOp.^sequential_12/dense_24/BiasAdd/ReadVariableOp-^sequential_12/dense_24/MatMul/ReadVariableOp.^sequential_12/dense_25/BiasAdd/ReadVariableOp-^sequential_12/dense_25/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€@@: : : : : : : : : : 2`
.sequential_12/conv2d_36/BiasAdd/ReadVariableOp.sequential_12/conv2d_36/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_36/Conv2D/ReadVariableOp-sequential_12/conv2d_36/Conv2D/ReadVariableOp2`
.sequential_12/conv2d_37/BiasAdd/ReadVariableOp.sequential_12/conv2d_37/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_37/Conv2D/ReadVariableOp-sequential_12/conv2d_37/Conv2D/ReadVariableOp2`
.sequential_12/conv2d_38/BiasAdd/ReadVariableOp.sequential_12/conv2d_38/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_38/Conv2D/ReadVariableOp-sequential_12/conv2d_38/Conv2D/ReadVariableOp2^
-sequential_12/dense_24/BiasAdd/ReadVariableOp-sequential_12/dense_24/BiasAdd/ReadVariableOp2\
,sequential_12/dense_24/MatMul/ReadVariableOp,sequential_12/dense_24/MatMul/ReadVariableOp2^
-sequential_12/dense_25/BiasAdd/ReadVariableOp-sequential_12/dense_25/BiasAdd/ReadVariableOp2\
,sequential_12/dense_25/MatMul/ReadVariableOp,sequential_12/dense_25/MatMul/ReadVariableOp:` \
/
_output_shapes
:€€€€€€€€€@@
)
_user_specified_nameconv2d_36_input
Ф
h
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_876974

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Е
ю
E__inference_conv2d_38_layer_call_and_return_conditional_losses_877609

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ж

Ш
.__inference_sequential_12_layer_call_fn_877128
conv2d_36_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:
јА
	unknown_6:	А
	unknown_7:	А

	unknown_8:

identityИҐStatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallconv2d_36_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_877105o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€@@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€@@
)
_user_specified_nameconv2d_36_input
і

О
$__inference_signature_wrapper_877391
conv2d_36_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:
јА
	unknown_6:	А
	unknown_7:	А

	unknown_8:

identityИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallconv2d_36_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_876965o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€@@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€@@
)
_user_specified_nameconv2d_36_input
∞(
П
I__inference_sequential_12_layer_call_and_return_conditional_losses_877358
conv2d_36_input*
conv2d_36_877328:
conv2d_36_877330:*
conv2d_37_877334: 
conv2d_37_877336: *
conv2d_38_877340: 
conv2d_38_877342:#
dense_24_877347:
јА
dense_24_877349:	А"
dense_25_877352:	А

dense_25_877354:

identityИҐ!conv2d_36/StatefulPartitionedCallҐ!conv2d_37/StatefulPartitionedCallҐ!conv2d_38/StatefulPartitionedCallҐ dense_24/StatefulPartitionedCallҐ dense_25/StatefulPartitionedCallИ
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallconv2d_36_inputconv2d_36_877328conv2d_36_877330*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_877019ч
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_876974Ґ
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_37_877334conv2d_37_877336*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_877037ч
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_876986Ґ
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_38_877340conv2d_38_877342*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_38_layer_call_and_return_conditional_losses_877055ч
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_876998г
flatten_12/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_877068С
 dense_24/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_24_877347dense_24_877349*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_877081Ц
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_877352dense_25_877354*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_877098x
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
ш
NoOpNoOp"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€@@: : : : : : : : : : 2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall:` \
/
_output_shapes
:€€€€€€€€€@@
)
_user_specified_nameconv2d_36_input
ћ
Щ
)__inference_dense_24_layer_call_fn_877639

inputs
unknown:
јА
	unknown_0:	А
identityИҐStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_877081p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
Х(
Ж
I__inference_sequential_12_layer_call_and_return_conditional_losses_877105

inputs*
conv2d_36_877020:
conv2d_36_877022:*
conv2d_37_877038: 
conv2d_37_877040: *
conv2d_38_877056: 
conv2d_38_877058:#
dense_24_877082:
јА
dense_24_877084:	А"
dense_25_877099:	А

dense_25_877101:

identityИҐ!conv2d_36/StatefulPartitionedCallҐ!conv2d_37/StatefulPartitionedCallҐ!conv2d_38/StatefulPartitionedCallҐ dense_24/StatefulPartitionedCallҐ dense_25/StatefulPartitionedCall€
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_36_877020conv2d_36_877022*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€>>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_36_layer_call_and_return_conditional_losses_877019ч
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_876974Ґ
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_37_877038conv2d_37_877040*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_877037ч
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_876986Ґ
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_38_877056conv2d_38_877058*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_38_layer_call_and_return_conditional_losses_877055ч
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_876998г
flatten_12/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_877068С
 dense_24/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_24_877082dense_24_877084*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_24_layer_call_and_return_conditional_losses_877081Ц
 dense_25/StatefulPartitionedCallStatefulPartitionedCall)dense_24/StatefulPartitionedCall:output:0dense_25_877099dense_25_877101*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_877098x
IdentityIdentity)dense_25/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
ш
NoOpNoOp"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall!^dense_25/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€@@: : : : : : : : : : 2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
љ
M
1__inference_max_pooling2d_36_layer_call_fn_877554

inputs
identityЁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_876974Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ћ

П
.__inference_sequential_12_layer_call_fn_877441

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:
јА
	unknown_6:	А
	unknown_7:	А

	unknown_8:

identityИҐStatefulPartitionedCall…
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_877244o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€@@: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
п
Я
*__inference_conv2d_37_layer_call_fn_877568

inputs!
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_37_layer_call_and_return_conditional_losses_877037w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
п
Я
*__inference_conv2d_38_layer_call_fn_877598

inputs!
unknown: 
	unknown_0:
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_38_layer_call_and_return_conditional_losses_877055w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Е
ю
E__inference_conv2d_36_layer_call_and_return_conditional_losses_877549

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€>>*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€>>X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€>>i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€>>w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
§

ц
D__inference_dense_25_layer_call_and_return_conditional_losses_877098

inputs1
matmul_readvariableop_resource:	А
-
biasadd_readvariableop_resource:

identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ґ
G
+__inference_flatten_12_layer_call_fn_877624

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_877068a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
І

ш
D__inference_dense_24_layer_call_and_return_conditional_losses_877650

inputs2
matmul_readvariableop_resource:
јА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
јА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_876998

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_877559

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_877589

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
»
b
F__inference_flatten_12_layer_call_and_return_conditional_losses_877068

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
цQ
И
__inference__traced_save_877810
file_prefix/
+savev2_conv2d_36_kernel_read_readvariableop-
)savev2_conv2d_36_bias_read_readvariableop/
+savev2_conv2d_37_kernel_read_readvariableop-
)savev2_conv2d_37_bias_read_readvariableop/
+savev2_conv2d_38_kernel_read_readvariableop-
)savev2_conv2d_38_bias_read_readvariableop.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv2d_36_kernel_m_read_readvariableop4
0savev2_adam_conv2d_36_bias_m_read_readvariableop6
2savev2_adam_conv2d_37_kernel_m_read_readvariableop4
0savev2_adam_conv2d_37_bias_m_read_readvariableop6
2savev2_adam_conv2d_38_kernel_m_read_readvariableop4
0savev2_adam_conv2d_38_bias_m_read_readvariableop5
1savev2_adam_dense_24_kernel_m_read_readvariableop3
/savev2_adam_dense_24_bias_m_read_readvariableop5
1savev2_adam_dense_25_kernel_m_read_readvariableop3
/savev2_adam_dense_25_bias_m_read_readvariableop6
2savev2_adam_conv2d_36_kernel_v_read_readvariableop4
0savev2_adam_conv2d_36_bias_v_read_readvariableop6
2savev2_adam_conv2d_37_kernel_v_read_readvariableop4
0savev2_adam_conv2d_37_bias_v_read_readvariableop6
2savev2_adam_conv2d_38_kernel_v_read_readvariableop4
0savev2_adam_conv2d_38_bias_v_read_readvariableop5
1savev2_adam_dense_24_kernel_v_read_readvariableop3
/savev2_adam_dense_24_bias_v_read_readvariableop5
1savev2_adam_dense_25_kernel_v_read_readvariableop3
/savev2_adam_dense_25_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: й
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*Т
valueИBЕ(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHљ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B „
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_36_kernel_read_readvariableop)savev2_conv2d_36_bias_read_readvariableop+savev2_conv2d_37_kernel_read_readvariableop)savev2_conv2d_37_bias_read_readvariableop+savev2_conv2d_38_kernel_read_readvariableop)savev2_conv2d_38_bias_read_readvariableop*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv2d_36_kernel_m_read_readvariableop0savev2_adam_conv2d_36_bias_m_read_readvariableop2savev2_adam_conv2d_37_kernel_m_read_readvariableop0savev2_adam_conv2d_37_bias_m_read_readvariableop2savev2_adam_conv2d_38_kernel_m_read_readvariableop0savev2_adam_conv2d_38_bias_m_read_readvariableop1savev2_adam_dense_24_kernel_m_read_readvariableop/savev2_adam_dense_24_bias_m_read_readvariableop1savev2_adam_dense_25_kernel_m_read_readvariableop/savev2_adam_dense_25_bias_m_read_readvariableop2savev2_adam_conv2d_36_kernel_v_read_readvariableop0savev2_adam_conv2d_36_bias_v_read_readvariableop2savev2_adam_conv2d_37_kernel_v_read_readvariableop0savev2_adam_conv2d_37_bias_v_read_readvariableop2savev2_adam_conv2d_38_kernel_v_read_readvariableop0savev2_adam_conv2d_38_bias_v_read_readvariableop1savev2_adam_dense_24_kernel_v_read_readvariableop/savev2_adam_dense_24_bias_v_read_readvariableop1savev2_adam_dense_25_kernel_v_read_readvariableop/savev2_adam_dense_25_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*п
_input_shapesЁ
Џ: ::: : : ::
јА:А:	А
:
: : : : : : : : : ::: : : ::
јА:А:	А
:
::: : : ::
јА:А:	А
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::&"
 
_output_shapes
:
јА:!

_output_shapes	
:А:%	!

_output_shapes
:	А
: 


_output_shapes
:
:
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
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::&"
 
_output_shapes
:
јА:!

_output_shapes	
:А:%!

_output_shapes
:	А
: 

_output_shapes
:
:,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
: : !

_output_shapes
: :,"(
&
_output_shapes
: : #

_output_shapes
::&$"
 
_output_shapes
:
јА:!%

_output_shapes	
:А:%&!

_output_shapes
:	А
: '

_output_shapes
:
:(

_output_shapes
: 
љ
M
1__inference_max_pooling2d_38_layer_call_fn_877614

inputs
identityЁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_876998Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Е
ю
E__inference_conv2d_38_layer_call_and_return_conditional_losses_877055

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Е
ю
E__inference_conv2d_36_layer_call_and_return_conditional_losses_877019

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€>>*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€>>X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€>>i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€>>w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*√
serving_defaultѓ
S
conv2d_36_input@
!serving_default_conv2d_36_input:0€€€€€€€€€@@<
dense_250
StatefulPartitionedCall:0€€€€€€€€€
tensorflow/serving/predict:жа
Ё
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ё
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
•
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op"
_tf_keras_layer
•
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op"
_tf_keras_layer
•
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
•
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias"
_tf_keras_layer
ї
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias"
_tf_keras_layer
f
0
1
(2
)3
74
85
L6
M7
T8
U9"
trackable_list_wrapper
f
0
1
(2
)3
74
85
L6
M7
T8
U9"
trackable_list_wrapper
 "
trackable_list_wrapper
 
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
н
[trace_0
\trace_1
]trace_2
^trace_32В
.__inference_sequential_12_layer_call_fn_877128
.__inference_sequential_12_layer_call_fn_877416
.__inference_sequential_12_layer_call_fn_877441
.__inference_sequential_12_layer_call_fn_877292њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z[trace_0z\trace_1z]trace_2z^trace_3
ў
_trace_0
`trace_1
atrace_2
btrace_32о
I__inference_sequential_12_layer_call_and_return_conditional_losses_877485
I__inference_sequential_12_layer_call_and_return_conditional_losses_877529
I__inference_sequential_12_layer_call_and_return_conditional_losses_877325
I__inference_sequential_12_layer_call_and_return_conditional_losses_877358њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z_trace_0z`trace_1zatrace_2zbtrace_3
‘B—
!__inference__wrapped_model_876965conv2d_36_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ы
citer

dbeta_1

ebeta_2
	fdecay
glearning_ratem≥mі(mµ)mґ7mЈ8mЄLmєMmЇTmїUmЉvљvЊ(vњ)vј7vЅ8v¬Lv√MvƒTv≈Uv∆"
	optimizer
,
hserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
о
ntrace_02—
*__inference_conv2d_36_layer_call_fn_877538Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zntrace_0
Й
otrace_02м
E__inference_conv2d_36_layer_call_and_return_conditional_losses_877549Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zotrace_0
*:(2conv2d_36/kernel
:2conv2d_36/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
х
utrace_02Ў
1__inference_max_pooling2d_36_layer_call_fn_877554Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zutrace_0
Р
vtrace_02у
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_877559Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zvtrace_0
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
о
|trace_02—
*__inference_conv2d_37_layer_call_fn_877568Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z|trace_0
Й
}trace_02м
E__inference_conv2d_37_layer_call_and_return_conditional_losses_877579Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z}trace_0
*:( 2conv2d_37/kernel
: 2conv2d_37/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
~non_trainable_variables

layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
ч
Гtrace_02Ў
1__inference_max_pooling2d_37_layer_call_fn_877584Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zГtrace_0
Т
Дtrace_02у
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_877589Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zДtrace_0
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
р
Кtrace_02—
*__inference_conv2d_38_layer_call_fn_877598Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zКtrace_0
Л
Лtrace_02м
E__inference_conv2d_38_layer_call_and_return_conditional_losses_877609Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЛtrace_0
*:( 2conv2d_38/kernel
:2conv2d_38/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
ч
Сtrace_02Ў
1__inference_max_pooling2d_38_layer_call_fn_877614Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zСtrace_0
Т
Тtrace_02у
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_877619Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zТtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
с
Шtrace_02“
+__inference_flatten_12_layer_call_fn_877624Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zШtrace_0
М
Щtrace_02н
F__inference_flatten_12_layer_call_and_return_conditional_losses_877630Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЩtrace_0
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
п
Яtrace_02–
)__inference_dense_24_layer_call_fn_877639Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЯtrace_0
К
†trace_02л
D__inference_dense_24_layer_call_and_return_conditional_losses_877650Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z†trace_0
#:!
јА2dense_24/kernel
:А2dense_24/bias
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
°non_trainable_variables
Ґlayers
£metrics
 §layer_regularization_losses
•layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
п
¶trace_02–
)__inference_dense_25_layer_call_fn_877659Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z¶trace_0
К
Іtrace_02л
D__inference_dense_25_layer_call_and_return_conditional_losses_877670Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zІtrace_0
": 	А
2dense_25/kernel
:
2dense_25/bias
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
®0
©1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ИBЕ
.__inference_sequential_12_layer_call_fn_877128conv2d_36_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
.__inference_sequential_12_layer_call_fn_877416inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
.__inference_sequential_12_layer_call_fn_877441inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ИBЕ
.__inference_sequential_12_layer_call_fn_877292conv2d_36_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
I__inference_sequential_12_layer_call_and_return_conditional_losses_877485inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
I__inference_sequential_12_layer_call_and_return_conditional_losses_877529inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
£B†
I__inference_sequential_12_layer_call_and_return_conditional_losses_877325conv2d_36_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
£B†
I__inference_sequential_12_layer_call_and_return_conditional_losses_877358conv2d_36_input"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
”B–
$__inference_signature_wrapper_877391conv2d_36_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ёBџ
*__inference_conv2d_36_layer_call_fn_877538inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
E__inference_conv2d_36_layer_call_and_return_conditional_losses_877549inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
еBв
1__inference_max_pooling2d_36_layer_call_fn_877554inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_877559inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ёBџ
*__inference_conv2d_37_layer_call_fn_877568inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
E__inference_conv2d_37_layer_call_and_return_conditional_losses_877579inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
еBв
1__inference_max_pooling2d_37_layer_call_fn_877584inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_877589inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ёBџ
*__inference_conv2d_38_layer_call_fn_877598inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
E__inference_conv2d_38_layer_call_and_return_conditional_losses_877609inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
еBв
1__inference_max_pooling2d_38_layer_call_fn_877614inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_877619inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
яB№
+__inference_flatten_12_layer_call_fn_877624inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
F__inference_flatten_12_layer_call_and_return_conditional_losses_877630inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ЁBЏ
)__inference_dense_24_layer_call_fn_877639inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_dense_24_layer_call_and_return_conditional_losses_877650inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
ЁBЏ
)__inference_dense_25_layer_call_fn_877659inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_dense_25_layer_call_and_return_conditional_losses_877670inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
™	variables
Ђ	keras_api

ђtotal

≠count"
_tf_keras_metric
c
Ѓ	variables
ѓ	keras_api

∞total

±count
≤
_fn_kwargs"
_tf_keras_metric
0
ђ0
≠1"
trackable_list_wrapper
.
™	variables"
_generic_user_object
:  (2total
:  (2count
0
∞0
±1"
trackable_list_wrapper
.
Ѓ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
/:-2Adam/conv2d_36/kernel/m
!:2Adam/conv2d_36/bias/m
/:- 2Adam/conv2d_37/kernel/m
!: 2Adam/conv2d_37/bias/m
/:- 2Adam/conv2d_38/kernel/m
!:2Adam/conv2d_38/bias/m
(:&
јА2Adam/dense_24/kernel/m
!:А2Adam/dense_24/bias/m
':%	А
2Adam/dense_25/kernel/m
 :
2Adam/dense_25/bias/m
/:-2Adam/conv2d_36/kernel/v
!:2Adam/conv2d_36/bias/v
/:- 2Adam/conv2d_37/kernel/v
!: 2Adam/conv2d_37/bias/v
/:- 2Adam/conv2d_38/kernel/v
!:2Adam/conv2d_38/bias/v
(:&
јА2Adam/dense_24/kernel/v
!:А2Adam/dense_24/bias/v
':%	А
2Adam/dense_25/kernel/v
 :
2Adam/dense_25/bias/v©
!__inference__wrapped_model_876965Г
()78LMTU@Ґ=
6Ґ3
1К.
conv2d_36_input€€€€€€€€€@@
™ "3™0
.
dense_25"К
dense_25€€€€€€€€€
µ
E__inference_conv2d_36_layer_call_and_return_conditional_losses_877549l7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@@
™ "-Ґ*
#К 
0€€€€€€€€€>>
Ъ Н
*__inference_conv2d_36_layer_call_fn_877538_7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@@
™ " К€€€€€€€€€>>µ
E__inference_conv2d_37_layer_call_and_return_conditional_losses_877579l()7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ Н
*__inference_conv2d_37_layer_call_fn_877568_()7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ " К€€€€€€€€€ µ
E__inference_conv2d_38_layer_call_and_return_conditional_losses_877609l787Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ Н
*__inference_conv2d_38_layer_call_fn_877598_787Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ " К€€€€€€€€€¶
D__inference_dense_24_layer_call_and_return_conditional_losses_877650^LM0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ "&Ґ#
К
0€€€€€€€€€А
Ъ ~
)__inference_dense_24_layer_call_fn_877639QLM0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ "К€€€€€€€€€А•
D__inference_dense_25_layer_call_and_return_conditional_losses_877670]TU0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€

Ъ }
)__inference_dense_25_layer_call_fn_877659PTU0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€
Ђ
F__inference_flatten_12_layer_call_and_return_conditional_losses_877630a7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "&Ґ#
К
0€€€€€€€€€ј
Ъ Г
+__inference_flatten_12_layer_call_fn_877624T7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "К€€€€€€€€€јп
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_877559ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_36_layer_call_fn_877554СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€п
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_877589ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_37_layer_call_fn_877584СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€п
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_877619ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_38_layer_call_fn_877614СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
I__inference_sequential_12_layer_call_and_return_conditional_losses_877325}
()78LMTUHҐE
>Ґ;
1К.
conv2d_36_input€€€€€€€€€@@
p 

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ  
I__inference_sequential_12_layer_call_and_return_conditional_losses_877358}
()78LMTUHҐE
>Ґ;
1К.
conv2d_36_input€€€€€€€€€@@
p

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ Ѕ
I__inference_sequential_12_layer_call_and_return_conditional_losses_877485t
()78LMTU?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€@@
p 

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ Ѕ
I__inference_sequential_12_layer_call_and_return_conditional_losses_877529t
()78LMTU?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€@@
p

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ Ґ
.__inference_sequential_12_layer_call_fn_877128p
()78LMTUHҐE
>Ґ;
1К.
conv2d_36_input€€€€€€€€€@@
p 

 
™ "К€€€€€€€€€
Ґ
.__inference_sequential_12_layer_call_fn_877292p
()78LMTUHҐE
>Ґ;
1К.
conv2d_36_input€€€€€€€€€@@
p

 
™ "К€€€€€€€€€
Щ
.__inference_sequential_12_layer_call_fn_877416g
()78LMTU?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€@@
p 

 
™ "К€€€€€€€€€
Щ
.__inference_sequential_12_layer_call_fn_877441g
()78LMTU?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€@@
p

 
™ "К€€€€€€€€€
њ
$__inference_signature_wrapper_877391Ц
()78LMTUSҐP
Ґ 
I™F
D
conv2d_36_input1К.
conv2d_36_input€€€€€€€€€@@"3™0
.
dense_25"К
dense_25€€€€€€€€€
