??*
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??'
|
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_20/kernel
u
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel* 
_output_shapes
:
??*
dtype0
s
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_20/bias
l
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes	
:?*
dtype0
{
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d* 
shared_namedense_21/kernel
t
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel*
_output_shapes
:	?d*
dtype0
r
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_21/bias
k
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes
:d*
dtype0
z
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2* 
shared_namedense_22/kernel
s
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel*
_output_shapes

:d2*
dtype0
r
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_22/bias
k
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes
:2*
dtype0
z
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namedense_23/kernel
s
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes

:2*
dtype0
r
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_23/bias
k
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes
:*
dtype0
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
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
?
lstm_10/lstm_cell_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_10/lstm_cell_10/kernel
?
/lstm_10/lstm_cell_10/kernel/Read/ReadVariableOpReadVariableOplstm_10/lstm_cell_10/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_10/lstm_cell_10/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%lstm_10/lstm_cell_10/recurrent_kernel
?
9lstm_10/lstm_cell_10/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_10/lstm_cell_10/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
lstm_10/lstm_cell_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_10/lstm_cell_10/bias
?
-lstm_10/lstm_cell_10/bias/Read/ReadVariableOpReadVariableOplstm_10/lstm_cell_10/bias*
_output_shapes	
:?*
dtype0
?
lstm_11/lstm_cell_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_namelstm_11/lstm_cell_11/kernel
?
/lstm_11/lstm_cell_11/kernel/Read/ReadVariableOpReadVariableOplstm_11/lstm_cell_11/kernel* 
_output_shapes
:
??*
dtype0
?
%lstm_11/lstm_cell_11/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%lstm_11/lstm_cell_11/recurrent_kernel
?
9lstm_11/lstm_cell_11/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_11/lstm_cell_11/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
lstm_11/lstm_cell_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_11/lstm_cell_11/bias
?
-lstm_11/lstm_cell_11/bias/Read/ReadVariableOpReadVariableOplstm_11/lstm_cell_11/bias*
_output_shapes	
:?*
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
Adam/dense_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_20/kernel/m
?
*Adam/dense_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_20/bias/m
z
(Adam/dense_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*'
shared_nameAdam/dense_21/kernel/m
?
*Adam/dense_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/m*
_output_shapes
:	?d*
dtype0
?
Adam/dense_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_21/bias/m
y
(Adam/dense_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*'
shared_nameAdam/dense_22/kernel/m
?
*Adam/dense_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/m*
_output_shapes

:d2*
dtype0
?
Adam/dense_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_22/bias/m
y
(Adam/dense_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_23/kernel/m
?
*Adam/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/m*
_output_shapes

:2*
dtype0
?
Adam/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/m
y
(Adam/dense_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/m*
_output_shapes
:*
dtype0
?
"Adam/lstm_10/lstm_cell_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_10/lstm_cell_10/kernel/m
?
6Adam/lstm_10/lstm_cell_10/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_10/lstm_cell_10/kernel/m*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_10/lstm_cell_10/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*=
shared_name.,Adam/lstm_10/lstm_cell_10/recurrent_kernel/m
?
@Adam/lstm_10/lstm_cell_10/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_10/lstm_cell_10/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
 Adam/lstm_10/lstm_cell_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_10/lstm_cell_10/bias/m
?
4Adam/lstm_10/lstm_cell_10/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_10/lstm_cell_10/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_11/lstm_cell_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*3
shared_name$"Adam/lstm_11/lstm_cell_11/kernel/m
?
6Adam/lstm_11/lstm_cell_11/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_11/lstm_cell_11/kernel/m* 
_output_shapes
:
??*
dtype0
?
,Adam/lstm_11/lstm_cell_11/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*=
shared_name.,Adam/lstm_11/lstm_cell_11/recurrent_kernel/m
?
@Adam/lstm_11/lstm_cell_11/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_11/lstm_cell_11/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
 Adam/lstm_11/lstm_cell_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_11/lstm_cell_11/bias/m
?
4Adam/lstm_11/lstm_cell_11/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_11/lstm_cell_11/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_20/kernel/v
?
*Adam/dense_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_20/bias/v
z
(Adam/dense_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*'
shared_nameAdam/dense_21/kernel/v
?
*Adam/dense_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/v*
_output_shapes
:	?d*
dtype0
?
Adam/dense_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_21/bias/v
y
(Adam/dense_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*'
shared_nameAdam/dense_22/kernel/v
?
*Adam/dense_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/v*
_output_shapes

:d2*
dtype0
?
Adam/dense_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_22/bias/v
y
(Adam/dense_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_23/kernel/v
?
*Adam/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/v*
_output_shapes

:2*
dtype0
?
Adam/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/v
y
(Adam/dense_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/v*
_output_shapes
:*
dtype0
?
"Adam/lstm_10/lstm_cell_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_10/lstm_cell_10/kernel/v
?
6Adam/lstm_10/lstm_cell_10/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_10/lstm_cell_10/kernel/v*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_10/lstm_cell_10/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*=
shared_name.,Adam/lstm_10/lstm_cell_10/recurrent_kernel/v
?
@Adam/lstm_10/lstm_cell_10/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_10/lstm_cell_10/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
 Adam/lstm_10/lstm_cell_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_10/lstm_cell_10/bias/v
?
4Adam/lstm_10/lstm_cell_10/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_10/lstm_cell_10/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_11/lstm_cell_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*3
shared_name$"Adam/lstm_11/lstm_cell_11/kernel/v
?
6Adam/lstm_11/lstm_cell_11/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_11/lstm_cell_11/kernel/v* 
_output_shapes
:
??*
dtype0
?
,Adam/lstm_11/lstm_cell_11/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*=
shared_name.,Adam/lstm_11/lstm_cell_11/recurrent_kernel/v
?
@Adam/lstm_11/lstm_cell_11/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_11/lstm_cell_11/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
 Adam/lstm_11/lstm_cell_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_11/lstm_cell_11/bias/v
?
4Adam/lstm_11/lstm_cell_11/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_11/lstm_cell_11/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?K
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?K
value?KB?K B?K
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
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
h

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
h

%kernel
&bias
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
?

1beta_1

2beta_2
	3decay
4learning_rate
5iterm}m~m m?%m?&m?+m?,m?6m?7m?8m?9m?:m?;m?v?v?v? v?%v?&v?+v?,v?6v?7v?8v?9v?:v?;v?
f
60
71
82
93
:4
;5
6
7
8
 9
%10
&11
+12
,13
f
60
71
82
93
:4
;5
6
7
8
 9
%10
&11
+12
,13
 
?

<layers
=layer_regularization_losses
>metrics
	variables
	trainable_variables

regularization_losses
?non_trainable_variables
@layer_metrics
 
~

6kernel
7recurrent_kernel
8bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
 

60
71
82

60
71
82
 
?

Elayers
Flayer_regularization_losses
Gmetrics
	variables
trainable_variables
regularization_losses

Hstates
Inon_trainable_variables
Jlayer_metrics
~

9kernel
:recurrent_kernel
;bias
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
 

90
:1
;2

90
:1
;2
 
?

Olayers
Player_regularization_losses
Qmetrics
	variables
trainable_variables
regularization_losses

Rstates
Snon_trainable_variables
Tlayer_metrics
[Y
VARIABLE_VALUEdense_20/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_20/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?

Ulayers
Vlayer_regularization_losses
Wmetrics
	variables
trainable_variables
regularization_losses
Xnon_trainable_variables
Ylayer_metrics
[Y
VARIABLE_VALUEdense_21/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_21/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1

0
 1
 
?

Zlayers
[layer_regularization_losses
\metrics
!	variables
"trainable_variables
#regularization_losses
]non_trainable_variables
^layer_metrics
[Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_22/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
?

_layers
`layer_regularization_losses
ametrics
'	variables
(trainable_variables
)regularization_losses
bnon_trainable_variables
clayer_metrics
[Y
VARIABLE_VALUEdense_23/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_23/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

+0
,1
 
?

dlayers
elayer_regularization_losses
fmetrics
-	variables
.trainable_variables
/regularization_losses
gnon_trainable_variables
hlayer_metrics
GE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_10/lstm_cell_10/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_10/lstm_cell_10/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_10/lstm_cell_10/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_11/lstm_cell_11/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_11/lstm_cell_11/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_11/lstm_cell_11/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
*
0
1
2
3
4
5
 

i0
j1
 
 

60
71
82

60
71
82
 
?

klayers
llayer_regularization_losses
mmetrics
A	variables
Btrainable_variables
Cregularization_losses
nnon_trainable_variables
olayer_metrics

0
 
 
 
 
 

90
:1
;2

90
:1
;2
 
?

players
qlayer_regularization_losses
rmetrics
K	variables
Ltrainable_variables
Mregularization_losses
snon_trainable_variables
tlayer_metrics

0
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
	utotal
	vcount
w	variables
x	keras_api
4
	ytotal
	zcount
{	variables
|	keras_api
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

u0
v1

w	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

y0
z1

{	variables
~|
VARIABLE_VALUEAdam/dense_20/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_20/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_10/lstm_cell_10/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_10/lstm_cell_10/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_10/lstm_cell_10/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_11/lstm_cell_11/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_11/lstm_cell_11/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_11/lstm_cell_11/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_20/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_20/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_10/lstm_cell_10/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_10/lstm_cell_10/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_10/lstm_cell_10/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_11/lstm_cell_11/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_11/lstm_cell_11/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_11/lstm_cell_11/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_10_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_10_inputlstm_10/lstm_cell_10/kernel%lstm_10/lstm_cell_10/recurrent_kernellstm_10/lstm_cell_10/biaslstm_11/lstm_cell_11/kernel%lstm_11/lstm_cell_11/recurrent_kernellstm_11/lstm_cell_11/biasdense_20/kerneldense_20/biasdense_21/kerneldense_21/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_200462
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOp#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOp#dense_22/kernel/Read/ReadVariableOp!dense_22/bias/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOp/lstm_10/lstm_cell_10/kernel/Read/ReadVariableOp9lstm_10/lstm_cell_10/recurrent_kernel/Read/ReadVariableOp-lstm_10/lstm_cell_10/bias/Read/ReadVariableOp/lstm_11/lstm_cell_11/kernel/Read/ReadVariableOp9lstm_11/lstm_cell_11/recurrent_kernel/Read/ReadVariableOp-lstm_11/lstm_cell_11/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_20/kernel/m/Read/ReadVariableOp(Adam/dense_20/bias/m/Read/ReadVariableOp*Adam/dense_21/kernel/m/Read/ReadVariableOp(Adam/dense_21/bias/m/Read/ReadVariableOp*Adam/dense_22/kernel/m/Read/ReadVariableOp(Adam/dense_22/bias/m/Read/ReadVariableOp*Adam/dense_23/kernel/m/Read/ReadVariableOp(Adam/dense_23/bias/m/Read/ReadVariableOp6Adam/lstm_10/lstm_cell_10/kernel/m/Read/ReadVariableOp@Adam/lstm_10/lstm_cell_10/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_10/lstm_cell_10/bias/m/Read/ReadVariableOp6Adam/lstm_11/lstm_cell_11/kernel/m/Read/ReadVariableOp@Adam/lstm_11/lstm_cell_11/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_11/lstm_cell_11/bias/m/Read/ReadVariableOp*Adam/dense_20/kernel/v/Read/ReadVariableOp(Adam/dense_20/bias/v/Read/ReadVariableOp*Adam/dense_21/kernel/v/Read/ReadVariableOp(Adam/dense_21/bias/v/Read/ReadVariableOp*Adam/dense_22/kernel/v/Read/ReadVariableOp(Adam/dense_22/bias/v/Read/ReadVariableOp*Adam/dense_23/kernel/v/Read/ReadVariableOp(Adam/dense_23/bias/v/Read/ReadVariableOp6Adam/lstm_10/lstm_cell_10/kernel/v/Read/ReadVariableOp@Adam/lstm_10/lstm_cell_10/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_10/lstm_cell_10/bias/v/Read/ReadVariableOp6Adam/lstm_11/lstm_cell_11/kernel/v/Read/ReadVariableOp@Adam/lstm_11/lstm_cell_11/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_11/lstm_cell_11/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_202956
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_20/kerneldense_20/biasdense_21/kerneldense_21/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/biasbeta_1beta_2decaylearning_rate	Adam/iterlstm_10/lstm_cell_10/kernel%lstm_10/lstm_cell_10/recurrent_kernellstm_10/lstm_cell_10/biaslstm_11/lstm_cell_11/kernel%lstm_11/lstm_cell_11/recurrent_kernellstm_11/lstm_cell_11/biastotalcounttotal_1count_1Adam/dense_20/kernel/mAdam/dense_20/bias/mAdam/dense_21/kernel/mAdam/dense_21/bias/mAdam/dense_22/kernel/mAdam/dense_22/bias/mAdam/dense_23/kernel/mAdam/dense_23/bias/m"Adam/lstm_10/lstm_cell_10/kernel/m,Adam/lstm_10/lstm_cell_10/recurrent_kernel/m Adam/lstm_10/lstm_cell_10/bias/m"Adam/lstm_11/lstm_cell_11/kernel/m,Adam/lstm_11/lstm_cell_11/recurrent_kernel/m Adam/lstm_11/lstm_cell_11/bias/mAdam/dense_20/kernel/vAdam/dense_20/bias/vAdam/dense_21/kernel/vAdam/dense_21/bias/vAdam/dense_22/kernel/vAdam/dense_22/bias/vAdam/dense_23/kernel/vAdam/dense_23/bias/v"Adam/lstm_10/lstm_cell_10/kernel/v,Adam/lstm_10/lstm_cell_10/recurrent_kernel/v Adam/lstm_10/lstm_cell_10/bias/v"Adam/lstm_11/lstm_cell_11/kernel/v,Adam/lstm_11/lstm_cell_11/recurrent_kernel/v Adam/lstm_11/lstm_cell_11/bias/v*?
Tin8
624*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_203119??%
?[
?
C__inference_lstm_10_layer_call_and_return_conditional_losses_199764

inputs/
+lstm_cell_10_matmul_readvariableop_resource1
-lstm_cell_10_matmul_1_readvariableop_resource0
,lstm_cell_10_biasadd_readvariableop_resource
identity??#lstm_cell_10/BiasAdd/ReadVariableOp?"lstm_cell_10/MatMul/ReadVariableOp?$lstm_cell_10/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp?
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/MatMul?
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp?
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/MatMul_1?
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/add?
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp?
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/BiasAddj
lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim?
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_10/split?
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid?
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid_1?
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul?
lstm_cell_10/LeakyRelu	LeakyRelulstm_cell_10/split:output:2*(
_output_shapes
:??????????2
lstm_cell_10/LeakyRelu?
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0$lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul_1?
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/add_1?
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid_2?
lstm_cell_10/LeakyRelu_1	LeakyRelulstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_10/LeakyRelu_1?
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0&lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_199679*
condR
while_cond_199678*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_200317

inputs
lstm_10_200282
lstm_10_200284
lstm_10_200286
lstm_11_200289
lstm_11_200291
lstm_11_200293
dense_20_200296
dense_20_200298
dense_21_200301
dense_21_200303
dense_22_200306
dense_22_200308
dense_23_200311
dense_23_200313
identity?? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?lstm_10/StatefulPartitionedCall?lstm_11/StatefulPartitionedCall?
lstm_10/StatefulPartitionedCallStatefulPartitionedCallinputslstm_10_200282lstm_10_200284lstm_10_200286*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_10_layer_call_and_return_conditional_losses_1996112!
lstm_10/StatefulPartitionedCall?
lstm_11/StatefulPartitionedCallStatefulPartitionedCall(lstm_10/StatefulPartitionedCall:output:0lstm_11_200289lstm_11_200291lstm_11_200293*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_11_layer_call_and_return_conditional_losses_1999462!
lstm_11/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_11/StatefulPartitionedCall:output:0dense_20_200296dense_20_200298*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_2001402"
 dense_20/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_200301dense_21_200303*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_2001672"
 dense_21/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_200306dense_22_200308*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_2001942"
 dense_22/StatefulPartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_200311dense_23_200313*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_2002212"
 dense_23/StatefulPartitionedCall?
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall ^lstm_10/StatefulPartitionedCall ^lstm_11/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2B
lstm_10/StatefulPartitionedCalllstm_10/StatefulPartitionedCall2B
lstm_11/StatefulPartitionedCalllstm_11/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_21_layer_call_and_return_conditional_losses_202531

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????d2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?D
?
C__inference_lstm_10_layer_call_and_return_conditional_losses_198704

inputs
lstm_cell_10_198622
lstm_cell_10_198624
lstm_cell_10_198626
identity??$lstm_cell_10/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_10_198622lstm_cell_10_198624lstm_cell_10_198626*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1983082&
$lstm_cell_10/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_10_198622lstm_cell_10_198624lstm_cell_10_198626*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_198635*
condR
while_cond_198634*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0%^lstm_cell_10/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::2L
$lstm_cell_10/StatefulPartitionedCall$lstm_cell_10/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_203119
file_prefix$
 assignvariableop_dense_20_kernel$
 assignvariableop_1_dense_20_bias&
"assignvariableop_2_dense_21_kernel$
 assignvariableop_3_dense_21_bias&
"assignvariableop_4_dense_22_kernel$
 assignvariableop_5_dense_22_bias&
"assignvariableop_6_dense_23_kernel$
 assignvariableop_7_dense_23_bias
assignvariableop_8_beta_1
assignvariableop_9_beta_2
assignvariableop_10_decay%
!assignvariableop_11_learning_rate!
assignvariableop_12_adam_iter3
/assignvariableop_13_lstm_10_lstm_cell_10_kernel=
9assignvariableop_14_lstm_10_lstm_cell_10_recurrent_kernel1
-assignvariableop_15_lstm_10_lstm_cell_10_bias3
/assignvariableop_16_lstm_11_lstm_cell_11_kernel=
9assignvariableop_17_lstm_11_lstm_cell_11_recurrent_kernel1
-assignvariableop_18_lstm_11_lstm_cell_11_bias
assignvariableop_19_total
assignvariableop_20_count
assignvariableop_21_total_1
assignvariableop_22_count_1.
*assignvariableop_23_adam_dense_20_kernel_m,
(assignvariableop_24_adam_dense_20_bias_m.
*assignvariableop_25_adam_dense_21_kernel_m,
(assignvariableop_26_adam_dense_21_bias_m.
*assignvariableop_27_adam_dense_22_kernel_m,
(assignvariableop_28_adam_dense_22_bias_m.
*assignvariableop_29_adam_dense_23_kernel_m,
(assignvariableop_30_adam_dense_23_bias_m:
6assignvariableop_31_adam_lstm_10_lstm_cell_10_kernel_mD
@assignvariableop_32_adam_lstm_10_lstm_cell_10_recurrent_kernel_m8
4assignvariableop_33_adam_lstm_10_lstm_cell_10_bias_m:
6assignvariableop_34_adam_lstm_11_lstm_cell_11_kernel_mD
@assignvariableop_35_adam_lstm_11_lstm_cell_11_recurrent_kernel_m8
4assignvariableop_36_adam_lstm_11_lstm_cell_11_bias_m.
*assignvariableop_37_adam_dense_20_kernel_v,
(assignvariableop_38_adam_dense_20_bias_v.
*assignvariableop_39_adam_dense_21_kernel_v,
(assignvariableop_40_adam_dense_21_bias_v.
*assignvariableop_41_adam_dense_22_kernel_v,
(assignvariableop_42_adam_dense_22_bias_v.
*assignvariableop_43_adam_dense_23_kernel_v,
(assignvariableop_44_adam_dense_23_bias_v:
6assignvariableop_45_adam_lstm_10_lstm_cell_10_kernel_vD
@assignvariableop_46_adam_lstm_10_lstm_cell_10_recurrent_kernel_v8
4assignvariableop_47_adam_lstm_10_lstm_cell_10_bias_v:
6assignvariableop_48_adam_lstm_11_lstm_cell_11_kernel_vD
@assignvariableop_49_adam_lstm_11_lstm_cell_11_recurrent_kernel_v8
4assignvariableop_50_adam_lstm_11_lstm_cell_11_bias_v
identity_52??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*?
value?B?4B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_20_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_20_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_21_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_21_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_22_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_22_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_23_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_23_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_beta_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_beta_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_10_lstm_cell_10_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_10_lstm_cell_10_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_10_lstm_cell_10_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp/assignvariableop_16_lstm_11_lstm_cell_11_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp9assignvariableop_17_lstm_11_lstm_cell_11_recurrent_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp-assignvariableop_18_lstm_11_lstm_cell_11_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_20_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_20_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_21_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_21_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_22_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_22_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_23_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_23_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_lstm_10_lstm_cell_10_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adam_lstm_10_lstm_cell_10_recurrent_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_10_lstm_cell_10_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_lstm_11_lstm_cell_11_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_lstm_11_lstm_cell_11_recurrent_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_11_lstm_cell_11_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_20_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_20_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_21_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_21_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_22_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_22_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_23_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_23_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp6assignvariableop_45_adam_lstm_10_lstm_cell_10_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp@assignvariableop_46_adam_lstm_10_lstm_cell_10_recurrent_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp4assignvariableop_47_adam_lstm_10_lstm_cell_10_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp6assignvariableop_48_adam_lstm_11_lstm_cell_11_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp@assignvariableop_49_adam_lstm_11_lstm_cell_11_recurrent_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp4assignvariableop_50_adam_lstm_11_lstm_cell_11_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_509
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_51?	
Identity_52IdentityIdentity_51:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_52"#
identity_52Identity_52:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?O
?	
lstm_11_while_body_201009,
(lstm_11_while_lstm_11_while_loop_counter2
.lstm_11_while_lstm_11_while_maximum_iterations
lstm_11_while_placeholder
lstm_11_while_placeholder_1
lstm_11_while_placeholder_2
lstm_11_while_placeholder_3+
'lstm_11_while_lstm_11_strided_slice_1_0g
clstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensor_0?
;lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0A
=lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0@
<lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0
lstm_11_while_identity
lstm_11_while_identity_1
lstm_11_while_identity_2
lstm_11_while_identity_3
lstm_11_while_identity_4
lstm_11_while_identity_5)
%lstm_11_while_lstm_11_strided_slice_1e
alstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensor=
9lstm_11_while_lstm_cell_11_matmul_readvariableop_resource?
;lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource>
:lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource??1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp?0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp?2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp?
?lstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2A
?lstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_11/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensor_0lstm_11_while_placeholderHlstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype023
1lstm_11/while/TensorArrayV2Read/TensorListGetItem?
0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp;lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp?
!lstm_11/while/lstm_cell_11/MatMulMatMul8lstm_11/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_11/while/lstm_cell_11/MatMul?
2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp=lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype024
2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp?
#lstm_11/while/lstm_cell_11/MatMul_1MatMullstm_11_while_placeholder_2:lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_11/while/lstm_cell_11/MatMul_1?
lstm_11/while/lstm_cell_11/addAddV2+lstm_11/while/lstm_cell_11/MatMul:product:0-lstm_11/while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_11/while/lstm_cell_11/add?
1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp<lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp?
"lstm_11/while/lstm_cell_11/BiasAddBiasAdd"lstm_11/while/lstm_cell_11/add:z:09lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_11/while/lstm_cell_11/BiasAdd?
 lstm_11/while/lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_11/while/lstm_cell_11/Const?
*lstm_11/while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_11/while/lstm_cell_11/split/split_dim?
 lstm_11/while/lstm_cell_11/splitSplit3lstm_11/while/lstm_cell_11/split/split_dim:output:0+lstm_11/while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2"
 lstm_11/while/lstm_cell_11/split?
"lstm_11/while/lstm_cell_11/SigmoidSigmoid)lstm_11/while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2$
"lstm_11/while/lstm_cell_11/Sigmoid?
$lstm_11/while/lstm_cell_11/Sigmoid_1Sigmoid)lstm_11/while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2&
$lstm_11/while/lstm_cell_11/Sigmoid_1?
lstm_11/while/lstm_cell_11/mulMul(lstm_11/while/lstm_cell_11/Sigmoid_1:y:0lstm_11_while_placeholder_3*
T0*(
_output_shapes
:??????????2 
lstm_11/while/lstm_cell_11/mul?
$lstm_11/while/lstm_cell_11/LeakyRelu	LeakyRelu)lstm_11/while/lstm_cell_11/split:output:2*(
_output_shapes
:??????????2&
$lstm_11/while/lstm_cell_11/LeakyRelu?
 lstm_11/while/lstm_cell_11/mul_1Mul&lstm_11/while/lstm_cell_11/Sigmoid:y:02lstm_11/while/lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2"
 lstm_11/while/lstm_cell_11/mul_1?
 lstm_11/while/lstm_cell_11/add_1AddV2"lstm_11/while/lstm_cell_11/mul:z:0$lstm_11/while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2"
 lstm_11/while/lstm_cell_11/add_1?
$lstm_11/while/lstm_cell_11/Sigmoid_2Sigmoid)lstm_11/while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2&
$lstm_11/while/lstm_cell_11/Sigmoid_2?
&lstm_11/while/lstm_cell_11/LeakyRelu_1	LeakyRelu$lstm_11/while/lstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2(
&lstm_11/while/lstm_cell_11/LeakyRelu_1?
 lstm_11/while/lstm_cell_11/mul_2Mul(lstm_11/while/lstm_cell_11/Sigmoid_2:y:04lstm_11/while/lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2"
 lstm_11/while/lstm_cell_11/mul_2?
2lstm_11/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_11_while_placeholder_1lstm_11_while_placeholder$lstm_11/while/lstm_cell_11/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_11/while/TensorArrayV2Write/TensorListSetIteml
lstm_11/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/while/add/y?
lstm_11/while/addAddV2lstm_11_while_placeholderlstm_11/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_11/while/addp
lstm_11/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/while/add_1/y?
lstm_11/while/add_1AddV2(lstm_11_while_lstm_11_while_loop_counterlstm_11/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_11/while/add_1?
lstm_11/while/IdentityIdentitylstm_11/while/add_1:z:02^lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1^lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp3^lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_11/while/Identity?
lstm_11/while/Identity_1Identity.lstm_11_while_lstm_11_while_maximum_iterations2^lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1^lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp3^lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_11/while/Identity_1?
lstm_11/while/Identity_2Identitylstm_11/while/add:z:02^lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1^lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp3^lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_11/while/Identity_2?
lstm_11/while/Identity_3IdentityBlstm_11/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1^lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp3^lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_11/while/Identity_3?
lstm_11/while/Identity_4Identity$lstm_11/while/lstm_cell_11/mul_2:z:02^lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1^lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp3^lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_11/while/Identity_4?
lstm_11/while/Identity_5Identity$lstm_11/while/lstm_cell_11/add_1:z:02^lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1^lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp3^lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_11/while/Identity_5"9
lstm_11_while_identitylstm_11/while/Identity:output:0"=
lstm_11_while_identity_1!lstm_11/while/Identity_1:output:0"=
lstm_11_while_identity_2!lstm_11/while/Identity_2:output:0"=
lstm_11_while_identity_3!lstm_11/while/Identity_3:output:0"=
lstm_11_while_identity_4!lstm_11/while/Identity_4:output:0"=
lstm_11_while_identity_5!lstm_11/while/Identity_5:output:0"P
%lstm_11_while_lstm_11_strided_slice_1'lstm_11_while_lstm_11_strided_slice_1_0"z
:lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource<lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0"|
;lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource=lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0"x
9lstm_11_while_lstm_cell_11_matmul_readvariableop_resource;lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0"?
alstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensorclstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2f
1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp2d
0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp2h
2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?[
?
C__inference_lstm_10_layer_call_and_return_conditional_losses_199611

inputs/
+lstm_cell_10_matmul_readvariableop_resource1
-lstm_cell_10_matmul_1_readvariableop_resource0
,lstm_cell_10_biasadd_readvariableop_resource
identity??#lstm_cell_10/BiasAdd/ReadVariableOp?"lstm_cell_10/MatMul/ReadVariableOp?$lstm_cell_10/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp?
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/MatMul?
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp?
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/MatMul_1?
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/add?
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp?
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/BiasAddj
lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim?
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_10/split?
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid?
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid_1?
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul?
lstm_cell_10/LeakyRelu	LeakyRelulstm_cell_10/split:output:2*(
_output_shapes
:??????????2
lstm_cell_10/LeakyRelu?
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0$lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul_1?
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/add_1?
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid_2?
lstm_cell_10/LeakyRelu_1	LeakyRelulstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_10/LeakyRelu_1?
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0&lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_199526*
condR
while_cond_199525*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_lstm_10_layer_call_fn_201505

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_10_layer_call_and_return_conditional_losses_1996112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
$__inference_signature_wrapper_200462
lstm_10_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_1982352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_10_input
?
?
while_cond_199678
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_199678___redundant_placeholder04
0while_while_cond_199678___redundant_placeholder14
0while_while_cond_199678___redundant_placeholder24
0while_while_cond_199678___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_202239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_202239___redundant_placeholder04
0while_while_cond_202239___redundant_placeholder14
0while_while_cond_202239___redundant_placeholder24
0while_while_cond_202239___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?O
?	
lstm_10_while_body_200860,
(lstm_10_while_lstm_10_while_loop_counter2
.lstm_10_while_lstm_10_while_maximum_iterations
lstm_10_while_placeholder
lstm_10_while_placeholder_1
lstm_10_while_placeholder_2
lstm_10_while_placeholder_3+
'lstm_10_while_lstm_10_strided_slice_1_0g
clstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0?
;lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0A
=lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0@
<lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0
lstm_10_while_identity
lstm_10_while_identity_1
lstm_10_while_identity_2
lstm_10_while_identity_3
lstm_10_while_identity_4
lstm_10_while_identity_5)
%lstm_10_while_lstm_10_strided_slice_1e
alstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor=
9lstm_10_while_lstm_cell_10_matmul_readvariableop_resource?
;lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource>
:lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource??1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp?0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp?2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp?
?lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0lstm_10_while_placeholderHlstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_10/while/TensorArrayV2Read/TensorListGetItem?
0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp;lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype022
0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp?
!lstm_10/while/lstm_cell_10/MatMulMatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_10/while/lstm_cell_10/MatMul?
2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp=lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype024
2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp?
#lstm_10/while/lstm_cell_10/MatMul_1MatMullstm_10_while_placeholder_2:lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_10/while/lstm_cell_10/MatMul_1?
lstm_10/while/lstm_cell_10/addAddV2+lstm_10/while/lstm_cell_10/MatMul:product:0-lstm_10/while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_10/while/lstm_cell_10/add?
1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp<lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp?
"lstm_10/while/lstm_cell_10/BiasAddBiasAdd"lstm_10/while/lstm_cell_10/add:z:09lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_10/while/lstm_cell_10/BiasAdd?
 lstm_10/while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_10/while/lstm_cell_10/Const?
*lstm_10/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_10/while/lstm_cell_10/split/split_dim?
 lstm_10/while/lstm_cell_10/splitSplit3lstm_10/while/lstm_cell_10/split/split_dim:output:0+lstm_10/while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2"
 lstm_10/while/lstm_cell_10/split?
"lstm_10/while/lstm_cell_10/SigmoidSigmoid)lstm_10/while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2$
"lstm_10/while/lstm_cell_10/Sigmoid?
$lstm_10/while/lstm_cell_10/Sigmoid_1Sigmoid)lstm_10/while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2&
$lstm_10/while/lstm_cell_10/Sigmoid_1?
lstm_10/while/lstm_cell_10/mulMul(lstm_10/while/lstm_cell_10/Sigmoid_1:y:0lstm_10_while_placeholder_3*
T0*(
_output_shapes
:??????????2 
lstm_10/while/lstm_cell_10/mul?
$lstm_10/while/lstm_cell_10/LeakyRelu	LeakyRelu)lstm_10/while/lstm_cell_10/split:output:2*(
_output_shapes
:??????????2&
$lstm_10/while/lstm_cell_10/LeakyRelu?
 lstm_10/while/lstm_cell_10/mul_1Mul&lstm_10/while/lstm_cell_10/Sigmoid:y:02lstm_10/while/lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2"
 lstm_10/while/lstm_cell_10/mul_1?
 lstm_10/while/lstm_cell_10/add_1AddV2"lstm_10/while/lstm_cell_10/mul:z:0$lstm_10/while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2"
 lstm_10/while/lstm_cell_10/add_1?
$lstm_10/while/lstm_cell_10/Sigmoid_2Sigmoid)lstm_10/while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2&
$lstm_10/while/lstm_cell_10/Sigmoid_2?
&lstm_10/while/lstm_cell_10/LeakyRelu_1	LeakyRelu$lstm_10/while/lstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2(
&lstm_10/while/lstm_cell_10/LeakyRelu_1?
 lstm_10/while/lstm_cell_10/mul_2Mul(lstm_10/while/lstm_cell_10/Sigmoid_2:y:04lstm_10/while/lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2"
 lstm_10/while/lstm_cell_10/mul_2?
2lstm_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_10_while_placeholder_1lstm_10_while_placeholder$lstm_10/while/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_10/while/TensorArrayV2Write/TensorListSetIteml
lstm_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/while/add/y?
lstm_10/while/addAddV2lstm_10_while_placeholderlstm_10/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_10/while/addp
lstm_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/while/add_1/y?
lstm_10/while/add_1AddV2(lstm_10_while_lstm_10_while_loop_counterlstm_10/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_10/while/add_1?
lstm_10/while/IdentityIdentitylstm_10/while/add_1:z:02^lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1^lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp3^lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity?
lstm_10/while/Identity_1Identity.lstm_10_while_lstm_10_while_maximum_iterations2^lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1^lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp3^lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_1?
lstm_10/while/Identity_2Identitylstm_10/while/add:z:02^lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1^lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp3^lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_2?
lstm_10/while/Identity_3IdentityBlstm_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1^lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp3^lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_3?
lstm_10/while/Identity_4Identity$lstm_10/while/lstm_cell_10/mul_2:z:02^lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1^lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp3^lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_10/while/Identity_4?
lstm_10/while/Identity_5Identity$lstm_10/while/lstm_cell_10/add_1:z:02^lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1^lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp3^lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_10/while/Identity_5"9
lstm_10_while_identitylstm_10/while/Identity:output:0"=
lstm_10_while_identity_1!lstm_10/while/Identity_1:output:0"=
lstm_10_while_identity_2!lstm_10/while/Identity_2:output:0"=
lstm_10_while_identity_3!lstm_10/while/Identity_3:output:0"=
lstm_10_while_identity_4!lstm_10/while/Identity_4:output:0"=
lstm_10_while_identity_5!lstm_10/while/Identity_5:output:0"P
%lstm_10_while_lstm_10_strided_slice_1'lstm_10_while_lstm_10_strided_slice_1_0"z
:lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource<lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0"|
;lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource=lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0"x
9lstm_10_while_lstm_cell_10_matmul_readvariableop_resource;lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0"?
alstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensorclstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2f
1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp2d
0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp2h
2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_202746

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul]
	LeakyRelu	LeakyRelusplit:output:2*(
_output_shapes
:??????????2
	LeakyRelun
mul_1MulSigmoid:y:0LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2\
LeakyRelu_1	LeakyRelu	add_1:z:0*(
_output_shapes
:??????????2
LeakyRelu_1r
mul_2MulSigmoid_2:y:0LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:??????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?b
?
&sequential_5_lstm_10_while_body_197973F
Bsequential_5_lstm_10_while_sequential_5_lstm_10_while_loop_counterL
Hsequential_5_lstm_10_while_sequential_5_lstm_10_while_maximum_iterations*
&sequential_5_lstm_10_while_placeholder,
(sequential_5_lstm_10_while_placeholder_1,
(sequential_5_lstm_10_while_placeholder_2,
(sequential_5_lstm_10_while_placeholder_3E
Asequential_5_lstm_10_while_sequential_5_lstm_10_strided_slice_1_0?
}sequential_5_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_10_tensorarrayunstack_tensorlistfromtensor_0L
Hsequential_5_lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0N
Jsequential_5_lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0M
Isequential_5_lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0'
#sequential_5_lstm_10_while_identity)
%sequential_5_lstm_10_while_identity_1)
%sequential_5_lstm_10_while_identity_2)
%sequential_5_lstm_10_while_identity_3)
%sequential_5_lstm_10_while_identity_4)
%sequential_5_lstm_10_while_identity_5C
?sequential_5_lstm_10_while_sequential_5_lstm_10_strided_slice_1
{sequential_5_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_10_tensorarrayunstack_tensorlistfromtensorJ
Fsequential_5_lstm_10_while_lstm_cell_10_matmul_readvariableop_resourceL
Hsequential_5_lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resourceK
Gsequential_5_lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource??>sequential_5/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp?=sequential_5/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp??sequential_5/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp?
Lsequential_5/lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2N
Lsequential_5/lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape?
>sequential_5/lstm_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_5_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_10_tensorarrayunstack_tensorlistfromtensor_0&sequential_5_lstm_10_while_placeholderUsequential_5/lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02@
>sequential_5/lstm_10/while/TensorArrayV2Read/TensorListGetItem?
=sequential_5/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOpHsequential_5_lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02?
=sequential_5/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp?
.sequential_5/lstm_10/while/lstm_cell_10/MatMulMatMulEsequential_5/lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_5/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_5/lstm_10/while/lstm_cell_10/MatMul?
?sequential_5/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOpJsequential_5_lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02A
?sequential_5/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp?
0sequential_5/lstm_10/while/lstm_cell_10/MatMul_1MatMul(sequential_5_lstm_10_while_placeholder_2Gsequential_5/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????22
0sequential_5/lstm_10/while/lstm_cell_10/MatMul_1?
+sequential_5/lstm_10/while/lstm_cell_10/addAddV28sequential_5/lstm_10/while/lstm_cell_10/MatMul:product:0:sequential_5/lstm_10/while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2-
+sequential_5/lstm_10/while/lstm_cell_10/add?
>sequential_5/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOpIsequential_5_lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02@
>sequential_5/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp?
/sequential_5/lstm_10/while/lstm_cell_10/BiasAddBiasAdd/sequential_5/lstm_10/while/lstm_cell_10/add:z:0Fsequential_5/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/sequential_5/lstm_10/while/lstm_cell_10/BiasAdd?
-sequential_5/lstm_10/while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_5/lstm_10/while/lstm_cell_10/Const?
7sequential_5/lstm_10/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_5/lstm_10/while/lstm_cell_10/split/split_dim?
-sequential_5/lstm_10/while/lstm_cell_10/splitSplit@sequential_5/lstm_10/while/lstm_cell_10/split/split_dim:output:08sequential_5/lstm_10/while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2/
-sequential_5/lstm_10/while/lstm_cell_10/split?
/sequential_5/lstm_10/while/lstm_cell_10/SigmoidSigmoid6sequential_5/lstm_10/while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????21
/sequential_5/lstm_10/while/lstm_cell_10/Sigmoid?
1sequential_5/lstm_10/while/lstm_cell_10/Sigmoid_1Sigmoid6sequential_5/lstm_10/while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????23
1sequential_5/lstm_10/while/lstm_cell_10/Sigmoid_1?
+sequential_5/lstm_10/while/lstm_cell_10/mulMul5sequential_5/lstm_10/while/lstm_cell_10/Sigmoid_1:y:0(sequential_5_lstm_10_while_placeholder_3*
T0*(
_output_shapes
:??????????2-
+sequential_5/lstm_10/while/lstm_cell_10/mul?
1sequential_5/lstm_10/while/lstm_cell_10/LeakyRelu	LeakyRelu6sequential_5/lstm_10/while/lstm_cell_10/split:output:2*(
_output_shapes
:??????????23
1sequential_5/lstm_10/while/lstm_cell_10/LeakyRelu?
-sequential_5/lstm_10/while/lstm_cell_10/mul_1Mul3sequential_5/lstm_10/while/lstm_cell_10/Sigmoid:y:0?sequential_5/lstm_10/while/lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2/
-sequential_5/lstm_10/while/lstm_cell_10/mul_1?
-sequential_5/lstm_10/while/lstm_cell_10/add_1AddV2/sequential_5/lstm_10/while/lstm_cell_10/mul:z:01sequential_5/lstm_10/while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2/
-sequential_5/lstm_10/while/lstm_cell_10/add_1?
1sequential_5/lstm_10/while/lstm_cell_10/Sigmoid_2Sigmoid6sequential_5/lstm_10/while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????23
1sequential_5/lstm_10/while/lstm_cell_10/Sigmoid_2?
3sequential_5/lstm_10/while/lstm_cell_10/LeakyRelu_1	LeakyRelu1sequential_5/lstm_10/while/lstm_cell_10/add_1:z:0*(
_output_shapes
:??????????25
3sequential_5/lstm_10/while/lstm_cell_10/LeakyRelu_1?
-sequential_5/lstm_10/while/lstm_cell_10/mul_2Mul5sequential_5/lstm_10/while/lstm_cell_10/Sigmoid_2:y:0Asequential_5/lstm_10/while/lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2/
-sequential_5/lstm_10/while/lstm_cell_10/mul_2?
?sequential_5/lstm_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_5_lstm_10_while_placeholder_1&sequential_5_lstm_10_while_placeholder1sequential_5/lstm_10/while/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype02A
?sequential_5/lstm_10/while/TensorArrayV2Write/TensorListSetItem?
 sequential_5/lstm_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_5/lstm_10/while/add/y?
sequential_5/lstm_10/while/addAddV2&sequential_5_lstm_10_while_placeholder)sequential_5/lstm_10/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_5/lstm_10/while/add?
"sequential_5/lstm_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_5/lstm_10/while/add_1/y?
 sequential_5/lstm_10/while/add_1AddV2Bsequential_5_lstm_10_while_sequential_5_lstm_10_while_loop_counter+sequential_5/lstm_10/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_5/lstm_10/while/add_1?
#sequential_5/lstm_10/while/IdentityIdentity$sequential_5/lstm_10/while/add_1:z:0?^sequential_5/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp>^sequential_5/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp@^sequential_5/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2%
#sequential_5/lstm_10/while/Identity?
%sequential_5/lstm_10/while/Identity_1IdentityHsequential_5_lstm_10_while_sequential_5_lstm_10_while_maximum_iterations?^sequential_5/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp>^sequential_5/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp@^sequential_5/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_10/while/Identity_1?
%sequential_5/lstm_10/while/Identity_2Identity"sequential_5/lstm_10/while/add:z:0?^sequential_5/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp>^sequential_5/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp@^sequential_5/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_10/while/Identity_2?
%sequential_5/lstm_10/while/Identity_3IdentityOsequential_5/lstm_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:0?^sequential_5/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp>^sequential_5/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp@^sequential_5/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_10/while/Identity_3?
%sequential_5/lstm_10/while/Identity_4Identity1sequential_5/lstm_10/while/lstm_cell_10/mul_2:z:0?^sequential_5/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp>^sequential_5/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp@^sequential_5/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2'
%sequential_5/lstm_10/while/Identity_4?
%sequential_5/lstm_10/while/Identity_5Identity1sequential_5/lstm_10/while/lstm_cell_10/add_1:z:0?^sequential_5/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp>^sequential_5/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp@^sequential_5/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2'
%sequential_5/lstm_10/while/Identity_5"S
#sequential_5_lstm_10_while_identity,sequential_5/lstm_10/while/Identity:output:0"W
%sequential_5_lstm_10_while_identity_1.sequential_5/lstm_10/while/Identity_1:output:0"W
%sequential_5_lstm_10_while_identity_2.sequential_5/lstm_10/while/Identity_2:output:0"W
%sequential_5_lstm_10_while_identity_3.sequential_5/lstm_10/while/Identity_3:output:0"W
%sequential_5_lstm_10_while_identity_4.sequential_5/lstm_10/while/Identity_4:output:0"W
%sequential_5_lstm_10_while_identity_5.sequential_5/lstm_10/while/Identity_5:output:0"?
Gsequential_5_lstm_10_while_lstm_cell_10_biasadd_readvariableop_resourceIsequential_5_lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0"?
Hsequential_5_lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resourceJsequential_5_lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0"?
Fsequential_5_lstm_10_while_lstm_cell_10_matmul_readvariableop_resourceHsequential_5_lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0"?
?sequential_5_lstm_10_while_sequential_5_lstm_10_strided_slice_1Asequential_5_lstm_10_while_sequential_5_lstm_10_strided_slice_1_0"?
{sequential_5_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_10_tensorarrayunstack_tensorlistfromtensor}sequential_5_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_10_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2?
>sequential_5/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp>sequential_5/lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp2~
=sequential_5/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp=sequential_5/lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp2?
?sequential_5/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp?sequential_5/lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
-__inference_sequential_5_layer_call_fn_201188

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_2003882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
&sequential_5_lstm_10_while_cond_197972F
Bsequential_5_lstm_10_while_sequential_5_lstm_10_while_loop_counterL
Hsequential_5_lstm_10_while_sequential_5_lstm_10_while_maximum_iterations*
&sequential_5_lstm_10_while_placeholder,
(sequential_5_lstm_10_while_placeholder_1,
(sequential_5_lstm_10_while_placeholder_2,
(sequential_5_lstm_10_while_placeholder_3H
Dsequential_5_lstm_10_while_less_sequential_5_lstm_10_strided_slice_1^
Zsequential_5_lstm_10_while_sequential_5_lstm_10_while_cond_197972___redundant_placeholder0^
Zsequential_5_lstm_10_while_sequential_5_lstm_10_while_cond_197972___redundant_placeholder1^
Zsequential_5_lstm_10_while_sequential_5_lstm_10_while_cond_197972___redundant_placeholder2^
Zsequential_5_lstm_10_while_sequential_5_lstm_10_while_cond_197972___redundant_placeholder3'
#sequential_5_lstm_10_while_identity
?
sequential_5/lstm_10/while/LessLess&sequential_5_lstm_10_while_placeholderDsequential_5_lstm_10_while_less_sequential_5_lstm_10_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_5/lstm_10/while/Less?
#sequential_5/lstm_10/while/IdentityIdentity#sequential_5/lstm_10/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_5/lstm_10/while/Identity"S
#sequential_5_lstm_10_while_identity,sequential_5/lstm_10/while/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
??
?

H__inference_sequential_5_layer_call_and_return_conditional_losses_201122

inputs7
3lstm_10_lstm_cell_10_matmul_readvariableop_resource9
5lstm_10_lstm_cell_10_matmul_1_readvariableop_resource8
4lstm_10_lstm_cell_10_biasadd_readvariableop_resource7
3lstm_11_lstm_cell_11_matmul_readvariableop_resource9
5lstm_11_lstm_cell_11_matmul_1_readvariableop_resource8
4lstm_11_lstm_cell_11_biasadd_readvariableop_resource+
'dense_20_matmul_readvariableop_resource,
(dense_20_biasadd_readvariableop_resource+
'dense_21_matmul_readvariableop_resource,
(dense_21_biasadd_readvariableop_resource+
'dense_22_matmul_readvariableop_resource,
(dense_22_biasadd_readvariableop_resource+
'dense_23_matmul_readvariableop_resource,
(dense_23_biasadd_readvariableop_resource
identity??dense_20/BiasAdd/ReadVariableOp?dense_20/MatMul/ReadVariableOp?dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?dense_22/BiasAdd/ReadVariableOp?dense_22/MatMul/ReadVariableOp?dense_23/BiasAdd/ReadVariableOp?dense_23/MatMul/ReadVariableOp?+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp?*lstm_10/lstm_cell_10/MatMul/ReadVariableOp?,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp?lstm_10/while?+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp?*lstm_11/lstm_cell_11/MatMul/ReadVariableOp?,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp?lstm_11/whileT
lstm_10/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_10/Shape?
lstm_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice/stack?
lstm_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_10/strided_slice/stack_1?
lstm_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_10/strided_slice/stack_2?
lstm_10/strided_sliceStridedSlicelstm_10/Shape:output:0$lstm_10/strided_slice/stack:output:0&lstm_10/strided_slice/stack_1:output:0&lstm_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_10/strided_slicem
lstm_10/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_10/zeros/mul/y?
lstm_10/zeros/mulMullstm_10/strided_slice:output:0lstm_10/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros/mulo
lstm_10/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_10/zeros/Less/y?
lstm_10/zeros/LessLesslstm_10/zeros/mul:z:0lstm_10/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros/Lesss
lstm_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_10/zeros/packed/1?
lstm_10/zeros/packedPacklstm_10/strided_slice:output:0lstm_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_10/zeros/packedo
lstm_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/zeros/Const?
lstm_10/zerosFilllstm_10/zeros/packed:output:0lstm_10/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_10/zerosq
lstm_10/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_10/zeros_1/mul/y?
lstm_10/zeros_1/mulMullstm_10/strided_slice:output:0lstm_10/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros_1/muls
lstm_10/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_10/zeros_1/Less/y?
lstm_10/zeros_1/LessLesslstm_10/zeros_1/mul:z:0lstm_10/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros_1/Lessw
lstm_10/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_10/zeros_1/packed/1?
lstm_10/zeros_1/packedPacklstm_10/strided_slice:output:0!lstm_10/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_10/zeros_1/packeds
lstm_10/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/zeros_1/Const?
lstm_10/zeros_1Filllstm_10/zeros_1/packed:output:0lstm_10/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_10/zeros_1?
lstm_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_10/transpose/perm?
lstm_10/transpose	Transposeinputslstm_10/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_10/transposeg
lstm_10/Shape_1Shapelstm_10/transpose:y:0*
T0*
_output_shapes
:2
lstm_10/Shape_1?
lstm_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice_1/stack?
lstm_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_1/stack_1?
lstm_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_1/stack_2?
lstm_10/strided_slice_1StridedSlicelstm_10/Shape_1:output:0&lstm_10/strided_slice_1/stack:output:0(lstm_10/strided_slice_1/stack_1:output:0(lstm_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_10/strided_slice_1?
#lstm_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_10/TensorArrayV2/element_shape?
lstm_10/TensorArrayV2TensorListReserve,lstm_10/TensorArrayV2/element_shape:output:0 lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_10/TensorArrayV2?
=lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_10/transpose:y:0Flstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_10/TensorArrayUnstack/TensorListFromTensor?
lstm_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice_2/stack?
lstm_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_2/stack_1?
lstm_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_2/stack_2?
lstm_10/strided_slice_2StridedSlicelstm_10/transpose:y:0&lstm_10/strided_slice_2/stack:output:0(lstm_10/strided_slice_2/stack_1:output:0(lstm_10/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_10/strided_slice_2?
*lstm_10/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3lstm_10_lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*lstm_10/lstm_cell_10/MatMul/ReadVariableOp?
lstm_10/lstm_cell_10/MatMulMatMul lstm_10/strided_slice_2:output:02lstm_10/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/MatMul?
,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5lstm_10_lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp?
lstm_10/lstm_cell_10/MatMul_1MatMullstm_10/zeros:output:04lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/MatMul_1?
lstm_10/lstm_cell_10/addAddV2%lstm_10/lstm_cell_10/MatMul:product:0'lstm_10/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/add?
+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4lstm_10_lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp?
lstm_10/lstm_cell_10/BiasAddBiasAddlstm_10/lstm_cell_10/add:z:03lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/BiasAddz
lstm_10/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/lstm_cell_10/Const?
$lstm_10/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_10/lstm_cell_10/split/split_dim?
lstm_10/lstm_cell_10/splitSplit-lstm_10/lstm_cell_10/split/split_dim:output:0%lstm_10/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_10/lstm_cell_10/split?
lstm_10/lstm_cell_10/SigmoidSigmoid#lstm_10/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/Sigmoid?
lstm_10/lstm_cell_10/Sigmoid_1Sigmoid#lstm_10/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2 
lstm_10/lstm_cell_10/Sigmoid_1?
lstm_10/lstm_cell_10/mulMul"lstm_10/lstm_cell_10/Sigmoid_1:y:0lstm_10/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/mul?
lstm_10/lstm_cell_10/LeakyRelu	LeakyRelu#lstm_10/lstm_cell_10/split:output:2*(
_output_shapes
:??????????2 
lstm_10/lstm_cell_10/LeakyRelu?
lstm_10/lstm_cell_10/mul_1Mul lstm_10/lstm_cell_10/Sigmoid:y:0,lstm_10/lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/mul_1?
lstm_10/lstm_cell_10/add_1AddV2lstm_10/lstm_cell_10/mul:z:0lstm_10/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/add_1?
lstm_10/lstm_cell_10/Sigmoid_2Sigmoid#lstm_10/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2 
lstm_10/lstm_cell_10/Sigmoid_2?
 lstm_10/lstm_cell_10/LeakyRelu_1	LeakyRelulstm_10/lstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2"
 lstm_10/lstm_cell_10/LeakyRelu_1?
lstm_10/lstm_cell_10/mul_2Mul"lstm_10/lstm_cell_10/Sigmoid_2:y:0.lstm_10/lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/mul_2?
%lstm_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2'
%lstm_10/TensorArrayV2_1/element_shape?
lstm_10/TensorArrayV2_1TensorListReserve.lstm_10/TensorArrayV2_1/element_shape:output:0 lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_10/TensorArrayV2_1^
lstm_10/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/time?
 lstm_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_10/while/maximum_iterationsz
lstm_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/while/loop_counter?
lstm_10/whileWhile#lstm_10/while/loop_counter:output:0)lstm_10/while/maximum_iterations:output:0lstm_10/time:output:0 lstm_10/TensorArrayV2_1:handle:0lstm_10/zeros:output:0lstm_10/zeros_1:output:0 lstm_10/strided_slice_1:output:0?lstm_10/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_10_lstm_cell_10_matmul_readvariableop_resource5lstm_10_lstm_cell_10_matmul_1_readvariableop_resource4lstm_10_lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_10_while_body_200860*%
condR
lstm_10_while_cond_200859*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_10/while?
8lstm_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2:
8lstm_10/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_10/TensorArrayV2Stack/TensorListStackTensorListStacklstm_10/while:output:3Alstm_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02,
*lstm_10/TensorArrayV2Stack/TensorListStack?
lstm_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_10/strided_slice_3/stack?
lstm_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_10/strided_slice_3/stack_1?
lstm_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_3/stack_2?
lstm_10/strided_slice_3StridedSlice3lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_10/strided_slice_3/stack:output:0(lstm_10/strided_slice_3/stack_1:output:0(lstm_10/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_10/strided_slice_3?
lstm_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_10/transpose_1/perm?
lstm_10/transpose_1	Transpose3lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_10/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_10/transpose_1v
lstm_10/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/runtimee
lstm_11/ShapeShapelstm_10/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_11/Shape?
lstm_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_11/strided_slice/stack?
lstm_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_11/strided_slice/stack_1?
lstm_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_11/strided_slice/stack_2?
lstm_11/strided_sliceStridedSlicelstm_11/Shape:output:0$lstm_11/strided_slice/stack:output:0&lstm_11/strided_slice/stack_1:output:0&lstm_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_11/strided_slicem
lstm_11/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_11/zeros/mul/y?
lstm_11/zeros/mulMullstm_11/strided_slice:output:0lstm_11/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_11/zeros/mulo
lstm_11/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_11/zeros/Less/y?
lstm_11/zeros/LessLesslstm_11/zeros/mul:z:0lstm_11/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_11/zeros/Lesss
lstm_11/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_11/zeros/packed/1?
lstm_11/zeros/packedPacklstm_11/strided_slice:output:0lstm_11/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_11/zeros/packedo
lstm_11/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_11/zeros/Const?
lstm_11/zerosFilllstm_11/zeros/packed:output:0lstm_11/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_11/zerosq
lstm_11/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_11/zeros_1/mul/y?
lstm_11/zeros_1/mulMullstm_11/strided_slice:output:0lstm_11/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_11/zeros_1/muls
lstm_11/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_11/zeros_1/Less/y?
lstm_11/zeros_1/LessLesslstm_11/zeros_1/mul:z:0lstm_11/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_11/zeros_1/Lessw
lstm_11/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_11/zeros_1/packed/1?
lstm_11/zeros_1/packedPacklstm_11/strided_slice:output:0!lstm_11/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_11/zeros_1/packeds
lstm_11/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_11/zeros_1/Const?
lstm_11/zeros_1Filllstm_11/zeros_1/packed:output:0lstm_11/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_11/zeros_1?
lstm_11/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_11/transpose/perm?
lstm_11/transpose	Transposelstm_10/transpose_1:y:0lstm_11/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_11/transposeg
lstm_11/Shape_1Shapelstm_11/transpose:y:0*
T0*
_output_shapes
:2
lstm_11/Shape_1?
lstm_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_11/strided_slice_1/stack?
lstm_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_1/stack_1?
lstm_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_1/stack_2?
lstm_11/strided_slice_1StridedSlicelstm_11/Shape_1:output:0&lstm_11/strided_slice_1/stack:output:0(lstm_11/strided_slice_1/stack_1:output:0(lstm_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_11/strided_slice_1?
#lstm_11/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_11/TensorArrayV2/element_shape?
lstm_11/TensorArrayV2TensorListReserve,lstm_11/TensorArrayV2/element_shape:output:0 lstm_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_11/TensorArrayV2?
=lstm_11/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2?
=lstm_11/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_11/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_11/transpose:y:0Flstm_11/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_11/TensorArrayUnstack/TensorListFromTensor?
lstm_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_11/strided_slice_2/stack?
lstm_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_2/stack_1?
lstm_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_2/stack_2?
lstm_11/strided_slice_2StridedSlicelstm_11/transpose:y:0&lstm_11/strided_slice_2/stack:output:0(lstm_11/strided_slice_2/stack_1:output:0(lstm_11/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_11/strided_slice_2?
*lstm_11/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3lstm_11_lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*lstm_11/lstm_cell_11/MatMul/ReadVariableOp?
lstm_11/lstm_cell_11/MatMulMatMul lstm_11/strided_slice_2:output:02lstm_11/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/MatMul?
,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5lstm_11_lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp?
lstm_11/lstm_cell_11/MatMul_1MatMullstm_11/zeros:output:04lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/MatMul_1?
lstm_11/lstm_cell_11/addAddV2%lstm_11/lstm_cell_11/MatMul:product:0'lstm_11/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/add?
+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4lstm_11_lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp?
lstm_11/lstm_cell_11/BiasAddBiasAddlstm_11/lstm_cell_11/add:z:03lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/BiasAddz
lstm_11/lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/lstm_cell_11/Const?
$lstm_11/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_11/lstm_cell_11/split/split_dim?
lstm_11/lstm_cell_11/splitSplit-lstm_11/lstm_cell_11/split/split_dim:output:0%lstm_11/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_11/lstm_cell_11/split?
lstm_11/lstm_cell_11/SigmoidSigmoid#lstm_11/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/Sigmoid?
lstm_11/lstm_cell_11/Sigmoid_1Sigmoid#lstm_11/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2 
lstm_11/lstm_cell_11/Sigmoid_1?
lstm_11/lstm_cell_11/mulMul"lstm_11/lstm_cell_11/Sigmoid_1:y:0lstm_11/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/mul?
lstm_11/lstm_cell_11/LeakyRelu	LeakyRelu#lstm_11/lstm_cell_11/split:output:2*(
_output_shapes
:??????????2 
lstm_11/lstm_cell_11/LeakyRelu?
lstm_11/lstm_cell_11/mul_1Mul lstm_11/lstm_cell_11/Sigmoid:y:0,lstm_11/lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/mul_1?
lstm_11/lstm_cell_11/add_1AddV2lstm_11/lstm_cell_11/mul:z:0lstm_11/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/add_1?
lstm_11/lstm_cell_11/Sigmoid_2Sigmoid#lstm_11/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2 
lstm_11/lstm_cell_11/Sigmoid_2?
 lstm_11/lstm_cell_11/LeakyRelu_1	LeakyRelulstm_11/lstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2"
 lstm_11/lstm_cell_11/LeakyRelu_1?
lstm_11/lstm_cell_11/mul_2Mul"lstm_11/lstm_cell_11/Sigmoid_2:y:0.lstm_11/lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/mul_2?
%lstm_11/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2'
%lstm_11/TensorArrayV2_1/element_shape?
lstm_11/TensorArrayV2_1TensorListReserve.lstm_11/TensorArrayV2_1/element_shape:output:0 lstm_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_11/TensorArrayV2_1^
lstm_11/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_11/time?
 lstm_11/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_11/while/maximum_iterationsz
lstm_11/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_11/while/loop_counter?
lstm_11/whileWhile#lstm_11/while/loop_counter:output:0)lstm_11/while/maximum_iterations:output:0lstm_11/time:output:0 lstm_11/TensorArrayV2_1:handle:0lstm_11/zeros:output:0lstm_11/zeros_1:output:0 lstm_11/strided_slice_1:output:0?lstm_11/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_11_lstm_cell_11_matmul_readvariableop_resource5lstm_11_lstm_cell_11_matmul_1_readvariableop_resource4lstm_11_lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_11_while_body_201009*%
condR
lstm_11_while_cond_201008*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_11/while?
8lstm_11/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2:
8lstm_11/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_11/TensorArrayV2Stack/TensorListStackTensorListStacklstm_11/while:output:3Alstm_11/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02,
*lstm_11/TensorArrayV2Stack/TensorListStack?
lstm_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_11/strided_slice_3/stack?
lstm_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_11/strided_slice_3/stack_1?
lstm_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_3/stack_2?
lstm_11/strided_slice_3StridedSlice3lstm_11/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_11/strided_slice_3/stack:output:0(lstm_11/strided_slice_3/stack_1:output:0(lstm_11/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_11/strided_slice_3?
lstm_11/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_11/transpose_1/perm?
lstm_11/transpose_1	Transpose3lstm_11/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_11/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_11/transpose_1v
lstm_11/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_11/runtime?
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_20/MatMul/ReadVariableOp?
dense_20/MatMulMatMul lstm_11/strided_slice_3:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_20/MatMul?
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_20/BiasAdd/ReadVariableOp?
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_20/BiasAddz
dense_20/LeakyRelu	LeakyReludense_20/BiasAdd:output:0*(
_output_shapes
:??????????2
dense_20/LeakyRelu?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02 
dense_21/MatMul/ReadVariableOp?
dense_21/MatMulMatMul dense_20/LeakyRelu:activations:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_21/MatMul?
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_21/BiasAdd/ReadVariableOp?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_21/BiasAddy
dense_21/LeakyRelu	LeakyReludense_21/BiasAdd:output:0*'
_output_shapes
:?????????d2
dense_21/LeakyRelu?
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02 
dense_22/MatMul/ReadVariableOp?
dense_22/MatMulMatMul dense_21/LeakyRelu:activations:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_22/MatMul?
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_22/BiasAdd/ReadVariableOp?
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_22/BiasAddy
dense_22/LeakyRelu	LeakyReludense_22/BiasAdd:output:0*'
_output_shapes
:?????????22
dense_22/LeakyRelu?
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_23/MatMul/ReadVariableOp?
dense_23/MatMulMatMul dense_22/LeakyRelu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_23/MatMul?
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOp?
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_23/BiasAddy
dense_23/LeakyRelu	LeakyReludense_23/BiasAdd:output:0*'
_output_shapes
:?????????2
dense_23/LeakyRelu?
IdentityIdentity dense_23/LeakyRelu:activations:0 ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp,^lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp+^lstm_10/lstm_cell_10/MatMul/ReadVariableOp-^lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp^lstm_10/while,^lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp+^lstm_11/lstm_cell_11/MatMul/ReadVariableOp-^lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp^lstm_11/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2Z
+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp2X
*lstm_10/lstm_cell_10/MatMul/ReadVariableOp*lstm_10/lstm_cell_10/MatMul/ReadVariableOp2\
,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp2
lstm_10/whilelstm_10/while2Z
+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp2X
*lstm_11/lstm_cell_11/MatMul/ReadVariableOp*lstm_11/lstm_cell_11/MatMul/ReadVariableOp2\
,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp2
lstm_11/whilelstm_11/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_199244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_199244___redundant_placeholder04
0while_while_cond_199244___redundant_placeholder14
0while_while_cond_199244___redundant_placeholder24
0while_while_cond_199244___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
(__inference_lstm_11_layer_call_fn_202500
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_11_layer_call_and_return_conditional_losses_1994462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_202646

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul]
	LeakyRelu	LeakyRelusplit:output:2*(
_output_shapes
:??????????2
	LeakyRelun
mul_1MulSigmoid:y:0LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2\
LeakyRelu_1	LeakyRelu	add_1:z:0*(
_output_shapes
:??????????2
LeakyRelu_1r
mul_2MulSigmoid_2:y:0LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?!
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_200238
lstm_10_input
lstm_10_199787
lstm_10_199789
lstm_10_199791
lstm_11_200122
lstm_11_200124
lstm_11_200126
dense_20_200151
dense_20_200153
dense_21_200178
dense_21_200180
dense_22_200205
dense_22_200207
dense_23_200232
dense_23_200234
identity?? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?lstm_10/StatefulPartitionedCall?lstm_11/StatefulPartitionedCall?
lstm_10/StatefulPartitionedCallStatefulPartitionedCalllstm_10_inputlstm_10_199787lstm_10_199789lstm_10_199791*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_10_layer_call_and_return_conditional_losses_1996112!
lstm_10/StatefulPartitionedCall?
lstm_11/StatefulPartitionedCallStatefulPartitionedCall(lstm_10/StatefulPartitionedCall:output:0lstm_11_200122lstm_11_200124lstm_11_200126*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_11_layer_call_and_return_conditional_losses_1999462!
lstm_11/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_11/StatefulPartitionedCall:output:0dense_20_200151dense_20_200153*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_2001402"
 dense_20/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_200178dense_21_200180*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_2001672"
 dense_21/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_200205dense_22_200207*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_2001942"
 dense_22/StatefulPartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_200232dense_23_200234*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_2002212"
 dense_23/StatefulPartitionedCall?
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall ^lstm_10/StatefulPartitionedCall ^lstm_11/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2B
lstm_10/StatefulPartitionedCalllstm_10/StatefulPartitionedCall2B
lstm_11/StatefulPartitionedCalllstm_11/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_10_input
?
~
)__inference_dense_20_layer_call_fn_202520

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_2001402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_lstm_cell_11_layer_call_fn_202780

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_1989512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:??????????:??????????:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?
?
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_198341

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul]
	LeakyRelu	LeakyRelusplit:output:2*(
_output_shapes
:??????????2
	LeakyRelun
mul_1MulSigmoid:y:0LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2\
LeakyRelu_1	LeakyRelu	add_1:z:0*(
_output_shapes
:??????????2
LeakyRelu_1r
mul_2MulSigmoid_2:y:0LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
??
?

H__inference_sequential_5_layer_call_and_return_conditional_losses_200792

inputs7
3lstm_10_lstm_cell_10_matmul_readvariableop_resource9
5lstm_10_lstm_cell_10_matmul_1_readvariableop_resource8
4lstm_10_lstm_cell_10_biasadd_readvariableop_resource7
3lstm_11_lstm_cell_11_matmul_readvariableop_resource9
5lstm_11_lstm_cell_11_matmul_1_readvariableop_resource8
4lstm_11_lstm_cell_11_biasadd_readvariableop_resource+
'dense_20_matmul_readvariableop_resource,
(dense_20_biasadd_readvariableop_resource+
'dense_21_matmul_readvariableop_resource,
(dense_21_biasadd_readvariableop_resource+
'dense_22_matmul_readvariableop_resource,
(dense_22_biasadd_readvariableop_resource+
'dense_23_matmul_readvariableop_resource,
(dense_23_biasadd_readvariableop_resource
identity??dense_20/BiasAdd/ReadVariableOp?dense_20/MatMul/ReadVariableOp?dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?dense_22/BiasAdd/ReadVariableOp?dense_22/MatMul/ReadVariableOp?dense_23/BiasAdd/ReadVariableOp?dense_23/MatMul/ReadVariableOp?+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp?*lstm_10/lstm_cell_10/MatMul/ReadVariableOp?,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp?lstm_10/while?+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp?*lstm_11/lstm_cell_11/MatMul/ReadVariableOp?,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp?lstm_11/whileT
lstm_10/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_10/Shape?
lstm_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice/stack?
lstm_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_10/strided_slice/stack_1?
lstm_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_10/strided_slice/stack_2?
lstm_10/strided_sliceStridedSlicelstm_10/Shape:output:0$lstm_10/strided_slice/stack:output:0&lstm_10/strided_slice/stack_1:output:0&lstm_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_10/strided_slicem
lstm_10/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_10/zeros/mul/y?
lstm_10/zeros/mulMullstm_10/strided_slice:output:0lstm_10/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros/mulo
lstm_10/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_10/zeros/Less/y?
lstm_10/zeros/LessLesslstm_10/zeros/mul:z:0lstm_10/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros/Lesss
lstm_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_10/zeros/packed/1?
lstm_10/zeros/packedPacklstm_10/strided_slice:output:0lstm_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_10/zeros/packedo
lstm_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/zeros/Const?
lstm_10/zerosFilllstm_10/zeros/packed:output:0lstm_10/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_10/zerosq
lstm_10/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_10/zeros_1/mul/y?
lstm_10/zeros_1/mulMullstm_10/strided_slice:output:0lstm_10/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros_1/muls
lstm_10/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_10/zeros_1/Less/y?
lstm_10/zeros_1/LessLesslstm_10/zeros_1/mul:z:0lstm_10/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_10/zeros_1/Lessw
lstm_10/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_10/zeros_1/packed/1?
lstm_10/zeros_1/packedPacklstm_10/strided_slice:output:0!lstm_10/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_10/zeros_1/packeds
lstm_10/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/zeros_1/Const?
lstm_10/zeros_1Filllstm_10/zeros_1/packed:output:0lstm_10/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_10/zeros_1?
lstm_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_10/transpose/perm?
lstm_10/transpose	Transposeinputslstm_10/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_10/transposeg
lstm_10/Shape_1Shapelstm_10/transpose:y:0*
T0*
_output_shapes
:2
lstm_10/Shape_1?
lstm_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice_1/stack?
lstm_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_1/stack_1?
lstm_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_1/stack_2?
lstm_10/strided_slice_1StridedSlicelstm_10/Shape_1:output:0&lstm_10/strided_slice_1/stack:output:0(lstm_10/strided_slice_1/stack_1:output:0(lstm_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_10/strided_slice_1?
#lstm_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_10/TensorArrayV2/element_shape?
lstm_10/TensorArrayV2TensorListReserve,lstm_10/TensorArrayV2/element_shape:output:0 lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_10/TensorArrayV2?
=lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_10/transpose:y:0Flstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_10/TensorArrayUnstack/TensorListFromTensor?
lstm_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_10/strided_slice_2/stack?
lstm_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_2/stack_1?
lstm_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_2/stack_2?
lstm_10/strided_slice_2StridedSlicelstm_10/transpose:y:0&lstm_10/strided_slice_2/stack:output:0(lstm_10/strided_slice_2/stack_1:output:0(lstm_10/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_10/strided_slice_2?
*lstm_10/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3lstm_10_lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*lstm_10/lstm_cell_10/MatMul/ReadVariableOp?
lstm_10/lstm_cell_10/MatMulMatMul lstm_10/strided_slice_2:output:02lstm_10/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/MatMul?
,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5lstm_10_lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp?
lstm_10/lstm_cell_10/MatMul_1MatMullstm_10/zeros:output:04lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/MatMul_1?
lstm_10/lstm_cell_10/addAddV2%lstm_10/lstm_cell_10/MatMul:product:0'lstm_10/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/add?
+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4lstm_10_lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp?
lstm_10/lstm_cell_10/BiasAddBiasAddlstm_10/lstm_cell_10/add:z:03lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/BiasAddz
lstm_10/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/lstm_cell_10/Const?
$lstm_10/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_10/lstm_cell_10/split/split_dim?
lstm_10/lstm_cell_10/splitSplit-lstm_10/lstm_cell_10/split/split_dim:output:0%lstm_10/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_10/lstm_cell_10/split?
lstm_10/lstm_cell_10/SigmoidSigmoid#lstm_10/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/Sigmoid?
lstm_10/lstm_cell_10/Sigmoid_1Sigmoid#lstm_10/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2 
lstm_10/lstm_cell_10/Sigmoid_1?
lstm_10/lstm_cell_10/mulMul"lstm_10/lstm_cell_10/Sigmoid_1:y:0lstm_10/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/mul?
lstm_10/lstm_cell_10/LeakyRelu	LeakyRelu#lstm_10/lstm_cell_10/split:output:2*(
_output_shapes
:??????????2 
lstm_10/lstm_cell_10/LeakyRelu?
lstm_10/lstm_cell_10/mul_1Mul lstm_10/lstm_cell_10/Sigmoid:y:0,lstm_10/lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/mul_1?
lstm_10/lstm_cell_10/add_1AddV2lstm_10/lstm_cell_10/mul:z:0lstm_10/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/add_1?
lstm_10/lstm_cell_10/Sigmoid_2Sigmoid#lstm_10/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2 
lstm_10/lstm_cell_10/Sigmoid_2?
 lstm_10/lstm_cell_10/LeakyRelu_1	LeakyRelulstm_10/lstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2"
 lstm_10/lstm_cell_10/LeakyRelu_1?
lstm_10/lstm_cell_10/mul_2Mul"lstm_10/lstm_cell_10/Sigmoid_2:y:0.lstm_10/lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_10/lstm_cell_10/mul_2?
%lstm_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2'
%lstm_10/TensorArrayV2_1/element_shape?
lstm_10/TensorArrayV2_1TensorListReserve.lstm_10/TensorArrayV2_1/element_shape:output:0 lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_10/TensorArrayV2_1^
lstm_10/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/time?
 lstm_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_10/while/maximum_iterationsz
lstm_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_10/while/loop_counter?
lstm_10/whileWhile#lstm_10/while/loop_counter:output:0)lstm_10/while/maximum_iterations:output:0lstm_10/time:output:0 lstm_10/TensorArrayV2_1:handle:0lstm_10/zeros:output:0lstm_10/zeros_1:output:0 lstm_10/strided_slice_1:output:0?lstm_10/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_10_lstm_cell_10_matmul_readvariableop_resource5lstm_10_lstm_cell_10_matmul_1_readvariableop_resource4lstm_10_lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_10_while_body_200530*%
condR
lstm_10_while_cond_200529*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_10/while?
8lstm_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2:
8lstm_10/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_10/TensorArrayV2Stack/TensorListStackTensorListStacklstm_10/while:output:3Alstm_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02,
*lstm_10/TensorArrayV2Stack/TensorListStack?
lstm_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_10/strided_slice_3/stack?
lstm_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_10/strided_slice_3/stack_1?
lstm_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_10/strided_slice_3/stack_2?
lstm_10/strided_slice_3StridedSlice3lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_10/strided_slice_3/stack:output:0(lstm_10/strided_slice_3/stack_1:output:0(lstm_10/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_10/strided_slice_3?
lstm_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_10/transpose_1/perm?
lstm_10/transpose_1	Transpose3lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_10/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_10/transpose_1v
lstm_10/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_10/runtimee
lstm_11/ShapeShapelstm_10/transpose_1:y:0*
T0*
_output_shapes
:2
lstm_11/Shape?
lstm_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_11/strided_slice/stack?
lstm_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_11/strided_slice/stack_1?
lstm_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_11/strided_slice/stack_2?
lstm_11/strided_sliceStridedSlicelstm_11/Shape:output:0$lstm_11/strided_slice/stack:output:0&lstm_11/strided_slice/stack_1:output:0&lstm_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_11/strided_slicem
lstm_11/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_11/zeros/mul/y?
lstm_11/zeros/mulMullstm_11/strided_slice:output:0lstm_11/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_11/zeros/mulo
lstm_11/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_11/zeros/Less/y?
lstm_11/zeros/LessLesslstm_11/zeros/mul:z:0lstm_11/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_11/zeros/Lesss
lstm_11/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_11/zeros/packed/1?
lstm_11/zeros/packedPacklstm_11/strided_slice:output:0lstm_11/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_11/zeros/packedo
lstm_11/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_11/zeros/Const?
lstm_11/zerosFilllstm_11/zeros/packed:output:0lstm_11/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_11/zerosq
lstm_11/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_11/zeros_1/mul/y?
lstm_11/zeros_1/mulMullstm_11/strided_slice:output:0lstm_11/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_11/zeros_1/muls
lstm_11/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_11/zeros_1/Less/y?
lstm_11/zeros_1/LessLesslstm_11/zeros_1/mul:z:0lstm_11/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_11/zeros_1/Lessw
lstm_11/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_11/zeros_1/packed/1?
lstm_11/zeros_1/packedPacklstm_11/strided_slice:output:0!lstm_11/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_11/zeros_1/packeds
lstm_11/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_11/zeros_1/Const?
lstm_11/zeros_1Filllstm_11/zeros_1/packed:output:0lstm_11/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_11/zeros_1?
lstm_11/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_11/transpose/perm?
lstm_11/transpose	Transposelstm_10/transpose_1:y:0lstm_11/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_11/transposeg
lstm_11/Shape_1Shapelstm_11/transpose:y:0*
T0*
_output_shapes
:2
lstm_11/Shape_1?
lstm_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_11/strided_slice_1/stack?
lstm_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_1/stack_1?
lstm_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_1/stack_2?
lstm_11/strided_slice_1StridedSlicelstm_11/Shape_1:output:0&lstm_11/strided_slice_1/stack:output:0(lstm_11/strided_slice_1/stack_1:output:0(lstm_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_11/strided_slice_1?
#lstm_11/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_11/TensorArrayV2/element_shape?
lstm_11/TensorArrayV2TensorListReserve,lstm_11/TensorArrayV2/element_shape:output:0 lstm_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_11/TensorArrayV2?
=lstm_11/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2?
=lstm_11/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_11/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_11/transpose:y:0Flstm_11/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_11/TensorArrayUnstack/TensorListFromTensor?
lstm_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_11/strided_slice_2/stack?
lstm_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_2/stack_1?
lstm_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_2/stack_2?
lstm_11/strided_slice_2StridedSlicelstm_11/transpose:y:0&lstm_11/strided_slice_2/stack:output:0(lstm_11/strided_slice_2/stack_1:output:0(lstm_11/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_11/strided_slice_2?
*lstm_11/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3lstm_11_lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*lstm_11/lstm_cell_11/MatMul/ReadVariableOp?
lstm_11/lstm_cell_11/MatMulMatMul lstm_11/strided_slice_2:output:02lstm_11/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/MatMul?
,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5lstm_11_lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp?
lstm_11/lstm_cell_11/MatMul_1MatMullstm_11/zeros:output:04lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/MatMul_1?
lstm_11/lstm_cell_11/addAddV2%lstm_11/lstm_cell_11/MatMul:product:0'lstm_11/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/add?
+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4lstm_11_lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp?
lstm_11/lstm_cell_11/BiasAddBiasAddlstm_11/lstm_cell_11/add:z:03lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/BiasAddz
lstm_11/lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/lstm_cell_11/Const?
$lstm_11/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_11/lstm_cell_11/split/split_dim?
lstm_11/lstm_cell_11/splitSplit-lstm_11/lstm_cell_11/split/split_dim:output:0%lstm_11/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_11/lstm_cell_11/split?
lstm_11/lstm_cell_11/SigmoidSigmoid#lstm_11/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/Sigmoid?
lstm_11/lstm_cell_11/Sigmoid_1Sigmoid#lstm_11/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2 
lstm_11/lstm_cell_11/Sigmoid_1?
lstm_11/lstm_cell_11/mulMul"lstm_11/lstm_cell_11/Sigmoid_1:y:0lstm_11/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/mul?
lstm_11/lstm_cell_11/LeakyRelu	LeakyRelu#lstm_11/lstm_cell_11/split:output:2*(
_output_shapes
:??????????2 
lstm_11/lstm_cell_11/LeakyRelu?
lstm_11/lstm_cell_11/mul_1Mul lstm_11/lstm_cell_11/Sigmoid:y:0,lstm_11/lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/mul_1?
lstm_11/lstm_cell_11/add_1AddV2lstm_11/lstm_cell_11/mul:z:0lstm_11/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/add_1?
lstm_11/lstm_cell_11/Sigmoid_2Sigmoid#lstm_11/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2 
lstm_11/lstm_cell_11/Sigmoid_2?
 lstm_11/lstm_cell_11/LeakyRelu_1	LeakyRelulstm_11/lstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2"
 lstm_11/lstm_cell_11/LeakyRelu_1?
lstm_11/lstm_cell_11/mul_2Mul"lstm_11/lstm_cell_11/Sigmoid_2:y:0.lstm_11/lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_11/lstm_cell_11/mul_2?
%lstm_11/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2'
%lstm_11/TensorArrayV2_1/element_shape?
lstm_11/TensorArrayV2_1TensorListReserve.lstm_11/TensorArrayV2_1/element_shape:output:0 lstm_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_11/TensorArrayV2_1^
lstm_11/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_11/time?
 lstm_11/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_11/while/maximum_iterationsz
lstm_11/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_11/while/loop_counter?
lstm_11/whileWhile#lstm_11/while/loop_counter:output:0)lstm_11/while/maximum_iterations:output:0lstm_11/time:output:0 lstm_11/TensorArrayV2_1:handle:0lstm_11/zeros:output:0lstm_11/zeros_1:output:0 lstm_11/strided_slice_1:output:0?lstm_11/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_11_lstm_cell_11_matmul_readvariableop_resource5lstm_11_lstm_cell_11_matmul_1_readvariableop_resource4lstm_11_lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_11_while_body_200679*%
condR
lstm_11_while_cond_200678*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_11/while?
8lstm_11/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2:
8lstm_11/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_11/TensorArrayV2Stack/TensorListStackTensorListStacklstm_11/while:output:3Alstm_11/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02,
*lstm_11/TensorArrayV2Stack/TensorListStack?
lstm_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_11/strided_slice_3/stack?
lstm_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_11/strided_slice_3/stack_1?
lstm_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_11/strided_slice_3/stack_2?
lstm_11/strided_slice_3StridedSlice3lstm_11/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_11/strided_slice_3/stack:output:0(lstm_11/strided_slice_3/stack_1:output:0(lstm_11/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_11/strided_slice_3?
lstm_11/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_11/transpose_1/perm?
lstm_11/transpose_1	Transpose3lstm_11/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_11/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_11/transpose_1v
lstm_11/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_11/runtime?
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_20/MatMul/ReadVariableOp?
dense_20/MatMulMatMul lstm_11/strided_slice_3:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_20/MatMul?
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_20/BiasAdd/ReadVariableOp?
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_20/BiasAddz
dense_20/LeakyRelu	LeakyReludense_20/BiasAdd:output:0*(
_output_shapes
:??????????2
dense_20/LeakyRelu?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02 
dense_21/MatMul/ReadVariableOp?
dense_21/MatMulMatMul dense_20/LeakyRelu:activations:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_21/MatMul?
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_21/BiasAdd/ReadVariableOp?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_21/BiasAddy
dense_21/LeakyRelu	LeakyReludense_21/BiasAdd:output:0*'
_output_shapes
:?????????d2
dense_21/LeakyRelu?
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02 
dense_22/MatMul/ReadVariableOp?
dense_22/MatMulMatMul dense_21/LeakyRelu:activations:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_22/MatMul?
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_22/BiasAdd/ReadVariableOp?
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_22/BiasAddy
dense_22/LeakyRelu	LeakyReludense_22/BiasAdd:output:0*'
_output_shapes
:?????????22
dense_22/LeakyRelu?
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_23/MatMul/ReadVariableOp?
dense_23/MatMulMatMul dense_22/LeakyRelu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_23/MatMul?
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOp?
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_23/BiasAddy
dense_23/LeakyRelu	LeakyReludense_23/BiasAdd:output:0*'
_output_shapes
:?????????2
dense_23/LeakyRelu?
IdentityIdentity dense_23/LeakyRelu:activations:0 ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp,^lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp+^lstm_10/lstm_cell_10/MatMul/ReadVariableOp-^lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp^lstm_10/while,^lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp+^lstm_11/lstm_cell_11/MatMul/ReadVariableOp-^lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp^lstm_11/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2Z
+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp+lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp2X
*lstm_10/lstm_cell_10/MatMul/ReadVariableOp*lstm_10/lstm_cell_10/MatMul/ReadVariableOp2\
,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp,lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp2
lstm_10/whilelstm_10/while2Z
+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp+lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp2X
*lstm_11/lstm_cell_11/MatMul/ReadVariableOp*lstm_11/lstm_cell_11/MatMul/ReadVariableOp2\
,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp,lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp2
lstm_11/whilelstm_11/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_200388

inputs
lstm_10_200353
lstm_10_200355
lstm_10_200357
lstm_11_200360
lstm_11_200362
lstm_11_200364
dense_20_200367
dense_20_200369
dense_21_200372
dense_21_200374
dense_22_200377
dense_22_200379
dense_23_200382
dense_23_200384
identity?? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?lstm_10/StatefulPartitionedCall?lstm_11/StatefulPartitionedCall?
lstm_10/StatefulPartitionedCallStatefulPartitionedCallinputslstm_10_200353lstm_10_200355lstm_10_200357*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_10_layer_call_and_return_conditional_losses_1997642!
lstm_10/StatefulPartitionedCall?
lstm_11/StatefulPartitionedCallStatefulPartitionedCall(lstm_10/StatefulPartitionedCall:output:0lstm_11_200360lstm_11_200362lstm_11_200364*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_11_layer_call_and_return_conditional_losses_2000992!
lstm_11/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_11/StatefulPartitionedCall:output:0dense_20_200367dense_20_200369*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_2001402"
 dense_20/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_200372dense_21_200374*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_2001672"
 dense_21/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_200377dense_22_200379*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_2001942"
 dense_22/StatefulPartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_200382dense_23_200384*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_2002212"
 dense_23/StatefulPartitionedCall?
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall ^lstm_10/StatefulPartitionedCall ^lstm_11/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2B
lstm_10/StatefulPartitionedCalllstm_10/StatefulPartitionedCall2B
lstm_11/StatefulPartitionedCalllstm_11/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_198308

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul]
	LeakyRelu	LeakyRelusplit:output:2*(
_output_shapes
:??????????2
	LeakyRelun
mul_1MulSigmoid:y:0LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2\
LeakyRelu_1	LeakyRelu	add_1:z:0*(
_output_shapes
:??????????2
LeakyRelu_1r
mul_2MulSigmoid_2:y:0LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
?
while_cond_201255
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_201255___redundant_placeholder04
0while_while_cond_201255___redundant_placeholder14
0while_while_cond_201255___redundant_placeholder24
0while_while_cond_201255___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
-__inference_sequential_5_layer_call_fn_200419
lstm_10_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_2003882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_10_input
?!
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_200276
lstm_10_input
lstm_10_200241
lstm_10_200243
lstm_10_200245
lstm_11_200248
lstm_11_200250
lstm_11_200252
dense_20_200255
dense_20_200257
dense_21_200260
dense_21_200262
dense_22_200265
dense_22_200267
dense_23_200270
dense_23_200272
identity?? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?lstm_10/StatefulPartitionedCall?lstm_11/StatefulPartitionedCall?
lstm_10/StatefulPartitionedCallStatefulPartitionedCalllstm_10_inputlstm_10_200241lstm_10_200243lstm_10_200245*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_10_layer_call_and_return_conditional_losses_1997642!
lstm_10/StatefulPartitionedCall?
lstm_11/StatefulPartitionedCallStatefulPartitionedCall(lstm_10/StatefulPartitionedCall:output:0lstm_11_200248lstm_11_200250lstm_11_200252*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_11_layer_call_and_return_conditional_losses_2000992!
lstm_11/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_11/StatefulPartitionedCall:output:0dense_20_200255dense_20_200257*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_2001402"
 dense_20/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_200260dense_21_200262*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_2001672"
 dense_21/StatefulPartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_200265dense_22_200267*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_2001942"
 dense_22/StatefulPartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_200270dense_23_200272*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_2002212"
 dense_23/StatefulPartitionedCall?
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall ^lstm_10/StatefulPartitionedCall ^lstm_11/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2B
lstm_10/StatefulPartitionedCalllstm_10/StatefulPartitionedCall2B
lstm_11/StatefulPartitionedCalllstm_11/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_10_input
?C
?
while_body_202240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_11_matmul_readvariableop_resource_09
5while_lstm_cell_11_matmul_1_readvariableop_resource_08
4while_lstm_cell_11_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_11_matmul_readvariableop_resource7
3while_lstm_cell_11_matmul_1_readvariableop_resource6
2while_lstm_cell_11_biasadd_readvariableop_resource??)while/lstm_cell_11/BiasAdd/ReadVariableOp?(while/lstm_cell_11/MatMul/ReadVariableOp?*while/lstm_cell_11/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOp?
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/MatMul?
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOp?
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/MatMul_1?
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/add?
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOp?
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/BiasAddv
while/lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_11/Const?
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim?
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_11/split?
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid?
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid_1?
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul?
while/lstm_cell_11/LeakyRelu	LeakyRelu!while/lstm_cell_11/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_11/LeakyRelu?
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0*while/lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul_1?
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/add_1?
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid_2?
while/lstm_cell_11/LeakyRelu_1	LeakyReluwhile/lstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2 
while/lstm_cell_11/LeakyRelu_1?
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0,while/lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?D
?
C__inference_lstm_11_layer_call_and_return_conditional_losses_199446

inputs
lstm_cell_11_199364
lstm_cell_11_199366
lstm_cell_11_199368
identity??$lstm_cell_11/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_11/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_11_199364lstm_cell_11_199366lstm_cell_11_199368*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_1989512&
$lstm_cell_11/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_11_199364lstm_cell_11_199366lstm_cell_11_199368*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_199377*
condR
while_cond_199376*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_11/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2L
$lstm_cell_11/StatefulPartitionedCall$lstm_cell_11/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?
?
while_cond_198634
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_198634___redundant_placeholder04
0while_while_cond_198634___redundant_placeholder14
0while_while_cond_198634___redundant_placeholder24
0while_while_cond_198634___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
(__inference_lstm_10_layer_call_fn_201844
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_10_layer_call_and_return_conditional_losses_1988362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_199525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_199525___redundant_placeholder04
0while_while_cond_199525___redundant_placeholder14
0while_while_cond_199525___redundant_placeholder24
0while_while_cond_199525___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
lstm_11_while_cond_200678,
(lstm_11_while_lstm_11_while_loop_counter2
.lstm_11_while_lstm_11_while_maximum_iterations
lstm_11_while_placeholder
lstm_11_while_placeholder_1
lstm_11_while_placeholder_2
lstm_11_while_placeholder_3.
*lstm_11_while_less_lstm_11_strided_slice_1D
@lstm_11_while_lstm_11_while_cond_200678___redundant_placeholder0D
@lstm_11_while_lstm_11_while_cond_200678___redundant_placeholder1D
@lstm_11_while_lstm_11_while_cond_200678___redundant_placeholder2D
@lstm_11_while_lstm_11_while_cond_200678___redundant_placeholder3
lstm_11_while_identity
?
lstm_11/while/LessLesslstm_11_while_placeholder*lstm_11_while_less_lstm_11_strided_slice_1*
T0*
_output_shapes
: 2
lstm_11/while/Lessu
lstm_11/while/IdentityIdentitylstm_11/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_11/while/Identity"9
lstm_11_while_identitylstm_11/while/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_199376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_199376___redundant_placeholder04
0while_while_cond_199376___redundant_placeholder14
0while_while_cond_199376___redundant_placeholder24
0while_while_cond_199376___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
-__inference_lstm_cell_10_layer_call_fn_202680

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1983412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?O
?	
lstm_11_while_body_200679,
(lstm_11_while_lstm_11_while_loop_counter2
.lstm_11_while_lstm_11_while_maximum_iterations
lstm_11_while_placeholder
lstm_11_while_placeholder_1
lstm_11_while_placeholder_2
lstm_11_while_placeholder_3+
'lstm_11_while_lstm_11_strided_slice_1_0g
clstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensor_0?
;lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0A
=lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0@
<lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0
lstm_11_while_identity
lstm_11_while_identity_1
lstm_11_while_identity_2
lstm_11_while_identity_3
lstm_11_while_identity_4
lstm_11_while_identity_5)
%lstm_11_while_lstm_11_strided_slice_1e
alstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensor=
9lstm_11_while_lstm_cell_11_matmul_readvariableop_resource?
;lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource>
:lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource??1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp?0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp?2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp?
?lstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2A
?lstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_11/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensor_0lstm_11_while_placeholderHlstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype023
1lstm_11/while/TensorArrayV2Read/TensorListGetItem?
0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp;lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype022
0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp?
!lstm_11/while/lstm_cell_11/MatMulMatMul8lstm_11/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_11/while/lstm_cell_11/MatMul?
2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp=lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype024
2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp?
#lstm_11/while/lstm_cell_11/MatMul_1MatMullstm_11_while_placeholder_2:lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_11/while/lstm_cell_11/MatMul_1?
lstm_11/while/lstm_cell_11/addAddV2+lstm_11/while/lstm_cell_11/MatMul:product:0-lstm_11/while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_11/while/lstm_cell_11/add?
1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp<lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp?
"lstm_11/while/lstm_cell_11/BiasAddBiasAdd"lstm_11/while/lstm_cell_11/add:z:09lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_11/while/lstm_cell_11/BiasAdd?
 lstm_11/while/lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_11/while/lstm_cell_11/Const?
*lstm_11/while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_11/while/lstm_cell_11/split/split_dim?
 lstm_11/while/lstm_cell_11/splitSplit3lstm_11/while/lstm_cell_11/split/split_dim:output:0+lstm_11/while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2"
 lstm_11/while/lstm_cell_11/split?
"lstm_11/while/lstm_cell_11/SigmoidSigmoid)lstm_11/while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2$
"lstm_11/while/lstm_cell_11/Sigmoid?
$lstm_11/while/lstm_cell_11/Sigmoid_1Sigmoid)lstm_11/while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2&
$lstm_11/while/lstm_cell_11/Sigmoid_1?
lstm_11/while/lstm_cell_11/mulMul(lstm_11/while/lstm_cell_11/Sigmoid_1:y:0lstm_11_while_placeholder_3*
T0*(
_output_shapes
:??????????2 
lstm_11/while/lstm_cell_11/mul?
$lstm_11/while/lstm_cell_11/LeakyRelu	LeakyRelu)lstm_11/while/lstm_cell_11/split:output:2*(
_output_shapes
:??????????2&
$lstm_11/while/lstm_cell_11/LeakyRelu?
 lstm_11/while/lstm_cell_11/mul_1Mul&lstm_11/while/lstm_cell_11/Sigmoid:y:02lstm_11/while/lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2"
 lstm_11/while/lstm_cell_11/mul_1?
 lstm_11/while/lstm_cell_11/add_1AddV2"lstm_11/while/lstm_cell_11/mul:z:0$lstm_11/while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2"
 lstm_11/while/lstm_cell_11/add_1?
$lstm_11/while/lstm_cell_11/Sigmoid_2Sigmoid)lstm_11/while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2&
$lstm_11/while/lstm_cell_11/Sigmoid_2?
&lstm_11/while/lstm_cell_11/LeakyRelu_1	LeakyRelu$lstm_11/while/lstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2(
&lstm_11/while/lstm_cell_11/LeakyRelu_1?
 lstm_11/while/lstm_cell_11/mul_2Mul(lstm_11/while/lstm_cell_11/Sigmoid_2:y:04lstm_11/while/lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2"
 lstm_11/while/lstm_cell_11/mul_2?
2lstm_11/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_11_while_placeholder_1lstm_11_while_placeholder$lstm_11/while/lstm_cell_11/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_11/while/TensorArrayV2Write/TensorListSetIteml
lstm_11/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/while/add/y?
lstm_11/while/addAddV2lstm_11_while_placeholderlstm_11/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_11/while/addp
lstm_11/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_11/while/add_1/y?
lstm_11/while/add_1AddV2(lstm_11_while_lstm_11_while_loop_counterlstm_11/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_11/while/add_1?
lstm_11/while/IdentityIdentitylstm_11/while/add_1:z:02^lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1^lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp3^lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_11/while/Identity?
lstm_11/while/Identity_1Identity.lstm_11_while_lstm_11_while_maximum_iterations2^lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1^lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp3^lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_11/while/Identity_1?
lstm_11/while/Identity_2Identitylstm_11/while/add:z:02^lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1^lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp3^lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_11/while/Identity_2?
lstm_11/while/Identity_3IdentityBlstm_11/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1^lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp3^lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_11/while/Identity_3?
lstm_11/while/Identity_4Identity$lstm_11/while/lstm_cell_11/mul_2:z:02^lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1^lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp3^lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_11/while/Identity_4?
lstm_11/while/Identity_5Identity$lstm_11/while/lstm_cell_11/add_1:z:02^lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1^lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp3^lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_11/while/Identity_5"9
lstm_11_while_identitylstm_11/while/Identity:output:0"=
lstm_11_while_identity_1!lstm_11/while/Identity_1:output:0"=
lstm_11_while_identity_2!lstm_11/while/Identity_2:output:0"=
lstm_11_while_identity_3!lstm_11/while/Identity_3:output:0"=
lstm_11_while_identity_4!lstm_11/while/Identity_4:output:0"=
lstm_11_while_identity_5!lstm_11/while/Identity_5:output:0"P
%lstm_11_while_lstm_11_strided_slice_1'lstm_11_while_lstm_11_strided_slice_1_0"z
:lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource<lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0"|
;lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource=lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0"x
9lstm_11_while_lstm_cell_11_matmul_readvariableop_resource;lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0"?
alstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensorclstm_11_while_tensorarrayv2read_tensorlistgetitem_lstm_11_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2f
1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp1lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp2d
0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp0lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp2h
2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp2lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
-__inference_sequential_5_layer_call_fn_200348
lstm_10_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_2003172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_10_input
?
~
)__inference_dense_21_layer_call_fn_202540

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_2001672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_201408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_201408___redundant_placeholder04
0while_while_cond_201408___redundant_placeholder14
0while_while_cond_201408___redundant_placeholder24
0while_while_cond_201408___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?C
?
while_body_199861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_11_matmul_readvariableop_resource_09
5while_lstm_cell_11_matmul_1_readvariableop_resource_08
4while_lstm_cell_11_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_11_matmul_readvariableop_resource7
3while_lstm_cell_11_matmul_1_readvariableop_resource6
2while_lstm_cell_11_biasadd_readvariableop_resource??)while/lstm_cell_11/BiasAdd/ReadVariableOp?(while/lstm_cell_11/MatMul/ReadVariableOp?*while/lstm_cell_11/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOp?
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/MatMul?
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOp?
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/MatMul_1?
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/add?
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOp?
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/BiasAddv
while/lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_11/Const?
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim?
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_11/split?
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid?
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid_1?
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul?
while/lstm_cell_11/LeakyRelu	LeakyRelu!while/lstm_cell_11/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_11/LeakyRelu?
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0*while/lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul_1?
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/add_1?
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid_2?
while/lstm_cell_11/LeakyRelu_1	LeakyReluwhile/lstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2 
while/lstm_cell_11/LeakyRelu_1?
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0,while/lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?%
?
while_body_199377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_11_199401_0
while_lstm_cell_11_199403_0
while_lstm_cell_11_199405_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_11_199401
while_lstm_cell_11_199403
while_lstm_cell_11_199405??*while/lstm_cell_11/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_11/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_11_199401_0while_lstm_cell_11_199403_0while_lstm_cell_11_199405_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_1989512,
*while/lstm_cell_11/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_11/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_11/StatefulPartitionedCall:output:1+^while/lstm_cell_11/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_11/StatefulPartitionedCall:output:2+^while/lstm_cell_11/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_11_199401while_lstm_cell_11_199401_0"8
while_lstm_cell_11_199403while_lstm_cell_11_199403_0"8
while_lstm_cell_11_199405while_lstm_cell_11_199405_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2X
*while/lstm_cell_11/StatefulPartitionedCall*while/lstm_cell_11/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?C
?
while_body_202393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_11_matmul_readvariableop_resource_09
5while_lstm_cell_11_matmul_1_readvariableop_resource_08
4while_lstm_cell_11_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_11_matmul_readvariableop_resource7
3while_lstm_cell_11_matmul_1_readvariableop_resource6
2while_lstm_cell_11_biasadd_readvariableop_resource??)while/lstm_cell_11/BiasAdd/ReadVariableOp?(while/lstm_cell_11/MatMul/ReadVariableOp?*while/lstm_cell_11/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOp?
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/MatMul?
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOp?
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/MatMul_1?
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/add?
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOp?
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/BiasAddv
while/lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_11/Const?
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim?
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_11/split?
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid?
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid_1?
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul?
while/lstm_cell_11/LeakyRelu	LeakyRelu!while/lstm_cell_11/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_11/LeakyRelu?
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0*while/lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul_1?
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/add_1?
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid_2?
while/lstm_cell_11/LeakyRelu_1	LeakyReluwhile/lstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2 
while/lstm_cell_11/LeakyRelu_1?
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0,while/lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?[
?
C__inference_lstm_10_layer_call_and_return_conditional_losses_201341

inputs/
+lstm_cell_10_matmul_readvariableop_resource1
-lstm_cell_10_matmul_1_readvariableop_resource0
,lstm_cell_10_biasadd_readvariableop_resource
identity??#lstm_cell_10/BiasAdd/ReadVariableOp?"lstm_cell_10/MatMul/ReadVariableOp?$lstm_cell_10/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp?
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/MatMul?
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp?
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/MatMul_1?
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/add?
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp?
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/BiasAddj
lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim?
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_10/split?
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid?
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid_1?
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul?
lstm_cell_10/LeakyRelu	LeakyRelulstm_cell_10/split:output:2*(
_output_shapes
:??????????2
lstm_cell_10/LeakyRelu?
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0$lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul_1?
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/add_1?
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid_2?
lstm_cell_10/LeakyRelu_1	LeakyRelulstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_10/LeakyRelu_1?
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0&lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_201256*
condR
while_cond_201255*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?%
?
while_body_198635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_10_198659_0
while_lstm_cell_10_198661_0
while_lstm_cell_10_198663_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_10_198659
while_lstm_cell_10_198661
while_lstm_cell_10_198663??*while/lstm_cell_10/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_10_198659_0while_lstm_cell_10_198661_0while_lstm_cell_10_198663_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1983082,
*while/lstm_cell_10/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_10/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_10/StatefulPartitionedCall:output:1+^while/lstm_cell_10/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_10/StatefulPartitionedCall:output:2+^while/lstm_cell_10/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_10_198659while_lstm_cell_10_198659_0"8
while_lstm_cell_10_198661while_lstm_cell_10_198661_0"8
while_lstm_cell_10_198663while_lstm_cell_10_198663_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2X
*while/lstm_cell_10/StatefulPartitionedCall*while/lstm_cell_10/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
D__inference_dense_22_layer_call_and_return_conditional_losses_200194

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????22
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
-__inference_lstm_cell_11_layer_call_fn_202763

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_1989182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:??????????:??????????:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?[
?
C__inference_lstm_10_layer_call_and_return_conditional_losses_201822
inputs_0/
+lstm_cell_10_matmul_readvariableop_resource1
-lstm_cell_10_matmul_1_readvariableop_resource0
,lstm_cell_10_biasadd_readvariableop_resource
identity??#lstm_cell_10/BiasAdd/ReadVariableOp?"lstm_cell_10/MatMul/ReadVariableOp?$lstm_cell_10/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp?
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/MatMul?
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp?
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/MatMul_1?
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/add?
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp?
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/BiasAddj
lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim?
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_10/split?
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid?
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid_1?
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul?
lstm_cell_10/LeakyRelu	LeakyRelulstm_cell_10/split:output:2*(
_output_shapes
:??????????2
lstm_cell_10/LeakyRelu?
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0$lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul_1?
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/add_1?
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid_2?
lstm_cell_10/LeakyRelu_1	LeakyRelulstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_10/LeakyRelu_1?
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0&lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_201737*
condR
while_cond_201736*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_10_while_cond_200529,
(lstm_10_while_lstm_10_while_loop_counter2
.lstm_10_while_lstm_10_while_maximum_iterations
lstm_10_while_placeholder
lstm_10_while_placeholder_1
lstm_10_while_placeholder_2
lstm_10_while_placeholder_3.
*lstm_10_while_less_lstm_10_strided_slice_1D
@lstm_10_while_lstm_10_while_cond_200529___redundant_placeholder0D
@lstm_10_while_lstm_10_while_cond_200529___redundant_placeholder1D
@lstm_10_while_lstm_10_while_cond_200529___redundant_placeholder2D
@lstm_10_while_lstm_10_while_cond_200529___redundant_placeholder3
lstm_10_while_identity
?
lstm_10/while/LessLesslstm_10_while_placeholder*lstm_10_while_less_lstm_10_strided_slice_1*
T0*
_output_shapes
: 2
lstm_10/while/Lessu
lstm_10/while/IdentityIdentitylstm_10/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_10/while/Identity"9
lstm_10_while_identitylstm_10/while/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?C
?
while_body_199679
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_10_matmul_readvariableop_resource_09
5while_lstm_cell_10_matmul_1_readvariableop_resource_08
4while_lstm_cell_10_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_10_matmul_readvariableop_resource7
3while_lstm_cell_10_matmul_1_readvariableop_resource6
2while_lstm_cell_10_biasadd_readvariableop_resource??)while/lstm_cell_10/BiasAdd/ReadVariableOp?(while/lstm_cell_10/MatMul/ReadVariableOp?*while/lstm_cell_10/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOp?
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/MatMul?
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOp?
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/MatMul_1?
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/add?
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOp?
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/BiasAddv
while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/Const?
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim?
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_10/split?
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid?
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid_1?
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul?
while/lstm_cell_10/LeakyRelu	LeakyRelu!while/lstm_cell_10/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_10/LeakyRelu?
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0*while/lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul_1?
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/add_1?
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid_2?
while/lstm_cell_10/LeakyRelu_1	LeakyReluwhile/lstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2 
while/lstm_cell_10/LeakyRelu_1?
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0,while/lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
D__inference_dense_23_layer_call_and_return_conditional_losses_200221

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?%
?
while_body_199245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_11_199269_0
while_lstm_cell_11_199271_0
while_lstm_cell_11_199273_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_11_199269
while_lstm_cell_11_199271
while_lstm_cell_11_199273??*while/lstm_cell_11/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_11/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_11_199269_0while_lstm_cell_11_199271_0while_lstm_cell_11_199273_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_1989182,
*while/lstm_cell_11/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_11/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_11/StatefulPartitionedCall:output:1+^while/lstm_cell_11/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_11/StatefulPartitionedCall:output:2+^while/lstm_cell_11/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_11_199269while_lstm_cell_11_199269_0"8
while_lstm_cell_11_199271while_lstm_cell_11_199271_0"8
while_lstm_cell_11_199273while_lstm_cell_11_199273_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2X
*while/lstm_cell_11/StatefulPartitionedCall*while/lstm_cell_11/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_lstm_11_layer_call_fn_202489
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_11_layer_call_and_return_conditional_losses_1993142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_198766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_198766___redundant_placeholder04
0while_while_cond_198766___redundant_placeholder14
0while_while_cond_198766___redundant_placeholder24
0while_while_cond_198766___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
lstm_10_while_cond_200859,
(lstm_10_while_lstm_10_while_loop_counter2
.lstm_10_while_lstm_10_while_maximum_iterations
lstm_10_while_placeholder
lstm_10_while_placeholder_1
lstm_10_while_placeholder_2
lstm_10_while_placeholder_3.
*lstm_10_while_less_lstm_10_strided_slice_1D
@lstm_10_while_lstm_10_while_cond_200859___redundant_placeholder0D
@lstm_10_while_lstm_10_while_cond_200859___redundant_placeholder1D
@lstm_10_while_lstm_10_while_cond_200859___redundant_placeholder2D
@lstm_10_while_lstm_10_while_cond_200859___redundant_placeholder3
lstm_10_while_identity
?
lstm_10/while/LessLesslstm_10_while_placeholder*lstm_10_while_less_lstm_10_strided_slice_1*
T0*
_output_shapes
: 2
lstm_10/while/Lessu
lstm_10/while/IdentityIdentitylstm_10/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_10/while/Identity"9
lstm_10_while_identitylstm_10/while/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?C
?
while_body_201584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_10_matmul_readvariableop_resource_09
5while_lstm_cell_10_matmul_1_readvariableop_resource_08
4while_lstm_cell_10_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_10_matmul_readvariableop_resource7
3while_lstm_cell_10_matmul_1_readvariableop_resource6
2while_lstm_cell_10_biasadd_readvariableop_resource??)while/lstm_cell_10/BiasAdd/ReadVariableOp?(while/lstm_cell_10/MatMul/ReadVariableOp?*while/lstm_cell_10/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOp?
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/MatMul?
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOp?
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/MatMul_1?
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/add?
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOp?
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/BiasAddv
while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/Const?
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim?
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_10/split?
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid?
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid_1?
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul?
while/lstm_cell_10/LeakyRelu	LeakyRelu!while/lstm_cell_10/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_10/LeakyRelu?
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0*while/lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul_1?
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/add_1?
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid_2?
while/lstm_cell_10/LeakyRelu_1	LeakyReluwhile/lstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2 
while/lstm_cell_10/LeakyRelu_1?
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0,while/lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?C
?
while_body_201912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_11_matmul_readvariableop_resource_09
5while_lstm_cell_11_matmul_1_readvariableop_resource_08
4while_lstm_cell_11_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_11_matmul_readvariableop_resource7
3while_lstm_cell_11_matmul_1_readvariableop_resource6
2while_lstm_cell_11_biasadd_readvariableop_resource??)while/lstm_cell_11/BiasAdd/ReadVariableOp?(while/lstm_cell_11/MatMul/ReadVariableOp?*while/lstm_cell_11/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOp?
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/MatMul?
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOp?
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/MatMul_1?
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/add?
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOp?
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/BiasAddv
while/lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_11/Const?
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim?
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_11/split?
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid?
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid_1?
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul?
while/lstm_cell_11/LeakyRelu	LeakyRelu!while/lstm_cell_11/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_11/LeakyRelu?
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0*while/lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul_1?
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/add_1?
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid_2?
while/lstm_cell_11/LeakyRelu_1	LeakyReluwhile/lstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2 
while/lstm_cell_11/LeakyRelu_1?
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0,while/lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?\
?
C__inference_lstm_11_layer_call_and_return_conditional_losses_202325
inputs_0/
+lstm_cell_11_matmul_readvariableop_resource1
-lstm_cell_11_matmul_1_readvariableop_resource0
,lstm_cell_11_biasadd_readvariableop_resource
identity??#lstm_cell_11/BiasAdd/ReadVariableOp?"lstm_cell_11/MatMul/ReadVariableOp?$lstm_cell_11/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp?
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/MatMul?
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp?
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/MatMul_1?
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/add?
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp?
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/BiasAddj
lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/Const~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dim?
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_11/split?
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid?
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid_1?
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul?
lstm_cell_11/LeakyRelu	LeakyRelulstm_cell_11/split:output:2*(
_output_shapes
:??????????2
lstm_cell_11/LeakyRelu?
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0$lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul_1?
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/add_1?
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid_2?
lstm_cell_11/LeakyRelu_1	LeakyRelulstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_11/LeakyRelu_1?
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0&lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_202240*
condR
while_cond_202239*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?b
?
&sequential_5_lstm_11_while_body_198122F
Bsequential_5_lstm_11_while_sequential_5_lstm_11_while_loop_counterL
Hsequential_5_lstm_11_while_sequential_5_lstm_11_while_maximum_iterations*
&sequential_5_lstm_11_while_placeholder,
(sequential_5_lstm_11_while_placeholder_1,
(sequential_5_lstm_11_while_placeholder_2,
(sequential_5_lstm_11_while_placeholder_3E
Asequential_5_lstm_11_while_sequential_5_lstm_11_strided_slice_1_0?
}sequential_5_lstm_11_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_11_tensorarrayunstack_tensorlistfromtensor_0L
Hsequential_5_lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0N
Jsequential_5_lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0M
Isequential_5_lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0'
#sequential_5_lstm_11_while_identity)
%sequential_5_lstm_11_while_identity_1)
%sequential_5_lstm_11_while_identity_2)
%sequential_5_lstm_11_while_identity_3)
%sequential_5_lstm_11_while_identity_4)
%sequential_5_lstm_11_while_identity_5C
?sequential_5_lstm_11_while_sequential_5_lstm_11_strided_slice_1
{sequential_5_lstm_11_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_11_tensorarrayunstack_tensorlistfromtensorJ
Fsequential_5_lstm_11_while_lstm_cell_11_matmul_readvariableop_resourceL
Hsequential_5_lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resourceK
Gsequential_5_lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource??>sequential_5/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp?=sequential_5/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp??sequential_5/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp?
Lsequential_5/lstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2N
Lsequential_5/lstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shape?
>sequential_5/lstm_11/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_5_lstm_11_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_11_tensorarrayunstack_tensorlistfromtensor_0&sequential_5_lstm_11_while_placeholderUsequential_5/lstm_11/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02@
>sequential_5/lstm_11/while/TensorArrayV2Read/TensorListGetItem?
=sequential_5/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOpHsequential_5_lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02?
=sequential_5/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp?
.sequential_5/lstm_11/while/lstm_cell_11/MatMulMatMulEsequential_5/lstm_11/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_5/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_5/lstm_11/while/lstm_cell_11/MatMul?
?sequential_5/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOpJsequential_5_lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02A
?sequential_5/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp?
0sequential_5/lstm_11/while/lstm_cell_11/MatMul_1MatMul(sequential_5_lstm_11_while_placeholder_2Gsequential_5/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????22
0sequential_5/lstm_11/while/lstm_cell_11/MatMul_1?
+sequential_5/lstm_11/while/lstm_cell_11/addAddV28sequential_5/lstm_11/while/lstm_cell_11/MatMul:product:0:sequential_5/lstm_11/while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2-
+sequential_5/lstm_11/while/lstm_cell_11/add?
>sequential_5/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOpIsequential_5_lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02@
>sequential_5/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp?
/sequential_5/lstm_11/while/lstm_cell_11/BiasAddBiasAdd/sequential_5/lstm_11/while/lstm_cell_11/add:z:0Fsequential_5/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/sequential_5/lstm_11/while/lstm_cell_11/BiasAdd?
-sequential_5/lstm_11/while/lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_5/lstm_11/while/lstm_cell_11/Const?
7sequential_5/lstm_11/while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_5/lstm_11/while/lstm_cell_11/split/split_dim?
-sequential_5/lstm_11/while/lstm_cell_11/splitSplit@sequential_5/lstm_11/while/lstm_cell_11/split/split_dim:output:08sequential_5/lstm_11/while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2/
-sequential_5/lstm_11/while/lstm_cell_11/split?
/sequential_5/lstm_11/while/lstm_cell_11/SigmoidSigmoid6sequential_5/lstm_11/while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????21
/sequential_5/lstm_11/while/lstm_cell_11/Sigmoid?
1sequential_5/lstm_11/while/lstm_cell_11/Sigmoid_1Sigmoid6sequential_5/lstm_11/while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????23
1sequential_5/lstm_11/while/lstm_cell_11/Sigmoid_1?
+sequential_5/lstm_11/while/lstm_cell_11/mulMul5sequential_5/lstm_11/while/lstm_cell_11/Sigmoid_1:y:0(sequential_5_lstm_11_while_placeholder_3*
T0*(
_output_shapes
:??????????2-
+sequential_5/lstm_11/while/lstm_cell_11/mul?
1sequential_5/lstm_11/while/lstm_cell_11/LeakyRelu	LeakyRelu6sequential_5/lstm_11/while/lstm_cell_11/split:output:2*(
_output_shapes
:??????????23
1sequential_5/lstm_11/while/lstm_cell_11/LeakyRelu?
-sequential_5/lstm_11/while/lstm_cell_11/mul_1Mul3sequential_5/lstm_11/while/lstm_cell_11/Sigmoid:y:0?sequential_5/lstm_11/while/lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2/
-sequential_5/lstm_11/while/lstm_cell_11/mul_1?
-sequential_5/lstm_11/while/lstm_cell_11/add_1AddV2/sequential_5/lstm_11/while/lstm_cell_11/mul:z:01sequential_5/lstm_11/while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2/
-sequential_5/lstm_11/while/lstm_cell_11/add_1?
1sequential_5/lstm_11/while/lstm_cell_11/Sigmoid_2Sigmoid6sequential_5/lstm_11/while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????23
1sequential_5/lstm_11/while/lstm_cell_11/Sigmoid_2?
3sequential_5/lstm_11/while/lstm_cell_11/LeakyRelu_1	LeakyRelu1sequential_5/lstm_11/while/lstm_cell_11/add_1:z:0*(
_output_shapes
:??????????25
3sequential_5/lstm_11/while/lstm_cell_11/LeakyRelu_1?
-sequential_5/lstm_11/while/lstm_cell_11/mul_2Mul5sequential_5/lstm_11/while/lstm_cell_11/Sigmoid_2:y:0Asequential_5/lstm_11/while/lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2/
-sequential_5/lstm_11/while/lstm_cell_11/mul_2?
?sequential_5/lstm_11/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_5_lstm_11_while_placeholder_1&sequential_5_lstm_11_while_placeholder1sequential_5/lstm_11/while/lstm_cell_11/mul_2:z:0*
_output_shapes
: *
element_dtype02A
?sequential_5/lstm_11/while/TensorArrayV2Write/TensorListSetItem?
 sequential_5/lstm_11/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_5/lstm_11/while/add/y?
sequential_5/lstm_11/while/addAddV2&sequential_5_lstm_11_while_placeholder)sequential_5/lstm_11/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_5/lstm_11/while/add?
"sequential_5/lstm_11/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_5/lstm_11/while/add_1/y?
 sequential_5/lstm_11/while/add_1AddV2Bsequential_5_lstm_11_while_sequential_5_lstm_11_while_loop_counter+sequential_5/lstm_11/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_5/lstm_11/while/add_1?
#sequential_5/lstm_11/while/IdentityIdentity$sequential_5/lstm_11/while/add_1:z:0?^sequential_5/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp>^sequential_5/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp@^sequential_5/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2%
#sequential_5/lstm_11/while/Identity?
%sequential_5/lstm_11/while/Identity_1IdentityHsequential_5_lstm_11_while_sequential_5_lstm_11_while_maximum_iterations?^sequential_5/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp>^sequential_5/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp@^sequential_5/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_11/while/Identity_1?
%sequential_5/lstm_11/while/Identity_2Identity"sequential_5/lstm_11/while/add:z:0?^sequential_5/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp>^sequential_5/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp@^sequential_5/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_11/while/Identity_2?
%sequential_5/lstm_11/while/Identity_3IdentityOsequential_5/lstm_11/while/TensorArrayV2Write/TensorListSetItem:output_handle:0?^sequential_5/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp>^sequential_5/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp@^sequential_5/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_5/lstm_11/while/Identity_3?
%sequential_5/lstm_11/while/Identity_4Identity1sequential_5/lstm_11/while/lstm_cell_11/mul_2:z:0?^sequential_5/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp>^sequential_5/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp@^sequential_5/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2'
%sequential_5/lstm_11/while/Identity_4?
%sequential_5/lstm_11/while/Identity_5Identity1sequential_5/lstm_11/while/lstm_cell_11/add_1:z:0?^sequential_5/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp>^sequential_5/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp@^sequential_5/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2'
%sequential_5/lstm_11/while/Identity_5"S
#sequential_5_lstm_11_while_identity,sequential_5/lstm_11/while/Identity:output:0"W
%sequential_5_lstm_11_while_identity_1.sequential_5/lstm_11/while/Identity_1:output:0"W
%sequential_5_lstm_11_while_identity_2.sequential_5/lstm_11/while/Identity_2:output:0"W
%sequential_5_lstm_11_while_identity_3.sequential_5/lstm_11/while/Identity_3:output:0"W
%sequential_5_lstm_11_while_identity_4.sequential_5/lstm_11/while/Identity_4:output:0"W
%sequential_5_lstm_11_while_identity_5.sequential_5/lstm_11/while/Identity_5:output:0"?
Gsequential_5_lstm_11_while_lstm_cell_11_biasadd_readvariableop_resourceIsequential_5_lstm_11_while_lstm_cell_11_biasadd_readvariableop_resource_0"?
Hsequential_5_lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resourceJsequential_5_lstm_11_while_lstm_cell_11_matmul_1_readvariableop_resource_0"?
Fsequential_5_lstm_11_while_lstm_cell_11_matmul_readvariableop_resourceHsequential_5_lstm_11_while_lstm_cell_11_matmul_readvariableop_resource_0"?
?sequential_5_lstm_11_while_sequential_5_lstm_11_strided_slice_1Asequential_5_lstm_11_while_sequential_5_lstm_11_strided_slice_1_0"?
{sequential_5_lstm_11_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_11_tensorarrayunstack_tensorlistfromtensor}sequential_5_lstm_11_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_11_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2?
>sequential_5/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp>sequential_5/lstm_11/while/lstm_cell_11/BiasAdd/ReadVariableOp2~
=sequential_5/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp=sequential_5/lstm_11/while/lstm_cell_11/MatMul/ReadVariableOp2?
?sequential_5/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp?sequential_5/lstm_11/while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?[
?
C__inference_lstm_11_layer_call_and_return_conditional_losses_199946

inputs/
+lstm_cell_11_matmul_readvariableop_resource1
-lstm_cell_11_matmul_1_readvariableop_resource0
,lstm_cell_11_biasadd_readvariableop_resource
identity??#lstm_cell_11/BiasAdd/ReadVariableOp?"lstm_cell_11/MatMul/ReadVariableOp?$lstm_cell_11/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp?
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/MatMul?
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp?
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/MatMul_1?
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/add?
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp?
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/BiasAddj
lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/Const~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dim?
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_11/split?
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid?
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid_1?
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul?
lstm_cell_11/LeakyRelu	LeakyRelulstm_cell_11/split:output:2*(
_output_shapes
:??????????2
lstm_cell_11/LeakyRelu?
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0$lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul_1?
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/add_1?
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid_2?
lstm_cell_11/LeakyRelu_1	LeakyRelulstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_11/LeakyRelu_1?
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0&lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_199861*
condR
while_cond_199860*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?[
?
C__inference_lstm_10_layer_call_and_return_conditional_losses_201669
inputs_0/
+lstm_cell_10_matmul_readvariableop_resource1
-lstm_cell_10_matmul_1_readvariableop_resource0
,lstm_cell_10_biasadd_readvariableop_resource
identity??#lstm_cell_10/BiasAdd/ReadVariableOp?"lstm_cell_10/MatMul/ReadVariableOp?$lstm_cell_10/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp?
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/MatMul?
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp?
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/MatMul_1?
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/add?
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp?
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/BiasAddj
lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim?
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_10/split?
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid?
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid_1?
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul?
lstm_cell_10/LeakyRelu	LeakyRelulstm_cell_10/split:output:2*(
_output_shapes
:??????????2
lstm_cell_10/LeakyRelu?
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0$lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul_1?
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/add_1?
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid_2?
lstm_cell_10/LeakyRelu_1	LeakyRelulstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_10/LeakyRelu_1?
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0&lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_201584*
condR
while_cond_201583*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_11_while_cond_201008,
(lstm_11_while_lstm_11_while_loop_counter2
.lstm_11_while_lstm_11_while_maximum_iterations
lstm_11_while_placeholder
lstm_11_while_placeholder_1
lstm_11_while_placeholder_2
lstm_11_while_placeholder_3.
*lstm_11_while_less_lstm_11_strided_slice_1D
@lstm_11_while_lstm_11_while_cond_201008___redundant_placeholder0D
@lstm_11_while_lstm_11_while_cond_201008___redundant_placeholder1D
@lstm_11_while_lstm_11_while_cond_201008___redundant_placeholder2D
@lstm_11_while_lstm_11_while_cond_201008___redundant_placeholder3
lstm_11_while_identity
?
lstm_11/while/LessLesslstm_11_while_placeholder*lstm_11_while_less_lstm_11_strided_slice_1*
T0*
_output_shapes
: 2
lstm_11/while/Lessu
lstm_11/while/IdentityIdentitylstm_11/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_11/while/Identity"9
lstm_11_while_identitylstm_11/while/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?	
?
D__inference_dense_23_layer_call_and_return_conditional_losses_202571

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?D
?
C__inference_lstm_11_layer_call_and_return_conditional_losses_199314

inputs
lstm_cell_11_199232
lstm_cell_11_199234
lstm_cell_11_199236
identity??$lstm_cell_11/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_11/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_11_199232lstm_cell_11_199234lstm_cell_11_199236*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_1989182&
$lstm_cell_11/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_11_199232lstm_cell_11_199234lstm_cell_11_199236*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_199245*
condR
while_cond_199244*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_11/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2L
$lstm_cell_11/StatefulPartitionedCall$lstm_cell_11/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_22_layer_call_and_return_conditional_losses_202551

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????22
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
&sequential_5_lstm_11_while_cond_198121F
Bsequential_5_lstm_11_while_sequential_5_lstm_11_while_loop_counterL
Hsequential_5_lstm_11_while_sequential_5_lstm_11_while_maximum_iterations*
&sequential_5_lstm_11_while_placeholder,
(sequential_5_lstm_11_while_placeholder_1,
(sequential_5_lstm_11_while_placeholder_2,
(sequential_5_lstm_11_while_placeholder_3H
Dsequential_5_lstm_11_while_less_sequential_5_lstm_11_strided_slice_1^
Zsequential_5_lstm_11_while_sequential_5_lstm_11_while_cond_198121___redundant_placeholder0^
Zsequential_5_lstm_11_while_sequential_5_lstm_11_while_cond_198121___redundant_placeholder1^
Zsequential_5_lstm_11_while_sequential_5_lstm_11_while_cond_198121___redundant_placeholder2^
Zsequential_5_lstm_11_while_sequential_5_lstm_11_while_cond_198121___redundant_placeholder3'
#sequential_5_lstm_11_while_identity
?
sequential_5/lstm_11/while/LessLess&sequential_5_lstm_11_while_placeholderDsequential_5_lstm_11_while_less_sequential_5_lstm_11_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_5/lstm_11/while/Less?
#sequential_5/lstm_11/while/IdentityIdentity#sequential_5/lstm_11/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_5/lstm_11/while/Identity"S
#sequential_5_lstm_11_while_identity,sequential_5/lstm_11/while/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?C
?
while_body_202065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_11_matmul_readvariableop_resource_09
5while_lstm_cell_11_matmul_1_readvariableop_resource_08
4while_lstm_cell_11_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_11_matmul_readvariableop_resource7
3while_lstm_cell_11_matmul_1_readvariableop_resource6
2while_lstm_cell_11_biasadd_readvariableop_resource??)while/lstm_cell_11/BiasAdd/ReadVariableOp?(while/lstm_cell_11/MatMul/ReadVariableOp?*while/lstm_cell_11/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOp?
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/MatMul?
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOp?
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/MatMul_1?
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/add?
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOp?
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/BiasAddv
while/lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_11/Const?
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim?
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_11/split?
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid?
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid_1?
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul?
while/lstm_cell_11/LeakyRelu	LeakyRelu!while/lstm_cell_11/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_11/LeakyRelu?
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0*while/lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul_1?
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/add_1?
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid_2?
while/lstm_cell_11/LeakyRelu_1	LeakyReluwhile/lstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2 
while/lstm_cell_11/LeakyRelu_1?
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0,while/lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_198951

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul]
	LeakyRelu	LeakyRelusplit:output:2*(
_output_shapes
:??????????2
	LeakyRelun
mul_1MulSigmoid:y:0LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2\
LeakyRelu_1	LeakyRelu	add_1:z:0*(
_output_shapes
:??????????2
LeakyRelu_1r
mul_2MulSigmoid_2:y:0LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:??????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?i
?
__inference__traced_save_202956
file_prefix.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableop.
*savev2_dense_22_kernel_read_readvariableop,
(savev2_dense_22_bias_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	:
6savev2_lstm_10_lstm_cell_10_kernel_read_readvariableopD
@savev2_lstm_10_lstm_cell_10_recurrent_kernel_read_readvariableop8
4savev2_lstm_10_lstm_cell_10_bias_read_readvariableop:
6savev2_lstm_11_lstm_cell_11_kernel_read_readvariableopD
@savev2_lstm_11_lstm_cell_11_recurrent_kernel_read_readvariableop8
4savev2_lstm_11_lstm_cell_11_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_20_kernel_m_read_readvariableop3
/savev2_adam_dense_20_bias_m_read_readvariableop5
1savev2_adam_dense_21_kernel_m_read_readvariableop3
/savev2_adam_dense_21_bias_m_read_readvariableop5
1savev2_adam_dense_22_kernel_m_read_readvariableop3
/savev2_adam_dense_22_bias_m_read_readvariableop5
1savev2_adam_dense_23_kernel_m_read_readvariableop3
/savev2_adam_dense_23_bias_m_read_readvariableopA
=savev2_adam_lstm_10_lstm_cell_10_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_10_lstm_cell_10_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_10_lstm_cell_10_bias_m_read_readvariableopA
=savev2_adam_lstm_11_lstm_cell_11_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_11_lstm_cell_11_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_11_lstm_cell_11_bias_m_read_readvariableop5
1savev2_adam_dense_20_kernel_v_read_readvariableop3
/savev2_adam_dense_20_bias_v_read_readvariableop5
1savev2_adam_dense_21_kernel_v_read_readvariableop3
/savev2_adam_dense_21_bias_v_read_readvariableop5
1savev2_adam_dense_22_kernel_v_read_readvariableop3
/savev2_adam_dense_22_bias_v_read_readvariableop5
1savev2_adam_dense_23_kernel_v_read_readvariableop3
/savev2_adam_dense_23_bias_v_read_readvariableopA
=savev2_adam_lstm_10_lstm_cell_10_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_10_lstm_cell_10_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_10_lstm_cell_10_bias_v_read_readvariableopA
=savev2_adam_lstm_11_lstm_cell_11_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_11_lstm_cell_11_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_11_lstm_cell_11_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*?
value?B?4B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop*savev2_dense_22_kernel_read_readvariableop(savev2_dense_22_bias_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableop6savev2_lstm_10_lstm_cell_10_kernel_read_readvariableop@savev2_lstm_10_lstm_cell_10_recurrent_kernel_read_readvariableop4savev2_lstm_10_lstm_cell_10_bias_read_readvariableop6savev2_lstm_11_lstm_cell_11_kernel_read_readvariableop@savev2_lstm_11_lstm_cell_11_recurrent_kernel_read_readvariableop4savev2_lstm_11_lstm_cell_11_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_20_kernel_m_read_readvariableop/savev2_adam_dense_20_bias_m_read_readvariableop1savev2_adam_dense_21_kernel_m_read_readvariableop/savev2_adam_dense_21_bias_m_read_readvariableop1savev2_adam_dense_22_kernel_m_read_readvariableop/savev2_adam_dense_22_bias_m_read_readvariableop1savev2_adam_dense_23_kernel_m_read_readvariableop/savev2_adam_dense_23_bias_m_read_readvariableop=savev2_adam_lstm_10_lstm_cell_10_kernel_m_read_readvariableopGsavev2_adam_lstm_10_lstm_cell_10_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_10_lstm_cell_10_bias_m_read_readvariableop=savev2_adam_lstm_11_lstm_cell_11_kernel_m_read_readvariableopGsavev2_adam_lstm_11_lstm_cell_11_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_11_lstm_cell_11_bias_m_read_readvariableop1savev2_adam_dense_20_kernel_v_read_readvariableop/savev2_adam_dense_20_bias_v_read_readvariableop1savev2_adam_dense_21_kernel_v_read_readvariableop/savev2_adam_dense_21_bias_v_read_readvariableop1savev2_adam_dense_22_kernel_v_read_readvariableop/savev2_adam_dense_22_bias_v_read_readvariableop1savev2_adam_dense_23_kernel_v_read_readvariableop/savev2_adam_dense_23_bias_v_read_readvariableop=savev2_adam_lstm_10_lstm_cell_10_kernel_v_read_readvariableopGsavev2_adam_lstm_10_lstm_cell_10_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_10_lstm_cell_10_bias_v_read_readvariableop=savev2_adam_lstm_11_lstm_cell_11_kernel_v_read_readvariableopGsavev2_adam_lstm_11_lstm_cell_11_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_11_lstm_cell_11_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??:?:	?d:d:d2:2:2:: : : : : :	?:
??:?:
??:
??:?: : : : :
??:?:	?d:d:d2:2:2::	?:
??:?:
??:
??:?:
??:?:	?d:d:d2:2:2::	?:
??:?:
??:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?d: 

_output_shapes
:d:$ 

_output_shapes

:d2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::	
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
: :%!

_output_shapes
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?d: 

_output_shapes
:d:$ 

_output_shapes

:d2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::% !

_output_shapes
:	?:&!"
 
_output_shapes
:
??:!"

_output_shapes	
:?:&#"
 
_output_shapes
:
??:&$"
 
_output_shapes
:
??:!%

_output_shapes	
:?:&&"
 
_output_shapes
:
??:!'

_output_shapes	
:?:%(!

_output_shapes
:	?d: )

_output_shapes
:d:$* 

_output_shapes

:d2: +

_output_shapes
:2:$, 

_output_shapes

:2: -

_output_shapes
::%.!

_output_shapes
:	?:&/"
 
_output_shapes
:
??:!0

_output_shapes	
:?:&1"
 
_output_shapes
:
??:&2"
 
_output_shapes
:
??:!3

_output_shapes	
:?:4

_output_shapes
: 
?C
?
while_body_199526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_10_matmul_readvariableop_resource_09
5while_lstm_cell_10_matmul_1_readvariableop_resource_08
4while_lstm_cell_10_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_10_matmul_readvariableop_resource7
3while_lstm_cell_10_matmul_1_readvariableop_resource6
2while_lstm_cell_10_biasadd_readvariableop_resource??)while/lstm_cell_10/BiasAdd/ReadVariableOp?(while/lstm_cell_10/MatMul/ReadVariableOp?*while/lstm_cell_10/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOp?
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/MatMul?
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOp?
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/MatMul_1?
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/add?
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOp?
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/BiasAddv
while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/Const?
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim?
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_10/split?
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid?
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid_1?
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul?
while/lstm_cell_10/LeakyRelu	LeakyRelu!while/lstm_cell_10/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_10/LeakyRelu?
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0*while/lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul_1?
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/add_1?
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid_2?
while/lstm_cell_10/LeakyRelu_1	LeakyReluwhile/lstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2 
while/lstm_cell_10/LeakyRelu_1?
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0,while/lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?[
?
C__inference_lstm_11_layer_call_and_return_conditional_losses_200099

inputs/
+lstm_cell_11_matmul_readvariableop_resource1
-lstm_cell_11_matmul_1_readvariableop_resource0
,lstm_cell_11_biasadd_readvariableop_resource
identity??#lstm_cell_11/BiasAdd/ReadVariableOp?"lstm_cell_11/MatMul/ReadVariableOp?$lstm_cell_11/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp?
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/MatMul?
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp?
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/MatMul_1?
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/add?
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp?
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/BiasAddj
lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/Const~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dim?
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_11/split?
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid?
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid_1?
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul?
lstm_cell_11/LeakyRelu	LeakyRelulstm_cell_11/split:output:2*(
_output_shapes
:??????????2
lstm_cell_11/LeakyRelu?
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0$lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul_1?
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/add_1?
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid_2?
lstm_cell_11/LeakyRelu_1	LeakyRelulstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_11/LeakyRelu_1?
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0&lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_200014*
condR
while_cond_200013*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_202064
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_202064___redundant_placeholder04
0while_while_cond_202064___redundant_placeholder14
0while_while_cond_202064___redundant_placeholder24
0while_while_cond_202064___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?%
?
while_body_198767
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_10_198791_0
while_lstm_cell_10_198793_0
while_lstm_cell_10_198795_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_10_198791
while_lstm_cell_10_198793
while_lstm_cell_10_198795??*while/lstm_cell_10/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_10_198791_0while_lstm_cell_10_198793_0while_lstm_cell_10_198795_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1983412,
*while/lstm_cell_10/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_10/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_10/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_10/StatefulPartitionedCall:output:1+^while/lstm_cell_10/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_10/StatefulPartitionedCall:output:2+^while/lstm_cell_10/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_10_198791while_lstm_cell_10_198791_0"8
while_lstm_cell_10_198793while_lstm_cell_10_198793_0"8
while_lstm_cell_10_198795while_lstm_cell_10_198795_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2X
*while/lstm_cell_10/StatefulPartitionedCall*while/lstm_cell_10/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
D__inference_dense_20_layer_call_and_return_conditional_losses_202511

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd_
	LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:??????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?D
?
C__inference_lstm_10_layer_call_and_return_conditional_losses_198836

inputs
lstm_cell_10_198754
lstm_cell_10_198756
lstm_cell_10_198758
identity??$lstm_cell_10/StatefulPartitionedCall?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_10/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_10_198754lstm_cell_10_198756lstm_cell_10_198758*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1983412&
$lstm_cell_10/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_10_198754lstm_cell_10_198756lstm_cell_10_198758*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_198767*
condR
while_cond_198766*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0%^lstm_cell_10/StatefulPartitionedCall^while*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::2L
$lstm_cell_10/StatefulPartitionedCall$lstm_cell_10/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
(__inference_lstm_10_layer_call_fn_201833
inputs_0
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:???????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_10_layer_call_and_return_conditional_losses_1987042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????????????:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_201583
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_201583___redundant_placeholder04
0while_while_cond_201583___redundant_placeholder14
0while_while_cond_201583___redundant_placeholder24
0while_while_cond_201583___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_199860
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_199860___redundant_placeholder04
0while_while_cond_199860___redundant_placeholder14
0while_while_cond_199860___redundant_placeholder24
0while_while_cond_199860___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?\
?
C__inference_lstm_11_layer_call_and_return_conditional_losses_202478
inputs_0/
+lstm_cell_11_matmul_readvariableop_resource1
-lstm_cell_11_matmul_1_readvariableop_resource0
,lstm_cell_11_biasadd_readvariableop_resource
identity??#lstm_cell_11/BiasAdd/ReadVariableOp?"lstm_cell_11/MatMul/ReadVariableOp?$lstm_cell_11/MatMul_1/ReadVariableOp?whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp?
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/MatMul?
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp?
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/MatMul_1?
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/add?
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp?
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/BiasAddj
lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/Const~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dim?
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_11/split?
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid?
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid_1?
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul?
lstm_cell_11/LeakyRelu	LeakyRelulstm_cell_11/split:output:2*(
_output_shapes
:??????????2
lstm_cell_11/LeakyRelu?
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0$lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul_1?
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/add_1?
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid_2?
lstm_cell_11/LeakyRelu_1	LeakyRelulstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_11/LeakyRelu_1?
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0&lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_202393*
condR
while_cond_202392*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????????????:::2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?C
?
while_body_201256
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_10_matmul_readvariableop_resource_09
5while_lstm_cell_10_matmul_1_readvariableop_resource_08
4while_lstm_cell_10_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_10_matmul_readvariableop_resource7
3while_lstm_cell_10_matmul_1_readvariableop_resource6
2while_lstm_cell_10_biasadd_readvariableop_resource??)while/lstm_cell_10/BiasAdd/ReadVariableOp?(while/lstm_cell_10/MatMul/ReadVariableOp?*while/lstm_cell_10/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOp?
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/MatMul?
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOp?
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/MatMul_1?
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/add?
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOp?
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/BiasAddv
while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/Const?
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim?
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_10/split?
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid?
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid_1?
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul?
while/lstm_cell_10/LeakyRelu	LeakyRelu!while/lstm_cell_10/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_10/LeakyRelu?
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0*while/lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul_1?
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/add_1?
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid_2?
while/lstm_cell_10/LeakyRelu_1	LeakyReluwhile/lstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2 
while/lstm_cell_10/LeakyRelu_1?
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0,while/lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_lstm_10_layer_call_fn_201516

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_10_layer_call_and_return_conditional_losses_1997642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_202613

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul]
	LeakyRelu	LeakyRelusplit:output:2*(
_output_shapes
:??????????2
	LeakyRelun
mul_1MulSigmoid:y:0LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2\
LeakyRelu_1	LeakyRelu	add_1:z:0*(
_output_shapes
:??????????2
LeakyRelu_1r
mul_2MulSigmoid_2:y:0LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?

?
D__inference_dense_20_layer_call_and_return_conditional_losses_200140

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd_
	LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:??????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_202713

inputs
states_0
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul]
	LeakyRelu	LeakyRelusplit:output:2*(
_output_shapes
:??????????2
	LeakyRelun
mul_1MulSigmoid:y:0LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2\
LeakyRelu_1	LeakyRelu	add_1:z:0*(
_output_shapes
:??????????2
LeakyRelu_1r
mul_2MulSigmoid_2:y:0LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:??????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?
?
while_cond_202392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_202392___redundant_placeholder04
0while_while_cond_202392___redundant_placeholder14
0while_while_cond_202392___redundant_placeholder24
0while_while_cond_202392___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?C
?
while_body_200014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_11_matmul_readvariableop_resource_09
5while_lstm_cell_11_matmul_1_readvariableop_resource_08
4while_lstm_cell_11_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_11_matmul_readvariableop_resource7
3while_lstm_cell_11_matmul_1_readvariableop_resource6
2while_lstm_cell_11_biasadd_readvariableop_resource??)while/lstm_cell_11/BiasAdd/ReadVariableOp?(while/lstm_cell_11/MatMul/ReadVariableOp?*while/lstm_cell_11/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_11_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02*
(while/lstm_cell_11/MatMul/ReadVariableOp?
while/lstm_cell_11/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/MatMul?
*while/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_11_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_11/MatMul_1/ReadVariableOp?
while/lstm_cell_11/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/MatMul_1?
while/lstm_cell_11/addAddV2#while/lstm_cell_11/MatMul:product:0%while/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/add?
)while/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_11_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_11/BiasAdd/ReadVariableOp?
while/lstm_cell_11/BiasAddBiasAddwhile/lstm_cell_11/add:z:01while/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/BiasAddv
while/lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_11/Const?
"while/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_11/split/split_dim?
while/lstm_cell_11/splitSplit+while/lstm_cell_11/split/split_dim:output:0#while/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_11/split?
while/lstm_cell_11/SigmoidSigmoid!while/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid?
while/lstm_cell_11/Sigmoid_1Sigmoid!while/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid_1?
while/lstm_cell_11/mulMul while/lstm_cell_11/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul?
while/lstm_cell_11/LeakyRelu	LeakyRelu!while/lstm_cell_11/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_11/LeakyRelu?
while/lstm_cell_11/mul_1Mulwhile/lstm_cell_11/Sigmoid:y:0*while/lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul_1?
while/lstm_cell_11/add_1AddV2while/lstm_cell_11/mul:z:0while/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/add_1?
while/lstm_cell_11/Sigmoid_2Sigmoid!while/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/Sigmoid_2?
while/lstm_cell_11/LeakyRelu_1	LeakyReluwhile/lstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2 
while/lstm_cell_11/LeakyRelu_1?
while/lstm_cell_11/mul_2Mul while/lstm_cell_11/Sigmoid_2:y:0,while/lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_11/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_11/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_11/mul_2:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_11/add_1:z:0*^while/lstm_cell_11/BiasAdd/ReadVariableOp)^while/lstm_cell_11/MatMul/ReadVariableOp+^while/lstm_cell_11/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_11_biasadd_readvariableop_resource4while_lstm_cell_11_biasadd_readvariableop_resource_0"l
3while_lstm_cell_11_matmul_1_readvariableop_resource5while_lstm_cell_11_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_11_matmul_readvariableop_resource3while_lstm_cell_11_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_11/BiasAdd/ReadVariableOp)while/lstm_cell_11/BiasAdd/ReadVariableOp2T
(while/lstm_cell_11/MatMul/ReadVariableOp(while/lstm_cell_11/MatMul/ReadVariableOp2X
*while/lstm_cell_11/MatMul_1/ReadVariableOp*while/lstm_cell_11/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
~
)__inference_dense_23_layer_call_fn_202580

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_2002212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????2::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?
while_body_201737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_10_matmul_readvariableop_resource_09
5while_lstm_cell_10_matmul_1_readvariableop_resource_08
4while_lstm_cell_10_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_10_matmul_readvariableop_resource7
3while_lstm_cell_10_matmul_1_readvariableop_resource6
2while_lstm_cell_10_biasadd_readvariableop_resource??)while/lstm_cell_10/BiasAdd/ReadVariableOp?(while/lstm_cell_10/MatMul/ReadVariableOp?*while/lstm_cell_10/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOp?
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/MatMul?
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOp?
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/MatMul_1?
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/add?
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOp?
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/BiasAddv
while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/Const?
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim?
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_10/split?
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid?
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid_1?
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul?
while/lstm_cell_10/LeakyRelu	LeakyRelu!while/lstm_cell_10/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_10/LeakyRelu?
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0*while/lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul_1?
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/add_1?
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid_2?
while/lstm_cell_10/LeakyRelu_1	LeakyReluwhile/lstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2 
while/lstm_cell_10/LeakyRelu_1?
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0,while/lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_lstm_cell_10_layer_call_fn_202663

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_1983082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*Z
_input_shapesI
G:?????????:??????????:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
??
?
!__inference__wrapped_model_198235
lstm_10_inputD
@sequential_5_lstm_10_lstm_cell_10_matmul_readvariableop_resourceF
Bsequential_5_lstm_10_lstm_cell_10_matmul_1_readvariableop_resourceE
Asequential_5_lstm_10_lstm_cell_10_biasadd_readvariableop_resourceD
@sequential_5_lstm_11_lstm_cell_11_matmul_readvariableop_resourceF
Bsequential_5_lstm_11_lstm_cell_11_matmul_1_readvariableop_resourceE
Asequential_5_lstm_11_lstm_cell_11_biasadd_readvariableop_resource8
4sequential_5_dense_20_matmul_readvariableop_resource9
5sequential_5_dense_20_biasadd_readvariableop_resource8
4sequential_5_dense_21_matmul_readvariableop_resource9
5sequential_5_dense_21_biasadd_readvariableop_resource8
4sequential_5_dense_22_matmul_readvariableop_resource9
5sequential_5_dense_22_biasadd_readvariableop_resource8
4sequential_5_dense_23_matmul_readvariableop_resource9
5sequential_5_dense_23_biasadd_readvariableop_resource
identity??,sequential_5/dense_20/BiasAdd/ReadVariableOp?+sequential_5/dense_20/MatMul/ReadVariableOp?,sequential_5/dense_21/BiasAdd/ReadVariableOp?+sequential_5/dense_21/MatMul/ReadVariableOp?,sequential_5/dense_22/BiasAdd/ReadVariableOp?+sequential_5/dense_22/MatMul/ReadVariableOp?,sequential_5/dense_23/BiasAdd/ReadVariableOp?+sequential_5/dense_23/MatMul/ReadVariableOp?8sequential_5/lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp?7sequential_5/lstm_10/lstm_cell_10/MatMul/ReadVariableOp?9sequential_5/lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp?sequential_5/lstm_10/while?8sequential_5/lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp?7sequential_5/lstm_11/lstm_cell_11/MatMul/ReadVariableOp?9sequential_5/lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp?sequential_5/lstm_11/whileu
sequential_5/lstm_10/ShapeShapelstm_10_input*
T0*
_output_shapes
:2
sequential_5/lstm_10/Shape?
(sequential_5/lstm_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_5/lstm_10/strided_slice/stack?
*sequential_5/lstm_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_5/lstm_10/strided_slice/stack_1?
*sequential_5/lstm_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_5/lstm_10/strided_slice/stack_2?
"sequential_5/lstm_10/strided_sliceStridedSlice#sequential_5/lstm_10/Shape:output:01sequential_5/lstm_10/strided_slice/stack:output:03sequential_5/lstm_10/strided_slice/stack_1:output:03sequential_5/lstm_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_5/lstm_10/strided_slice?
 sequential_5/lstm_10/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_5/lstm_10/zeros/mul/y?
sequential_5/lstm_10/zeros/mulMul+sequential_5/lstm_10/strided_slice:output:0)sequential_5/lstm_10/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_5/lstm_10/zeros/mul?
!sequential_5/lstm_10/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!sequential_5/lstm_10/zeros/Less/y?
sequential_5/lstm_10/zeros/LessLess"sequential_5/lstm_10/zeros/mul:z:0*sequential_5/lstm_10/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_5/lstm_10/zeros/Less?
#sequential_5/lstm_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2%
#sequential_5/lstm_10/zeros/packed/1?
!sequential_5/lstm_10/zeros/packedPack+sequential_5/lstm_10/strided_slice:output:0,sequential_5/lstm_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_5/lstm_10/zeros/packed?
 sequential_5/lstm_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_5/lstm_10/zeros/Const?
sequential_5/lstm_10/zerosFill*sequential_5/lstm_10/zeros/packed:output:0)sequential_5/lstm_10/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_5/lstm_10/zeros?
"sequential_5/lstm_10/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_5/lstm_10/zeros_1/mul/y?
 sequential_5/lstm_10/zeros_1/mulMul+sequential_5/lstm_10/strided_slice:output:0+sequential_5/lstm_10/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_5/lstm_10/zeros_1/mul?
#sequential_5/lstm_10/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2%
#sequential_5/lstm_10/zeros_1/Less/y?
!sequential_5/lstm_10/zeros_1/LessLess$sequential_5/lstm_10/zeros_1/mul:z:0,sequential_5/lstm_10/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_5/lstm_10/zeros_1/Less?
%sequential_5/lstm_10/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2'
%sequential_5/lstm_10/zeros_1/packed/1?
#sequential_5/lstm_10/zeros_1/packedPack+sequential_5/lstm_10/strided_slice:output:0.sequential_5/lstm_10/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_5/lstm_10/zeros_1/packed?
"sequential_5/lstm_10/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_5/lstm_10/zeros_1/Const?
sequential_5/lstm_10/zeros_1Fill,sequential_5/lstm_10/zeros_1/packed:output:0+sequential_5/lstm_10/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_5/lstm_10/zeros_1?
#sequential_5/lstm_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_5/lstm_10/transpose/perm?
sequential_5/lstm_10/transpose	Transposelstm_10_input,sequential_5/lstm_10/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2 
sequential_5/lstm_10/transpose?
sequential_5/lstm_10/Shape_1Shape"sequential_5/lstm_10/transpose:y:0*
T0*
_output_shapes
:2
sequential_5/lstm_10/Shape_1?
*sequential_5/lstm_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/lstm_10/strided_slice_1/stack?
,sequential_5/lstm_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_10/strided_slice_1/stack_1?
,sequential_5/lstm_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_10/strided_slice_1/stack_2?
$sequential_5/lstm_10/strided_slice_1StridedSlice%sequential_5/lstm_10/Shape_1:output:03sequential_5/lstm_10/strided_slice_1/stack:output:05sequential_5/lstm_10/strided_slice_1/stack_1:output:05sequential_5/lstm_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_5/lstm_10/strided_slice_1?
0sequential_5/lstm_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0sequential_5/lstm_10/TensorArrayV2/element_shape?
"sequential_5/lstm_10/TensorArrayV2TensorListReserve9sequential_5/lstm_10/TensorArrayV2/element_shape:output:0-sequential_5/lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_5/lstm_10/TensorArrayV2?
Jsequential_5/lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2L
Jsequential_5/lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape?
<sequential_5/lstm_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_5/lstm_10/transpose:y:0Ssequential_5/lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_5/lstm_10/TensorArrayUnstack/TensorListFromTensor?
*sequential_5/lstm_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/lstm_10/strided_slice_2/stack?
,sequential_5/lstm_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_10/strided_slice_2/stack_1?
,sequential_5/lstm_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_10/strided_slice_2/stack_2?
$sequential_5/lstm_10/strided_slice_2StridedSlice"sequential_5/lstm_10/transpose:y:03sequential_5/lstm_10/strided_slice_2/stack:output:05sequential_5/lstm_10/strided_slice_2/stack_1:output:05sequential_5/lstm_10/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2&
$sequential_5/lstm_10/strided_slice_2?
7sequential_5/lstm_10/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp@sequential_5_lstm_10_lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype029
7sequential_5/lstm_10/lstm_cell_10/MatMul/ReadVariableOp?
(sequential_5/lstm_10/lstm_cell_10/MatMulMatMul-sequential_5/lstm_10/strided_slice_2:output:0?sequential_5/lstm_10/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential_5/lstm_10/lstm_cell_10/MatMul?
9sequential_5/lstm_10/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOpBsequential_5_lstm_10_lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02;
9sequential_5/lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp?
*sequential_5/lstm_10/lstm_cell_10/MatMul_1MatMul#sequential_5/lstm_10/zeros:output:0Asequential_5/lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*sequential_5/lstm_10/lstm_cell_10/MatMul_1?
%sequential_5/lstm_10/lstm_cell_10/addAddV22sequential_5/lstm_10/lstm_cell_10/MatMul:product:04sequential_5/lstm_10/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2'
%sequential_5/lstm_10/lstm_cell_10/add?
8sequential_5/lstm_10/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOpAsequential_5_lstm_10_lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_5/lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp?
)sequential_5/lstm_10/lstm_cell_10/BiasAddBiasAdd)sequential_5/lstm_10/lstm_cell_10/add:z:0@sequential_5/lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)sequential_5/lstm_10/lstm_cell_10/BiasAdd?
'sequential_5/lstm_10/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_5/lstm_10/lstm_cell_10/Const?
1sequential_5/lstm_10/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_5/lstm_10/lstm_cell_10/split/split_dim?
'sequential_5/lstm_10/lstm_cell_10/splitSplit:sequential_5/lstm_10/lstm_cell_10/split/split_dim:output:02sequential_5/lstm_10/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2)
'sequential_5/lstm_10/lstm_cell_10/split?
)sequential_5/lstm_10/lstm_cell_10/SigmoidSigmoid0sequential_5/lstm_10/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_5/lstm_10/lstm_cell_10/Sigmoid?
+sequential_5/lstm_10/lstm_cell_10/Sigmoid_1Sigmoid0sequential_5/lstm_10/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2-
+sequential_5/lstm_10/lstm_cell_10/Sigmoid_1?
%sequential_5/lstm_10/lstm_cell_10/mulMul/sequential_5/lstm_10/lstm_cell_10/Sigmoid_1:y:0%sequential_5/lstm_10/zeros_1:output:0*
T0*(
_output_shapes
:??????????2'
%sequential_5/lstm_10/lstm_cell_10/mul?
+sequential_5/lstm_10/lstm_cell_10/LeakyRelu	LeakyRelu0sequential_5/lstm_10/lstm_cell_10/split:output:2*(
_output_shapes
:??????????2-
+sequential_5/lstm_10/lstm_cell_10/LeakyRelu?
'sequential_5/lstm_10/lstm_cell_10/mul_1Mul-sequential_5/lstm_10/lstm_cell_10/Sigmoid:y:09sequential_5/lstm_10/lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2)
'sequential_5/lstm_10/lstm_cell_10/mul_1?
'sequential_5/lstm_10/lstm_cell_10/add_1AddV2)sequential_5/lstm_10/lstm_cell_10/mul:z:0+sequential_5/lstm_10/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2)
'sequential_5/lstm_10/lstm_cell_10/add_1?
+sequential_5/lstm_10/lstm_cell_10/Sigmoid_2Sigmoid0sequential_5/lstm_10/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2-
+sequential_5/lstm_10/lstm_cell_10/Sigmoid_2?
-sequential_5/lstm_10/lstm_cell_10/LeakyRelu_1	LeakyRelu+sequential_5/lstm_10/lstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2/
-sequential_5/lstm_10/lstm_cell_10/LeakyRelu_1?
'sequential_5/lstm_10/lstm_cell_10/mul_2Mul/sequential_5/lstm_10/lstm_cell_10/Sigmoid_2:y:0;sequential_5/lstm_10/lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2)
'sequential_5/lstm_10/lstm_cell_10/mul_2?
2sequential_5/lstm_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   24
2sequential_5/lstm_10/TensorArrayV2_1/element_shape?
$sequential_5/lstm_10/TensorArrayV2_1TensorListReserve;sequential_5/lstm_10/TensorArrayV2_1/element_shape:output:0-sequential_5/lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_5/lstm_10/TensorArrayV2_1x
sequential_5/lstm_10/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_5/lstm_10/time?
-sequential_5/lstm_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-sequential_5/lstm_10/while/maximum_iterations?
'sequential_5/lstm_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_5/lstm_10/while/loop_counter?
sequential_5/lstm_10/whileWhile0sequential_5/lstm_10/while/loop_counter:output:06sequential_5/lstm_10/while/maximum_iterations:output:0"sequential_5/lstm_10/time:output:0-sequential_5/lstm_10/TensorArrayV2_1:handle:0#sequential_5/lstm_10/zeros:output:0%sequential_5/lstm_10/zeros_1:output:0-sequential_5/lstm_10/strided_slice_1:output:0Lsequential_5/lstm_10/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_5_lstm_10_lstm_cell_10_matmul_readvariableop_resourceBsequential_5_lstm_10_lstm_cell_10_matmul_1_readvariableop_resourceAsequential_5_lstm_10_lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*2
body*R(
&sequential_5_lstm_10_while_body_197973*2
cond*R(
&sequential_5_lstm_10_while_cond_197972*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
sequential_5/lstm_10/while?
Esequential_5/lstm_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2G
Esequential_5/lstm_10/TensorArrayV2Stack/TensorListStack/element_shape?
7sequential_5/lstm_10/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_5/lstm_10/while:output:3Nsequential_5/lstm_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype029
7sequential_5/lstm_10/TensorArrayV2Stack/TensorListStack?
*sequential_5/lstm_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2,
*sequential_5/lstm_10/strided_slice_3/stack?
,sequential_5/lstm_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_5/lstm_10/strided_slice_3/stack_1?
,sequential_5/lstm_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_10/strided_slice_3/stack_2?
$sequential_5/lstm_10/strided_slice_3StridedSlice@sequential_5/lstm_10/TensorArrayV2Stack/TensorListStack:tensor:03sequential_5/lstm_10/strided_slice_3/stack:output:05sequential_5/lstm_10/strided_slice_3/stack_1:output:05sequential_5/lstm_10/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2&
$sequential_5/lstm_10/strided_slice_3?
%sequential_5/lstm_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_5/lstm_10/transpose_1/perm?
 sequential_5/lstm_10/transpose_1	Transpose@sequential_5/lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_5/lstm_10/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2"
 sequential_5/lstm_10/transpose_1?
sequential_5/lstm_10/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_5/lstm_10/runtime?
sequential_5/lstm_11/ShapeShape$sequential_5/lstm_10/transpose_1:y:0*
T0*
_output_shapes
:2
sequential_5/lstm_11/Shape?
(sequential_5/lstm_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_5/lstm_11/strided_slice/stack?
*sequential_5/lstm_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_5/lstm_11/strided_slice/stack_1?
*sequential_5/lstm_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_5/lstm_11/strided_slice/stack_2?
"sequential_5/lstm_11/strided_sliceStridedSlice#sequential_5/lstm_11/Shape:output:01sequential_5/lstm_11/strided_slice/stack:output:03sequential_5/lstm_11/strided_slice/stack_1:output:03sequential_5/lstm_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_5/lstm_11/strided_slice?
 sequential_5/lstm_11/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_5/lstm_11/zeros/mul/y?
sequential_5/lstm_11/zeros/mulMul+sequential_5/lstm_11/strided_slice:output:0)sequential_5/lstm_11/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_5/lstm_11/zeros/mul?
!sequential_5/lstm_11/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!sequential_5/lstm_11/zeros/Less/y?
sequential_5/lstm_11/zeros/LessLess"sequential_5/lstm_11/zeros/mul:z:0*sequential_5/lstm_11/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_5/lstm_11/zeros/Less?
#sequential_5/lstm_11/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2%
#sequential_5/lstm_11/zeros/packed/1?
!sequential_5/lstm_11/zeros/packedPack+sequential_5/lstm_11/strided_slice:output:0,sequential_5/lstm_11/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_5/lstm_11/zeros/packed?
 sequential_5/lstm_11/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_5/lstm_11/zeros/Const?
sequential_5/lstm_11/zerosFill*sequential_5/lstm_11/zeros/packed:output:0)sequential_5/lstm_11/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_5/lstm_11/zeros?
"sequential_5/lstm_11/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_5/lstm_11/zeros_1/mul/y?
 sequential_5/lstm_11/zeros_1/mulMul+sequential_5/lstm_11/strided_slice:output:0+sequential_5/lstm_11/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_5/lstm_11/zeros_1/mul?
#sequential_5/lstm_11/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2%
#sequential_5/lstm_11/zeros_1/Less/y?
!sequential_5/lstm_11/zeros_1/LessLess$sequential_5/lstm_11/zeros_1/mul:z:0,sequential_5/lstm_11/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_5/lstm_11/zeros_1/Less?
%sequential_5/lstm_11/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2'
%sequential_5/lstm_11/zeros_1/packed/1?
#sequential_5/lstm_11/zeros_1/packedPack+sequential_5/lstm_11/strided_slice:output:0.sequential_5/lstm_11/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_5/lstm_11/zeros_1/packed?
"sequential_5/lstm_11/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_5/lstm_11/zeros_1/Const?
sequential_5/lstm_11/zeros_1Fill,sequential_5/lstm_11/zeros_1/packed:output:0+sequential_5/lstm_11/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_5/lstm_11/zeros_1?
#sequential_5/lstm_11/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_5/lstm_11/transpose/perm?
sequential_5/lstm_11/transpose	Transpose$sequential_5/lstm_10/transpose_1:y:0,sequential_5/lstm_11/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2 
sequential_5/lstm_11/transpose?
sequential_5/lstm_11/Shape_1Shape"sequential_5/lstm_11/transpose:y:0*
T0*
_output_shapes
:2
sequential_5/lstm_11/Shape_1?
*sequential_5/lstm_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/lstm_11/strided_slice_1/stack?
,sequential_5/lstm_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_11/strided_slice_1/stack_1?
,sequential_5/lstm_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_11/strided_slice_1/stack_2?
$sequential_5/lstm_11/strided_slice_1StridedSlice%sequential_5/lstm_11/Shape_1:output:03sequential_5/lstm_11/strided_slice_1/stack:output:05sequential_5/lstm_11/strided_slice_1/stack_1:output:05sequential_5/lstm_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_5/lstm_11/strided_slice_1?
0sequential_5/lstm_11/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0sequential_5/lstm_11/TensorArrayV2/element_shape?
"sequential_5/lstm_11/TensorArrayV2TensorListReserve9sequential_5/lstm_11/TensorArrayV2/element_shape:output:0-sequential_5/lstm_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_5/lstm_11/TensorArrayV2?
Jsequential_5/lstm_11/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2L
Jsequential_5/lstm_11/TensorArrayUnstack/TensorListFromTensor/element_shape?
<sequential_5/lstm_11/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_5/lstm_11/transpose:y:0Ssequential_5/lstm_11/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_5/lstm_11/TensorArrayUnstack/TensorListFromTensor?
*sequential_5/lstm_11/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_5/lstm_11/strided_slice_2/stack?
,sequential_5/lstm_11/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_11/strided_slice_2/stack_1?
,sequential_5/lstm_11/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_11/strided_slice_2/stack_2?
$sequential_5/lstm_11/strided_slice_2StridedSlice"sequential_5/lstm_11/transpose:y:03sequential_5/lstm_11/strided_slice_2/stack:output:05sequential_5/lstm_11/strided_slice_2/stack_1:output:05sequential_5/lstm_11/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2&
$sequential_5/lstm_11/strided_slice_2?
7sequential_5/lstm_11/lstm_cell_11/MatMul/ReadVariableOpReadVariableOp@sequential_5_lstm_11_lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype029
7sequential_5/lstm_11/lstm_cell_11/MatMul/ReadVariableOp?
(sequential_5/lstm_11/lstm_cell_11/MatMulMatMul-sequential_5/lstm_11/strided_slice_2:output:0?sequential_5/lstm_11/lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential_5/lstm_11/lstm_cell_11/MatMul?
9sequential_5/lstm_11/lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOpBsequential_5_lstm_11_lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02;
9sequential_5/lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp?
*sequential_5/lstm_11/lstm_cell_11/MatMul_1MatMul#sequential_5/lstm_11/zeros:output:0Asequential_5/lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*sequential_5/lstm_11/lstm_cell_11/MatMul_1?
%sequential_5/lstm_11/lstm_cell_11/addAddV22sequential_5/lstm_11/lstm_cell_11/MatMul:product:04sequential_5/lstm_11/lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2'
%sequential_5/lstm_11/lstm_cell_11/add?
8sequential_5/lstm_11/lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOpAsequential_5_lstm_11_lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_5/lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp?
)sequential_5/lstm_11/lstm_cell_11/BiasAddBiasAdd)sequential_5/lstm_11/lstm_cell_11/add:z:0@sequential_5/lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)sequential_5/lstm_11/lstm_cell_11/BiasAdd?
'sequential_5/lstm_11/lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_5/lstm_11/lstm_cell_11/Const?
1sequential_5/lstm_11/lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :23
1sequential_5/lstm_11/lstm_cell_11/split/split_dim?
'sequential_5/lstm_11/lstm_cell_11/splitSplit:sequential_5/lstm_11/lstm_cell_11/split/split_dim:output:02sequential_5/lstm_11/lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2)
'sequential_5/lstm_11/lstm_cell_11/split?
)sequential_5/lstm_11/lstm_cell_11/SigmoidSigmoid0sequential_5/lstm_11/lstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_5/lstm_11/lstm_cell_11/Sigmoid?
+sequential_5/lstm_11/lstm_cell_11/Sigmoid_1Sigmoid0sequential_5/lstm_11/lstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2-
+sequential_5/lstm_11/lstm_cell_11/Sigmoid_1?
%sequential_5/lstm_11/lstm_cell_11/mulMul/sequential_5/lstm_11/lstm_cell_11/Sigmoid_1:y:0%sequential_5/lstm_11/zeros_1:output:0*
T0*(
_output_shapes
:??????????2'
%sequential_5/lstm_11/lstm_cell_11/mul?
+sequential_5/lstm_11/lstm_cell_11/LeakyRelu	LeakyRelu0sequential_5/lstm_11/lstm_cell_11/split:output:2*(
_output_shapes
:??????????2-
+sequential_5/lstm_11/lstm_cell_11/LeakyRelu?
'sequential_5/lstm_11/lstm_cell_11/mul_1Mul-sequential_5/lstm_11/lstm_cell_11/Sigmoid:y:09sequential_5/lstm_11/lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2)
'sequential_5/lstm_11/lstm_cell_11/mul_1?
'sequential_5/lstm_11/lstm_cell_11/add_1AddV2)sequential_5/lstm_11/lstm_cell_11/mul:z:0+sequential_5/lstm_11/lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2)
'sequential_5/lstm_11/lstm_cell_11/add_1?
+sequential_5/lstm_11/lstm_cell_11/Sigmoid_2Sigmoid0sequential_5/lstm_11/lstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2-
+sequential_5/lstm_11/lstm_cell_11/Sigmoid_2?
-sequential_5/lstm_11/lstm_cell_11/LeakyRelu_1	LeakyRelu+sequential_5/lstm_11/lstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2/
-sequential_5/lstm_11/lstm_cell_11/LeakyRelu_1?
'sequential_5/lstm_11/lstm_cell_11/mul_2Mul/sequential_5/lstm_11/lstm_cell_11/Sigmoid_2:y:0;sequential_5/lstm_11/lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2)
'sequential_5/lstm_11/lstm_cell_11/mul_2?
2sequential_5/lstm_11/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   24
2sequential_5/lstm_11/TensorArrayV2_1/element_shape?
$sequential_5/lstm_11/TensorArrayV2_1TensorListReserve;sequential_5/lstm_11/TensorArrayV2_1/element_shape:output:0-sequential_5/lstm_11/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_5/lstm_11/TensorArrayV2_1x
sequential_5/lstm_11/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_5/lstm_11/time?
-sequential_5/lstm_11/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-sequential_5/lstm_11/while/maximum_iterations?
'sequential_5/lstm_11/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_5/lstm_11/while/loop_counter?
sequential_5/lstm_11/whileWhile0sequential_5/lstm_11/while/loop_counter:output:06sequential_5/lstm_11/while/maximum_iterations:output:0"sequential_5/lstm_11/time:output:0-sequential_5/lstm_11/TensorArrayV2_1:handle:0#sequential_5/lstm_11/zeros:output:0%sequential_5/lstm_11/zeros_1:output:0-sequential_5/lstm_11/strided_slice_1:output:0Lsequential_5/lstm_11/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_5_lstm_11_lstm_cell_11_matmul_readvariableop_resourceBsequential_5_lstm_11_lstm_cell_11_matmul_1_readvariableop_resourceAsequential_5_lstm_11_lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*2
body*R(
&sequential_5_lstm_11_while_body_198122*2
cond*R(
&sequential_5_lstm_11_while_cond_198121*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
sequential_5/lstm_11/while?
Esequential_5/lstm_11/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2G
Esequential_5/lstm_11/TensorArrayV2Stack/TensorListStack/element_shape?
7sequential_5/lstm_11/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_5/lstm_11/while:output:3Nsequential_5/lstm_11/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype029
7sequential_5/lstm_11/TensorArrayV2Stack/TensorListStack?
*sequential_5/lstm_11/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2,
*sequential_5/lstm_11/strided_slice_3/stack?
,sequential_5/lstm_11/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_5/lstm_11/strided_slice_3/stack_1?
,sequential_5/lstm_11/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_5/lstm_11/strided_slice_3/stack_2?
$sequential_5/lstm_11/strided_slice_3StridedSlice@sequential_5/lstm_11/TensorArrayV2Stack/TensorListStack:tensor:03sequential_5/lstm_11/strided_slice_3/stack:output:05sequential_5/lstm_11/strided_slice_3/stack_1:output:05sequential_5/lstm_11/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2&
$sequential_5/lstm_11/strided_slice_3?
%sequential_5/lstm_11/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_5/lstm_11/transpose_1/perm?
 sequential_5/lstm_11/transpose_1	Transpose@sequential_5/lstm_11/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_5/lstm_11/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2"
 sequential_5/lstm_11/transpose_1?
sequential_5/lstm_11/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_5/lstm_11/runtime?
+sequential_5/dense_20/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_20_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02-
+sequential_5/dense_20/MatMul/ReadVariableOp?
sequential_5/dense_20/MatMulMatMul-sequential_5/lstm_11/strided_slice_3:output:03sequential_5/dense_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_20/MatMul?
,sequential_5/dense_20/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,sequential_5/dense_20/BiasAdd/ReadVariableOp?
sequential_5/dense_20/BiasAddBiasAdd&sequential_5/dense_20/MatMul:product:04sequential_5/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_20/BiasAdd?
sequential_5/dense_20/LeakyRelu	LeakyRelu&sequential_5/dense_20/BiasAdd:output:0*(
_output_shapes
:??????????2!
sequential_5/dense_20/LeakyRelu?
+sequential_5/dense_21/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_21_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02-
+sequential_5/dense_21/MatMul/ReadVariableOp?
sequential_5/dense_21/MatMulMatMul-sequential_5/dense_20/LeakyRelu:activations:03sequential_5/dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
sequential_5/dense_21/MatMul?
,sequential_5/dense_21/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_21_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02.
,sequential_5/dense_21/BiasAdd/ReadVariableOp?
sequential_5/dense_21/BiasAddBiasAdd&sequential_5/dense_21/MatMul:product:04sequential_5/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
sequential_5/dense_21/BiasAdd?
sequential_5/dense_21/LeakyRelu	LeakyRelu&sequential_5/dense_21/BiasAdd:output:0*'
_output_shapes
:?????????d2!
sequential_5/dense_21/LeakyRelu?
+sequential_5/dense_22/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_22_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02-
+sequential_5/dense_22/MatMul/ReadVariableOp?
sequential_5/dense_22/MatMulMatMul-sequential_5/dense_21/LeakyRelu:activations:03sequential_5/dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
sequential_5/dense_22/MatMul?
,sequential_5/dense_22/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_22_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02.
,sequential_5/dense_22/BiasAdd/ReadVariableOp?
sequential_5/dense_22/BiasAddBiasAdd&sequential_5/dense_22/MatMul:product:04sequential_5/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
sequential_5/dense_22/BiasAdd?
sequential_5/dense_22/LeakyRelu	LeakyRelu&sequential_5/dense_22/BiasAdd:output:0*'
_output_shapes
:?????????22!
sequential_5/dense_22/LeakyRelu?
+sequential_5/dense_23/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_23_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02-
+sequential_5/dense_23/MatMul/ReadVariableOp?
sequential_5/dense_23/MatMulMatMul-sequential_5/dense_22/LeakyRelu:activations:03sequential_5/dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_5/dense_23/MatMul?
,sequential_5/dense_23/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_5/dense_23/BiasAdd/ReadVariableOp?
sequential_5/dense_23/BiasAddBiasAdd&sequential_5/dense_23/MatMul:product:04sequential_5/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_5/dense_23/BiasAdd?
sequential_5/dense_23/LeakyRelu	LeakyRelu&sequential_5/dense_23/BiasAdd:output:0*'
_output_shapes
:?????????2!
sequential_5/dense_23/LeakyRelu?
IdentityIdentity-sequential_5/dense_23/LeakyRelu:activations:0-^sequential_5/dense_20/BiasAdd/ReadVariableOp,^sequential_5/dense_20/MatMul/ReadVariableOp-^sequential_5/dense_21/BiasAdd/ReadVariableOp,^sequential_5/dense_21/MatMul/ReadVariableOp-^sequential_5/dense_22/BiasAdd/ReadVariableOp,^sequential_5/dense_22/MatMul/ReadVariableOp-^sequential_5/dense_23/BiasAdd/ReadVariableOp,^sequential_5/dense_23/MatMul/ReadVariableOp9^sequential_5/lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp8^sequential_5/lstm_10/lstm_cell_10/MatMul/ReadVariableOp:^sequential_5/lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp^sequential_5/lstm_10/while9^sequential_5/lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp8^sequential_5/lstm_11/lstm_cell_11/MatMul/ReadVariableOp:^sequential_5/lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp^sequential_5/lstm_11/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::2\
,sequential_5/dense_20/BiasAdd/ReadVariableOp,sequential_5/dense_20/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_20/MatMul/ReadVariableOp+sequential_5/dense_20/MatMul/ReadVariableOp2\
,sequential_5/dense_21/BiasAdd/ReadVariableOp,sequential_5/dense_21/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_21/MatMul/ReadVariableOp+sequential_5/dense_21/MatMul/ReadVariableOp2\
,sequential_5/dense_22/BiasAdd/ReadVariableOp,sequential_5/dense_22/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_22/MatMul/ReadVariableOp+sequential_5/dense_22/MatMul/ReadVariableOp2\
,sequential_5/dense_23/BiasAdd/ReadVariableOp,sequential_5/dense_23/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_23/MatMul/ReadVariableOp+sequential_5/dense_23/MatMul/ReadVariableOp2t
8sequential_5/lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp8sequential_5/lstm_10/lstm_cell_10/BiasAdd/ReadVariableOp2r
7sequential_5/lstm_10/lstm_cell_10/MatMul/ReadVariableOp7sequential_5/lstm_10/lstm_cell_10/MatMul/ReadVariableOp2v
9sequential_5/lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp9sequential_5/lstm_10/lstm_cell_10/MatMul_1/ReadVariableOp28
sequential_5/lstm_10/whilesequential_5/lstm_10/while2t
8sequential_5/lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp8sequential_5/lstm_11/lstm_cell_11/BiasAdd/ReadVariableOp2r
7sequential_5/lstm_11/lstm_cell_11/MatMul/ReadVariableOp7sequential_5/lstm_11/lstm_cell_11/MatMul/ReadVariableOp2v
9sequential_5/lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp9sequential_5/lstm_11/lstm_cell_11/MatMul_1/ReadVariableOp28
sequential_5/lstm_11/whilesequential_5/lstm_11/while:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_10_input
?C
?
while_body_201409
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_07
3while_lstm_cell_10_matmul_readvariableop_resource_09
5while_lstm_cell_10_matmul_1_readvariableop_resource_08
4while_lstm_cell_10_biasadd_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor5
1while_lstm_cell_10_matmul_readvariableop_resource7
3while_lstm_cell_10_matmul_1_readvariableop_resource6
2while_lstm_cell_10_biasadd_readvariableop_resource??)while/lstm_cell_10/BiasAdd/ReadVariableOp?(while/lstm_cell_10/MatMul/ReadVariableOp?*while/lstm_cell_10/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_10/MatMul/ReadVariableOp?
while/lstm_cell_10/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/MatMul?
*while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_10/MatMul_1/ReadVariableOp?
while/lstm_cell_10/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/MatMul_1?
while/lstm_cell_10/addAddV2#while/lstm_cell_10/MatMul:product:0%while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/add?
)while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_10/BiasAdd/ReadVariableOp?
while/lstm_cell_10/BiasAddBiasAddwhile/lstm_cell_10/add:z:01while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/BiasAddv
while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_10/Const?
"while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_10/split/split_dim?
while/lstm_cell_10/splitSplit+while/lstm_cell_10/split/split_dim:output:0#while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_10/split?
while/lstm_cell_10/SigmoidSigmoid!while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid?
while/lstm_cell_10/Sigmoid_1Sigmoid!while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid_1?
while/lstm_cell_10/mulMul while/lstm_cell_10/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul?
while/lstm_cell_10/LeakyRelu	LeakyRelu!while/lstm_cell_10/split:output:2*(
_output_shapes
:??????????2
while/lstm_cell_10/LeakyRelu?
while/lstm_cell_10/mul_1Mulwhile/lstm_cell_10/Sigmoid:y:0*while/lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul_1?
while/lstm_cell_10/add_1AddV2while/lstm_cell_10/mul:z:0while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/add_1?
while/lstm_cell_10/Sigmoid_2Sigmoid!while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/Sigmoid_2?
while/lstm_cell_10/LeakyRelu_1	LeakyReluwhile/lstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2 
while/lstm_cell_10/LeakyRelu_1?
while/lstm_cell_10/mul_2Mul while/lstm_cell_10/Sigmoid_2:y:0,while/lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_10/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_10/mul_2:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_10/add_1:z:0*^while/lstm_cell_10/BiasAdd/ReadVariableOp)^while/lstm_cell_10/MatMul/ReadVariableOp+^while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_10_biasadd_readvariableop_resource4while_lstm_cell_10_biasadd_readvariableop_resource_0"l
3while_lstm_cell_10_matmul_1_readvariableop_resource5while_lstm_cell_10_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_10_matmul_readvariableop_resource3while_lstm_cell_10_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2V
)while/lstm_cell_10/BiasAdd/ReadVariableOp)while/lstm_cell_10/BiasAdd/ReadVariableOp2T
(while/lstm_cell_10/MatMul/ReadVariableOp(while/lstm_cell_10/MatMul/ReadVariableOp2X
*while/lstm_cell_10/MatMul_1/ReadVariableOp*while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?O
?	
lstm_10_while_body_200530,
(lstm_10_while_lstm_10_while_loop_counter2
.lstm_10_while_lstm_10_while_maximum_iterations
lstm_10_while_placeholder
lstm_10_while_placeholder_1
lstm_10_while_placeholder_2
lstm_10_while_placeholder_3+
'lstm_10_while_lstm_10_strided_slice_1_0g
clstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0?
;lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0A
=lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0@
<lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0
lstm_10_while_identity
lstm_10_while_identity_1
lstm_10_while_identity_2
lstm_10_while_identity_3
lstm_10_while_identity_4
lstm_10_while_identity_5)
%lstm_10_while_lstm_10_strided_slice_1e
alstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor=
9lstm_10_while_lstm_cell_10_matmul_readvariableop_resource?
;lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource>
:lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource??1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp?0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp?2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp?
?lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0lstm_10_while_placeholderHlstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_10/while/TensorArrayV2Read/TensorListGetItem?
0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOpReadVariableOp;lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype022
0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp?
!lstm_10/while/lstm_cell_10/MatMulMatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_10/while/lstm_cell_10/MatMul?
2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp=lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype024
2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp?
#lstm_10/while/lstm_cell_10/MatMul_1MatMullstm_10_while_placeholder_2:lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_10/while/lstm_cell_10/MatMul_1?
lstm_10/while/lstm_cell_10/addAddV2+lstm_10/while/lstm_cell_10/MatMul:product:0-lstm_10/while/lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_10/while/lstm_cell_10/add?
1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp<lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp?
"lstm_10/while/lstm_cell_10/BiasAddBiasAdd"lstm_10/while/lstm_cell_10/add:z:09lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_10/while/lstm_cell_10/BiasAdd?
 lstm_10/while/lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_10/while/lstm_cell_10/Const?
*lstm_10/while/lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_10/while/lstm_cell_10/split/split_dim?
 lstm_10/while/lstm_cell_10/splitSplit3lstm_10/while/lstm_cell_10/split/split_dim:output:0+lstm_10/while/lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2"
 lstm_10/while/lstm_cell_10/split?
"lstm_10/while/lstm_cell_10/SigmoidSigmoid)lstm_10/while/lstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2$
"lstm_10/while/lstm_cell_10/Sigmoid?
$lstm_10/while/lstm_cell_10/Sigmoid_1Sigmoid)lstm_10/while/lstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2&
$lstm_10/while/lstm_cell_10/Sigmoid_1?
lstm_10/while/lstm_cell_10/mulMul(lstm_10/while/lstm_cell_10/Sigmoid_1:y:0lstm_10_while_placeholder_3*
T0*(
_output_shapes
:??????????2 
lstm_10/while/lstm_cell_10/mul?
$lstm_10/while/lstm_cell_10/LeakyRelu	LeakyRelu)lstm_10/while/lstm_cell_10/split:output:2*(
_output_shapes
:??????????2&
$lstm_10/while/lstm_cell_10/LeakyRelu?
 lstm_10/while/lstm_cell_10/mul_1Mul&lstm_10/while/lstm_cell_10/Sigmoid:y:02lstm_10/while/lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2"
 lstm_10/while/lstm_cell_10/mul_1?
 lstm_10/while/lstm_cell_10/add_1AddV2"lstm_10/while/lstm_cell_10/mul:z:0$lstm_10/while/lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2"
 lstm_10/while/lstm_cell_10/add_1?
$lstm_10/while/lstm_cell_10/Sigmoid_2Sigmoid)lstm_10/while/lstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2&
$lstm_10/while/lstm_cell_10/Sigmoid_2?
&lstm_10/while/lstm_cell_10/LeakyRelu_1	LeakyRelu$lstm_10/while/lstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2(
&lstm_10/while/lstm_cell_10/LeakyRelu_1?
 lstm_10/while/lstm_cell_10/mul_2Mul(lstm_10/while/lstm_cell_10/Sigmoid_2:y:04lstm_10/while/lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2"
 lstm_10/while/lstm_cell_10/mul_2?
2lstm_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_10_while_placeholder_1lstm_10_while_placeholder$lstm_10/while/lstm_cell_10/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_10/while/TensorArrayV2Write/TensorListSetIteml
lstm_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/while/add/y?
lstm_10/while/addAddV2lstm_10_while_placeholderlstm_10/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_10/while/addp
lstm_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_10/while/add_1/y?
lstm_10/while/add_1AddV2(lstm_10_while_lstm_10_while_loop_counterlstm_10/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_10/while/add_1?
lstm_10/while/IdentityIdentitylstm_10/while/add_1:z:02^lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1^lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp3^lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity?
lstm_10/while/Identity_1Identity.lstm_10_while_lstm_10_while_maximum_iterations2^lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1^lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp3^lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_1?
lstm_10/while/Identity_2Identitylstm_10/while/add:z:02^lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1^lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp3^lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_2?
lstm_10/while/Identity_3IdentityBlstm_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1^lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp3^lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_10/while/Identity_3?
lstm_10/while/Identity_4Identity$lstm_10/while/lstm_cell_10/mul_2:z:02^lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1^lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp3^lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_10/while/Identity_4?
lstm_10/while/Identity_5Identity$lstm_10/while/lstm_cell_10/add_1:z:02^lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1^lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp3^lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_10/while/Identity_5"9
lstm_10_while_identitylstm_10/while/Identity:output:0"=
lstm_10_while_identity_1!lstm_10/while/Identity_1:output:0"=
lstm_10_while_identity_2!lstm_10/while/Identity_2:output:0"=
lstm_10_while_identity_3!lstm_10/while/Identity_3:output:0"=
lstm_10_while_identity_4!lstm_10/while/Identity_4:output:0"=
lstm_10_while_identity_5!lstm_10/while/Identity_5:output:0"P
%lstm_10_while_lstm_10_strided_slice_1'lstm_10_while_lstm_10_strided_slice_1_0"z
:lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource<lstm_10_while_lstm_cell_10_biasadd_readvariableop_resource_0"|
;lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource=lstm_10_while_lstm_cell_10_matmul_1_readvariableop_resource_0"x
9lstm_10_while_lstm_cell_10_matmul_readvariableop_resource;lstm_10_while_lstm_cell_10_matmul_readvariableop_resource_0"?
alstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensorclstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :??????????:??????????: : :::2f
1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp1lstm_10/while/lstm_cell_10/BiasAdd/ReadVariableOp2d
0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp0lstm_10/while/lstm_cell_10/MatMul/ReadVariableOp2h
2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp2lstm_10/while/lstm_cell_10/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?[
?
C__inference_lstm_11_layer_call_and_return_conditional_losses_202150

inputs/
+lstm_cell_11_matmul_readvariableop_resource1
-lstm_cell_11_matmul_1_readvariableop_resource0
,lstm_cell_11_biasadd_readvariableop_resource
identity??#lstm_cell_11/BiasAdd/ReadVariableOp?"lstm_cell_11/MatMul/ReadVariableOp?$lstm_cell_11/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp?
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/MatMul?
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp?
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/MatMul_1?
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/add?
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp?
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/BiasAddj
lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/Const~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dim?
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_11/split?
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid?
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid_1?
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul?
lstm_cell_11/LeakyRelu	LeakyRelulstm_cell_11/split:output:2*(
_output_shapes
:??????????2
lstm_cell_11/LeakyRelu?
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0$lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul_1?
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/add_1?
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid_2?
lstm_cell_11/LeakyRelu_1	LeakyRelulstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_11/LeakyRelu_1?
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0&lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_202065*
condR
while_cond_202064*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_lstm_11_layer_call_fn_202161

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_11_layer_call_and_return_conditional_losses_1999462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_200013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_200013___redundant_placeholder04
0while_while_cond_200013___redundant_placeholder14
0while_while_cond_200013___redundant_placeholder24
0while_while_cond_200013___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?	
?
D__inference_dense_21_layer_call_and_return_conditional_losses_200167

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????d2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?[
?
C__inference_lstm_10_layer_call_and_return_conditional_losses_201494

inputs/
+lstm_cell_10_matmul_readvariableop_resource1
-lstm_cell_10_matmul_1_readvariableop_resource0
,lstm_cell_10_biasadd_readvariableop_resource
identity??#lstm_cell_10/BiasAdd/ReadVariableOp?"lstm_cell_10/MatMul/ReadVariableOp?$lstm_cell_10/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_10/MatMul/ReadVariableOpReadVariableOp+lstm_cell_10_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_10/MatMul/ReadVariableOp?
lstm_cell_10/MatMulMatMulstrided_slice_2:output:0*lstm_cell_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/MatMul?
$lstm_cell_10/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_10_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_10/MatMul_1/ReadVariableOp?
lstm_cell_10/MatMul_1MatMulzeros:output:0,lstm_cell_10/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/MatMul_1?
lstm_cell_10/addAddV2lstm_cell_10/MatMul:product:0lstm_cell_10/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/add?
#lstm_cell_10/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_10_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_10/BiasAdd/ReadVariableOp?
lstm_cell_10/BiasAddBiasAddlstm_cell_10/add:z:0+lstm_cell_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/BiasAddj
lstm_cell_10/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/Const~
lstm_cell_10/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_10/split/split_dim?
lstm_cell_10/splitSplit%lstm_cell_10/split/split_dim:output:0lstm_cell_10/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_10/split?
lstm_cell_10/SigmoidSigmoidlstm_cell_10/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid?
lstm_cell_10/Sigmoid_1Sigmoidlstm_cell_10/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid_1?
lstm_cell_10/mulMullstm_cell_10/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul?
lstm_cell_10/LeakyRelu	LeakyRelulstm_cell_10/split:output:2*(
_output_shapes
:??????????2
lstm_cell_10/LeakyRelu?
lstm_cell_10/mul_1Mullstm_cell_10/Sigmoid:y:0$lstm_cell_10/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul_1?
lstm_cell_10/add_1AddV2lstm_cell_10/mul:z:0lstm_cell_10/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/add_1?
lstm_cell_10/Sigmoid_2Sigmoidlstm_cell_10/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_10/Sigmoid_2?
lstm_cell_10/LeakyRelu_1	LeakyRelulstm_cell_10/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_10/LeakyRelu_1?
lstm_cell_10/mul_2Mullstm_cell_10/Sigmoid_2:y:0&lstm_cell_10/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_10/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_10_matmul_readvariableop_resource-lstm_cell_10_matmul_1_readvariableop_resource,lstm_cell_10_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_201409*
condR
while_cond_201408*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitytranspose_1:y:0$^lstm_cell_10/BiasAdd/ReadVariableOp#^lstm_cell_10/MatMul/ReadVariableOp%^lstm_cell_10/MatMul_1/ReadVariableOp^while*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????:::2J
#lstm_cell_10/BiasAdd/ReadVariableOp#lstm_cell_10/BiasAdd/ReadVariableOp2H
"lstm_cell_10/MatMul/ReadVariableOp"lstm_cell_10/MatMul/ReadVariableOp2L
$lstm_cell_10/MatMul_1/ReadVariableOp$lstm_cell_10/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?[
?
C__inference_lstm_11_layer_call_and_return_conditional_losses_201997

inputs/
+lstm_cell_11_matmul_readvariableop_resource1
-lstm_cell_11_matmul_1_readvariableop_resource0
,lstm_cell_11_biasadd_readvariableop_resource
identity??#lstm_cell_11/BiasAdd/ReadVariableOp?"lstm_cell_11/MatMul/ReadVariableOp?$lstm_cell_11/MatMul_1/ReadVariableOp?whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_11/MatMul/ReadVariableOpReadVariableOp+lstm_cell_11_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02$
"lstm_cell_11/MatMul/ReadVariableOp?
lstm_cell_11/MatMulMatMulstrided_slice_2:output:0*lstm_cell_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/MatMul?
$lstm_cell_11/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_11_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_11/MatMul_1/ReadVariableOp?
lstm_cell_11/MatMul_1MatMulzeros:output:0,lstm_cell_11/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/MatMul_1?
lstm_cell_11/addAddV2lstm_cell_11/MatMul:product:0lstm_cell_11/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/add?
#lstm_cell_11/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_11_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_11/BiasAdd/ReadVariableOp?
lstm_cell_11/BiasAddBiasAddlstm_cell_11/add:z:0+lstm_cell_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/BiasAddj
lstm_cell_11/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/Const~
lstm_cell_11/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_11/split/split_dim?
lstm_cell_11/splitSplit%lstm_cell_11/split/split_dim:output:0lstm_cell_11/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_11/split?
lstm_cell_11/SigmoidSigmoidlstm_cell_11/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid?
lstm_cell_11/Sigmoid_1Sigmoidlstm_cell_11/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid_1?
lstm_cell_11/mulMullstm_cell_11/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul?
lstm_cell_11/LeakyRelu	LeakyRelulstm_cell_11/split:output:2*(
_output_shapes
:??????????2
lstm_cell_11/LeakyRelu?
lstm_cell_11/mul_1Mullstm_cell_11/Sigmoid:y:0$lstm_cell_11/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul_1?
lstm_cell_11/add_1AddV2lstm_cell_11/mul:z:0lstm_cell_11/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/add_1?
lstm_cell_11/Sigmoid_2Sigmoidlstm_cell_11/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_11/Sigmoid_2?
lstm_cell_11/LeakyRelu_1	LeakyRelulstm_cell_11/add_1:z:0*(
_output_shapes
:??????????2
lstm_cell_11/LeakyRelu_1?
lstm_cell_11/mul_2Mullstm_cell_11/Sigmoid_2:y:0&lstm_cell_11/LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_11/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_11_matmul_readvariableop_resource-lstm_cell_11_matmul_1_readvariableop_resource,lstm_cell_11_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_201912*
condR
while_cond_201911*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_11/BiasAdd/ReadVariableOp#^lstm_cell_11/MatMul/ReadVariableOp%^lstm_cell_11/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::2J
#lstm_cell_11/BiasAdd/ReadVariableOp#lstm_cell_11/BiasAdd/ReadVariableOp2H
"lstm_cell_11/MatMul/ReadVariableOp"lstm_cell_11/MatMul/ReadVariableOp2L
$lstm_cell_11/MatMul_1/ReadVariableOp$lstm_cell_11/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_lstm_11_layer_call_fn_202172

inputs
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_11_layer_call_and_return_conditional_losses_2000992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_198918

inputs

states
states_1"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource#
biasadd_readvariableop_resource
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mul]
	LeakyRelu	LeakyRelusplit:output:2*(
_output_shapes
:??????????2
	LeakyRelun
mul_1MulSigmoid:y:0LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2\
LeakyRelu_1	LeakyRelu	add_1:z:0*(
_output_shapes
:??????????2
LeakyRelu_1r
mul_2MulSigmoid_2:y:0LeakyRelu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:??????????:??????????:??????????:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
?
while_cond_201911
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_201911___redundant_placeholder04
0while_while_cond_201911___redundant_placeholder14
0while_while_cond_201911___redundant_placeholder24
0while_while_cond_201911___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
~
)__inference_dense_22_layer_call_fn_202560

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_2001942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_201736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_201736___redundant_placeholder04
0while_while_cond_201736___redundant_placeholder14
0while_while_cond_201736___redundant_placeholder24
0while_while_cond_201736___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?	
?
-__inference_sequential_5_layer_call_fn_201155

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_2003172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*b
_input_shapesQ
O:?????????::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
lstm_10_input:
serving_default_lstm_10_input:0?????????<
dense_230
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?E
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"?B
_tf_keras_sequential?A{"class_name": "Sequential", "name": "sequential_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 5, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_10_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5, 1]}, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "leaky_relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_11", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "leaky_relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 200, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 100, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 50, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 5, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 5, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_10_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5, 1]}, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "leaky_relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "LSTM", "config": {"name": "lstm_11", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "leaky_relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 200, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 100, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 50, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 5, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mse", "metrics": [[{"class_name": "RootMeanSquaredError", "config": {"name": "root_mean_squared_error", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 6.126263997430215e-06, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_rnn_layer?
{"class_name": "LSTM", "name": "lstm_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5, 1]}, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "leaky_relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 1]}}
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_rnn_layer?
{"class_name": "LSTM", "name": "lstm_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_11", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "leaky_relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 200]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 200]}}
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_20", "trainable": true, "dtype": "float32", "units": 200, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 100, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 50, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 5, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
?

1beta_1

2beta_2
	3decay
4learning_rate
5iterm}m~m m?%m?&m?+m?,m?6m?7m?8m?9m?:m?;m?v?v?v? v?%v?&v?+v?,v?6v?7v?8v?9v?:v?;v?"
	optimizer
?
60
71
82
93
:4
;5
6
7
8
 9
%10
&11
+12
,13"
trackable_list_wrapper
?
60
71
82
93
:4
;5
6
7
8
 9
%10
&11
+12
,13"
trackable_list_wrapper
 "
trackable_list_wrapper
?

<layers
=layer_regularization_losses
>metrics
	variables
	trainable_variables

regularization_losses
?non_trainable_variables
@layer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?

6kernel
7recurrent_kernel
8bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMCell", "name": "lstm_cell_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_10", "trainable": true, "dtype": "float32", "units": 200, "activation": "leaky_relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Elayers
Flayer_regularization_losses
Gmetrics
	variables
trainable_variables
regularization_losses

Hstates
Inon_trainable_variables
Jlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

9kernel
:recurrent_kernel
;bias
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LSTMCell", "name": "lstm_cell_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_11", "trainable": true, "dtype": "float32", "units": 200, "activation": "leaky_relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}
 "
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Olayers
Player_regularization_losses
Qmetrics
	variables
trainable_variables
regularization_losses

Rstates
Snon_trainable_variables
Tlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_20/kernel
:?2dense_20/bias
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
?

Ulayers
Vlayer_regularization_losses
Wmetrics
	variables
trainable_variables
regularization_losses
Xnon_trainable_variables
Ylayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?d2dense_21/kernel
:d2dense_21/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Zlayers
[layer_regularization_losses
\metrics
!	variables
"trainable_variables
#regularization_losses
]non_trainable_variables
^layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:d22dense_22/kernel
:22dense_22/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

_layers
`layer_regularization_losses
ametrics
'	variables
(trainable_variables
)regularization_losses
bnon_trainable_variables
clayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:22dense_23/kernel
:2dense_23/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

dlayers
elayer_regularization_losses
fmetrics
-	variables
.trainable_variables
/regularization_losses
gnon_trainable_variables
hlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
.:,	?2lstm_10/lstm_cell_10/kernel
9:7
??2%lstm_10/lstm_cell_10/recurrent_kernel
(:&?2lstm_10/lstm_cell_10/bias
/:-
??2lstm_11/lstm_cell_11/kernel
9:7
??2%lstm_11/lstm_cell_11/recurrent_kernel
(:&?2lstm_11/lstm_cell_11/bias
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
60
71
82"
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
 "
trackable_list_wrapper
?

klayers
llayer_regularization_losses
mmetrics
A	variables
Btrainable_variables
Cregularization_losses
nnon_trainable_variables
olayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
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
5
90
:1
;2"
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

players
qlayer_regularization_losses
rmetrics
K	variables
Ltrainable_variables
Mregularization_losses
snon_trainable_variables
tlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
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
?
	utotal
	vcount
w	variables
x	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	ytotal
	zcount
{	variables
|	keras_api"?
_tf_keras_metric?{"class_name": "RootMeanSquaredError", "name": "root_mean_squared_error", "dtype": "float32", "config": {"name": "root_mean_squared_error", "dtype": "float32"}}
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
:  (2total
:  (2count
.
u0
v1"
trackable_list_wrapper
-
w	variables"
_generic_user_object
:  (2total
:  (2count
.
y0
z1"
trackable_list_wrapper
-
{	variables"
_generic_user_object
(:&
??2Adam/dense_20/kernel/m
!:?2Adam/dense_20/bias/m
':%	?d2Adam/dense_21/kernel/m
 :d2Adam/dense_21/bias/m
&:$d22Adam/dense_22/kernel/m
 :22Adam/dense_22/bias/m
&:$22Adam/dense_23/kernel/m
 :2Adam/dense_23/bias/m
3:1	?2"Adam/lstm_10/lstm_cell_10/kernel/m
>:<
??2,Adam/lstm_10/lstm_cell_10/recurrent_kernel/m
-:+?2 Adam/lstm_10/lstm_cell_10/bias/m
4:2
??2"Adam/lstm_11/lstm_cell_11/kernel/m
>:<
??2,Adam/lstm_11/lstm_cell_11/recurrent_kernel/m
-:+?2 Adam/lstm_11/lstm_cell_11/bias/m
(:&
??2Adam/dense_20/kernel/v
!:?2Adam/dense_20/bias/v
':%	?d2Adam/dense_21/kernel/v
 :d2Adam/dense_21/bias/v
&:$d22Adam/dense_22/kernel/v
 :22Adam/dense_22/bias/v
&:$22Adam/dense_23/kernel/v
 :2Adam/dense_23/bias/v
3:1	?2"Adam/lstm_10/lstm_cell_10/kernel/v
>:<
??2,Adam/lstm_10/lstm_cell_10/recurrent_kernel/v
-:+?2 Adam/lstm_10/lstm_cell_10/bias/v
4:2
??2"Adam/lstm_11/lstm_cell_11/kernel/v
>:<
??2,Adam/lstm_11/lstm_cell_11/recurrent_kernel/v
-:+?2 Adam/lstm_11/lstm_cell_11/bias/v
?2?
-__inference_sequential_5_layer_call_fn_200348
-__inference_sequential_5_layer_call_fn_201155
-__inference_sequential_5_layer_call_fn_201188
-__inference_sequential_5_layer_call_fn_200419?
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
H__inference_sequential_5_layer_call_and_return_conditional_losses_200276
H__inference_sequential_5_layer_call_and_return_conditional_losses_201122
H__inference_sequential_5_layer_call_and_return_conditional_losses_200792
H__inference_sequential_5_layer_call_and_return_conditional_losses_200238?
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
?2?
!__inference__wrapped_model_198235?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *0?-
+?(
lstm_10_input?????????
?2?
(__inference_lstm_10_layer_call_fn_201833
(__inference_lstm_10_layer_call_fn_201516
(__inference_lstm_10_layer_call_fn_201844
(__inference_lstm_10_layer_call_fn_201505?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_lstm_10_layer_call_and_return_conditional_losses_201494
C__inference_lstm_10_layer_call_and_return_conditional_losses_201341
C__inference_lstm_10_layer_call_and_return_conditional_losses_201669
C__inference_lstm_10_layer_call_and_return_conditional_losses_201822?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_lstm_11_layer_call_fn_202489
(__inference_lstm_11_layer_call_fn_202500
(__inference_lstm_11_layer_call_fn_202161
(__inference_lstm_11_layer_call_fn_202172?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_lstm_11_layer_call_and_return_conditional_losses_202325
C__inference_lstm_11_layer_call_and_return_conditional_losses_202150
C__inference_lstm_11_layer_call_and_return_conditional_losses_202478
C__inference_lstm_11_layer_call_and_return_conditional_losses_201997?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dense_20_layer_call_fn_202520?
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
D__inference_dense_20_layer_call_and_return_conditional_losses_202511?
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
)__inference_dense_21_layer_call_fn_202540?
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
D__inference_dense_21_layer_call_and_return_conditional_losses_202531?
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
)__inference_dense_22_layer_call_fn_202560?
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
D__inference_dense_22_layer_call_and_return_conditional_losses_202551?
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
)__inference_dense_23_layer_call_fn_202580?
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
D__inference_dense_23_layer_call_and_return_conditional_losses_202571?
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
?B?
$__inference_signature_wrapper_200462lstm_10_input"?
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
 
?2?
-__inference_lstm_cell_10_layer_call_fn_202663
-__inference_lstm_cell_10_layer_call_fn_202680?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_202646
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_202613?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
-__inference_lstm_cell_11_layer_call_fn_202780
-__inference_lstm_cell_11_layer_call_fn_202763?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_202713
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_202746?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

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
 ?
!__inference__wrapped_model_198235?6789:; %&+,:?7
0?-
+?(
lstm_10_input?????????
? "3?0
.
dense_23"?
dense_23??????????
D__inference_dense_20_layer_call_and_return_conditional_losses_202511^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_20_layer_call_fn_202520Q0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_21_layer_call_and_return_conditional_losses_202531] 0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????d
? }
)__inference_dense_21_layer_call_fn_202540P 0?-
&?#
!?
inputs??????????
? "??????????d?
D__inference_dense_22_layer_call_and_return_conditional_losses_202551\%&/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????2
? |
)__inference_dense_22_layer_call_fn_202560O%&/?,
%?"
 ?
inputs?????????d
? "??????????2?
D__inference_dense_23_layer_call_and_return_conditional_losses_202571\+,/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? |
)__inference_dense_23_layer_call_fn_202580O+,/?,
%?"
 ?
inputs?????????2
? "???????????
C__inference_lstm_10_layer_call_and_return_conditional_losses_201341r678??<
5?2
$?!
inputs?????????

 
p

 
? "*?'
 ?
0??????????
? ?
C__inference_lstm_10_layer_call_and_return_conditional_losses_201494r678??<
5?2
$?!
inputs?????????

 
p 

 
? "*?'
 ?
0??????????
? ?
C__inference_lstm_10_layer_call_and_return_conditional_losses_201669?678O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "3?0
)?&
0???????????????????
? ?
C__inference_lstm_10_layer_call_and_return_conditional_losses_201822?678O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "3?0
)?&
0???????????????????
? ?
(__inference_lstm_10_layer_call_fn_201505e678??<
5?2
$?!
inputs?????????

 
p

 
? "????????????
(__inference_lstm_10_layer_call_fn_201516e678??<
5?2
$?!
inputs?????????

 
p 

 
? "????????????
(__inference_lstm_10_layer_call_fn_201833~678O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "&?#????????????????????
(__inference_lstm_10_layer_call_fn_201844~678O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "&?#????????????????????
C__inference_lstm_11_layer_call_and_return_conditional_losses_201997o9:;@?=
6?3
%?"
inputs??????????

 
p

 
? "&?#
?
0??????????
? ?
C__inference_lstm_11_layer_call_and_return_conditional_losses_202150o9:;@?=
6?3
%?"
inputs??????????

 
p 

 
? "&?#
?
0??????????
? ?
C__inference_lstm_11_layer_call_and_return_conditional_losses_2023259:;P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "&?#
?
0??????????
? ?
C__inference_lstm_11_layer_call_and_return_conditional_losses_2024789:;P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "&?#
?
0??????????
? ?
(__inference_lstm_11_layer_call_fn_202161b9:;@?=
6?3
%?"
inputs??????????

 
p

 
? "????????????
(__inference_lstm_11_layer_call_fn_202172b9:;@?=
6?3
%?"
inputs??????????

 
p 

 
? "????????????
(__inference_lstm_11_layer_call_fn_202489r9:;P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "????????????
(__inference_lstm_11_layer_call_fn_202500r9:;P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "????????????
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_202613?678??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
H__inference_lstm_cell_10_layer_call_and_return_conditional_losses_202646?678??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
-__inference_lstm_cell_10_layer_call_fn_202663?678??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
-__inference_lstm_cell_10_layer_call_fn_202680?678??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_202713?9:;???
y?v
!?
inputs??????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
H__inference_lstm_cell_11_layer_call_and_return_conditional_losses_202746?9:;???
y?v
!?
inputs??????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
-__inference_lstm_cell_11_layer_call_fn_202763?9:;???
y?v
!?
inputs??????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
-__inference_lstm_cell_11_layer_call_fn_202780?9:;???
y?v
!?
inputs??????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
H__inference_sequential_5_layer_call_and_return_conditional_losses_200238{6789:; %&+,B??
8?5
+?(
lstm_10_input?????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_5_layer_call_and_return_conditional_losses_200276{6789:; %&+,B??
8?5
+?(
lstm_10_input?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_5_layer_call_and_return_conditional_losses_200792t6789:; %&+,;?8
1?.
$?!
inputs?????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_5_layer_call_and_return_conditional_losses_201122t6789:; %&+,;?8
1?.
$?!
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
-__inference_sequential_5_layer_call_fn_200348n6789:; %&+,B??
8?5
+?(
lstm_10_input?????????
p

 
? "???????????
-__inference_sequential_5_layer_call_fn_200419n6789:; %&+,B??
8?5
+?(
lstm_10_input?????????
p 

 
? "???????????
-__inference_sequential_5_layer_call_fn_201155g6789:; %&+,;?8
1?.
$?!
inputs?????????
p

 
? "???????????
-__inference_sequential_5_layer_call_fn_201188g6789:; %&+,;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
$__inference_signature_wrapper_200462?6789:; %&+,K?H
? 
A?>
<
lstm_10_input+?(
lstm_10_input?????????"3?0
.
dense_23"?
dense_23?????????