¢¥7
¦ú
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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

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
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.22v2.9.1-132-g18960c44ad38ÿÒ.
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
´
.multi_head_attention_219/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.multi_head_attention_219/attention_output/bias
­
Bmulti_head_attention_219/attention_output/bias/Read/ReadVariableOpReadVariableOp.multi_head_attention_219/attention_output/bias*
_output_shapes
:*
dtype0
Á
0multi_head_attention_219/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*A
shared_name20multi_head_attention_219/attention_output/kernel
º
Dmulti_head_attention_219/attention_output/kernel/Read/ReadVariableOpReadVariableOp0multi_head_attention_219/attention_output/kernel*#
_output_shapes
:*
dtype0
£
#multi_head_attention_219/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*4
shared_name%#multi_head_attention_219/value/bias

7multi_head_attention_219/value/bias/Read/ReadVariableOpReadVariableOp#multi_head_attention_219/value/bias*
_output_shapes
:	*
dtype0
«
%multi_head_attention_219/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%multi_head_attention_219/value/kernel
¤
9multi_head_attention_219/value/kernel/Read/ReadVariableOpReadVariableOp%multi_head_attention_219/value/kernel*#
_output_shapes
:*
dtype0

!multi_head_attention_219/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!multi_head_attention_219/key/bias

5multi_head_attention_219/key/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_219/key/bias*
_output_shapes
:	*
dtype0
§
#multi_head_attention_219/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_219/key/kernel
 
7multi_head_attention_219/key/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_219/key/kernel*#
_output_shapes
:*
dtype0
£
#multi_head_attention_219/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*4
shared_name%#multi_head_attention_219/query/bias

7multi_head_attention_219/query/bias/Read/ReadVariableOpReadVariableOp#multi_head_attention_219/query/bias*
_output_shapes
:	*
dtype0
«
%multi_head_attention_219/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%multi_head_attention_219/query/kernel
¤
9multi_head_attention_219/query/kernel/Read/ReadVariableOpReadVariableOp%multi_head_attention_219/query/kernel*#
_output_shapes
:*
dtype0
´
.multi_head_attention_218/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.multi_head_attention_218/attention_output/bias
­
Bmulti_head_attention_218/attention_output/bias/Read/ReadVariableOpReadVariableOp.multi_head_attention_218/attention_output/bias*
_output_shapes
:*
dtype0
Á
0multi_head_attention_218/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*A
shared_name20multi_head_attention_218/attention_output/kernel
º
Dmulti_head_attention_218/attention_output/kernel/Read/ReadVariableOpReadVariableOp0multi_head_attention_218/attention_output/kernel*#
_output_shapes
:*
dtype0
£
#multi_head_attention_218/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*4
shared_name%#multi_head_attention_218/value/bias

7multi_head_attention_218/value/bias/Read/ReadVariableOpReadVariableOp#multi_head_attention_218/value/bias*
_output_shapes
:	*
dtype0
«
%multi_head_attention_218/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%multi_head_attention_218/value/kernel
¤
9multi_head_attention_218/value/kernel/Read/ReadVariableOpReadVariableOp%multi_head_attention_218/value/kernel*#
_output_shapes
:*
dtype0

!multi_head_attention_218/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!multi_head_attention_218/key/bias

5multi_head_attention_218/key/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_218/key/bias*
_output_shapes
:	*
dtype0
§
#multi_head_attention_218/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_218/key/kernel
 
7multi_head_attention_218/key/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_218/key/kernel*#
_output_shapes
:*
dtype0
£
#multi_head_attention_218/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*4
shared_name%#multi_head_attention_218/query/bias

7multi_head_attention_218/query/bias/Read/ReadVariableOpReadVariableOp#multi_head_attention_218/query/bias*
_output_shapes
:	*
dtype0
«
%multi_head_attention_218/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%multi_head_attention_218/query/kernel
¤
9multi_head_attention_218/query/kernel/Read/ReadVariableOpReadVariableOp%multi_head_attention_218/query/kernel*#
_output_shapes
:*
dtype0
´
.multi_head_attention_217/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.multi_head_attention_217/attention_output/bias
­
Bmulti_head_attention_217/attention_output/bias/Read/ReadVariableOpReadVariableOp.multi_head_attention_217/attention_output/bias*
_output_shapes
:*
dtype0
Á
0multi_head_attention_217/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*A
shared_name20multi_head_attention_217/attention_output/kernel
º
Dmulti_head_attention_217/attention_output/kernel/Read/ReadVariableOpReadVariableOp0multi_head_attention_217/attention_output/kernel*#
_output_shapes
:*
dtype0
£
#multi_head_attention_217/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*4
shared_name%#multi_head_attention_217/value/bias

7multi_head_attention_217/value/bias/Read/ReadVariableOpReadVariableOp#multi_head_attention_217/value/bias*
_output_shapes
:	*
dtype0
«
%multi_head_attention_217/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%multi_head_attention_217/value/kernel
¤
9multi_head_attention_217/value/kernel/Read/ReadVariableOpReadVariableOp%multi_head_attention_217/value/kernel*#
_output_shapes
:*
dtype0

!multi_head_attention_217/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!multi_head_attention_217/key/bias

5multi_head_attention_217/key/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_217/key/bias*
_output_shapes
:	*
dtype0
§
#multi_head_attention_217/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_217/key/kernel
 
7multi_head_attention_217/key/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_217/key/kernel*#
_output_shapes
:*
dtype0
£
#multi_head_attention_217/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*4
shared_name%#multi_head_attention_217/query/bias

7multi_head_attention_217/query/bias/Read/ReadVariableOpReadVariableOp#multi_head_attention_217/query/bias*
_output_shapes
:	*
dtype0
«
%multi_head_attention_217/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%multi_head_attention_217/query/kernel
¤
9multi_head_attention_217/query/kernel/Read/ReadVariableOpReadVariableOp%multi_head_attention_217/query/kernel*#
_output_shapes
:*
dtype0
´
.multi_head_attention_216/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.multi_head_attention_216/attention_output/bias
­
Bmulti_head_attention_216/attention_output/bias/Read/ReadVariableOpReadVariableOp.multi_head_attention_216/attention_output/bias*
_output_shapes
:*
dtype0
Á
0multi_head_attention_216/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*A
shared_name20multi_head_attention_216/attention_output/kernel
º
Dmulti_head_attention_216/attention_output/kernel/Read/ReadVariableOpReadVariableOp0multi_head_attention_216/attention_output/kernel*#
_output_shapes
:*
dtype0
£
#multi_head_attention_216/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*4
shared_name%#multi_head_attention_216/value/bias

7multi_head_attention_216/value/bias/Read/ReadVariableOpReadVariableOp#multi_head_attention_216/value/bias*
_output_shapes
:	*
dtype0
«
%multi_head_attention_216/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%multi_head_attention_216/value/kernel
¤
9multi_head_attention_216/value/kernel/Read/ReadVariableOpReadVariableOp%multi_head_attention_216/value/kernel*#
_output_shapes
:*
dtype0

!multi_head_attention_216/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!multi_head_attention_216/key/bias

5multi_head_attention_216/key/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_216/key/bias*
_output_shapes
:	*
dtype0
§
#multi_head_attention_216/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#multi_head_attention_216/key/kernel
 
7multi_head_attention_216/key/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_216/key/kernel*#
_output_shapes
:*
dtype0
£
#multi_head_attention_216/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*4
shared_name%#multi_head_attention_216/query/bias

7multi_head_attention_216/query/bias/Read/ReadVariableOpReadVariableOp#multi_head_attention_216/query/bias*
_output_shapes
:	*
dtype0
«
%multi_head_attention_216/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%multi_head_attention_216/query/kernel
¤
9multi_head_attention_216/query/kernel/Read/ReadVariableOpReadVariableOp%multi_head_attention_216/query/kernel*#
_output_shapes
:*
dtype0
t
dense_109/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_109/bias
m
"dense_109/bias/Read/ReadVariableOpReadVariableOpdense_109/bias*
_output_shapes
:*
dtype0
}
dense_109/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*!
shared_namedense_109/kernel
v
$dense_109/kernel/Read/ReadVariableOpReadVariableOpdense_109/kernel*
_output_shapes
:	*
dtype0
u
dense_108/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_108/bias
n
"dense_108/bias/Read/ReadVariableOpReadVariableOpdense_108/bias*
_output_shapes	
:*
dtype0
}
dense_108/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*!
shared_namedense_108/kernel
v
$dense_108/kernel/Read/ReadVariableOpReadVariableOpdense_108/kernel*
_output_shapes
:	*
dtype0
v
conv1d_439/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_439/bias
o
#conv1d_439/bias/Read/ReadVariableOpReadVariableOpconv1d_439/bias*
_output_shapes
:*
dtype0

conv1d_439/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv1d_439/kernel
{
%conv1d_439/kernel/Read/ReadVariableOpReadVariableOpconv1d_439/kernel*"
_output_shapes
:*
dtype0
v
conv1d_438/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_438/bias
o
#conv1d_438/bias/Read/ReadVariableOpReadVariableOpconv1d_438/bias*
_output_shapes
:*
dtype0

conv1d_438/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv1d_438/kernel
{
%conv1d_438/kernel/Read/ReadVariableOpReadVariableOpconv1d_438/kernel*"
_output_shapes
:*
dtype0

layer_normalization_439/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_439/beta

0layer_normalization_439/beta/Read/ReadVariableOpReadVariableOplayer_normalization_439/beta*
_output_shapes
:*
dtype0

layer_normalization_439/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namelayer_normalization_439/gamma

1layer_normalization_439/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_439/gamma*
_output_shapes
:*
dtype0

layer_normalization_438/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_438/beta

0layer_normalization_438/beta/Read/ReadVariableOpReadVariableOplayer_normalization_438/beta*
_output_shapes
:*
dtype0

layer_normalization_438/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namelayer_normalization_438/gamma

1layer_normalization_438/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_438/gamma*
_output_shapes
:*
dtype0
v
conv1d_437/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_437/bias
o
#conv1d_437/bias/Read/ReadVariableOpReadVariableOpconv1d_437/bias*
_output_shapes
:*
dtype0

conv1d_437/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv1d_437/kernel
{
%conv1d_437/kernel/Read/ReadVariableOpReadVariableOpconv1d_437/kernel*"
_output_shapes
:*
dtype0
v
conv1d_436/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_436/bias
o
#conv1d_436/bias/Read/ReadVariableOpReadVariableOpconv1d_436/bias*
_output_shapes
:*
dtype0

conv1d_436/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv1d_436/kernel
{
%conv1d_436/kernel/Read/ReadVariableOpReadVariableOpconv1d_436/kernel*"
_output_shapes
:*
dtype0

layer_normalization_437/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_437/beta

0layer_normalization_437/beta/Read/ReadVariableOpReadVariableOplayer_normalization_437/beta*
_output_shapes
:*
dtype0

layer_normalization_437/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namelayer_normalization_437/gamma

1layer_normalization_437/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_437/gamma*
_output_shapes
:*
dtype0

layer_normalization_436/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_436/beta

0layer_normalization_436/beta/Read/ReadVariableOpReadVariableOplayer_normalization_436/beta*
_output_shapes
:*
dtype0

layer_normalization_436/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namelayer_normalization_436/gamma

1layer_normalization_436/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_436/gamma*
_output_shapes
:*
dtype0
v
conv1d_435/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_435/bias
o
#conv1d_435/bias/Read/ReadVariableOpReadVariableOpconv1d_435/bias*
_output_shapes
:*
dtype0

conv1d_435/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv1d_435/kernel
{
%conv1d_435/kernel/Read/ReadVariableOpReadVariableOpconv1d_435/kernel*"
_output_shapes
:*
dtype0
v
conv1d_434/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_434/bias
o
#conv1d_434/bias/Read/ReadVariableOpReadVariableOpconv1d_434/bias*
_output_shapes
:*
dtype0

conv1d_434/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv1d_434/kernel
{
%conv1d_434/kernel/Read/ReadVariableOpReadVariableOpconv1d_434/kernel*"
_output_shapes
:*
dtype0

layer_normalization_435/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_435/beta

0layer_normalization_435/beta/Read/ReadVariableOpReadVariableOplayer_normalization_435/beta*
_output_shapes
:*
dtype0

layer_normalization_435/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namelayer_normalization_435/gamma

1layer_normalization_435/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_435/gamma*
_output_shapes
:*
dtype0

layer_normalization_434/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_434/beta

0layer_normalization_434/beta/Read/ReadVariableOpReadVariableOplayer_normalization_434/beta*
_output_shapes
:*
dtype0

layer_normalization_434/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namelayer_normalization_434/gamma

1layer_normalization_434/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_434/gamma*
_output_shapes
:*
dtype0
v
conv1d_433/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_433/bias
o
#conv1d_433/bias/Read/ReadVariableOpReadVariableOpconv1d_433/bias*
_output_shapes
:*
dtype0

conv1d_433/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv1d_433/kernel
{
%conv1d_433/kernel/Read/ReadVariableOpReadVariableOpconv1d_433/kernel*"
_output_shapes
:*
dtype0
v
conv1d_432/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_432/bias
o
#conv1d_432/bias/Read/ReadVariableOpReadVariableOpconv1d_432/bias*
_output_shapes
:*
dtype0

conv1d_432/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv1d_432/kernel
{
%conv1d_432/kernel/Read/ReadVariableOpReadVariableOpconv1d_432/kernel*"
_output_shapes
:*
dtype0

layer_normalization_433/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_433/beta

0layer_normalization_433/beta/Read/ReadVariableOpReadVariableOplayer_normalization_433/beta*
_output_shapes
:*
dtype0

layer_normalization_433/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namelayer_normalization_433/gamma

1layer_normalization_433/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_433/gamma*
_output_shapes
:*
dtype0

layer_normalization_432/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_432/beta

0layer_normalization_432/beta/Read/ReadVariableOpReadVariableOplayer_normalization_432/beta*
_output_shapes
:*
dtype0

layer_normalization_432/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namelayer_normalization_432/gamma

1layer_normalization_432/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_432/gamma*
_output_shapes
:*
dtype0

NoOpNoOp
°ð
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*êï
valueßïBÛï BÓï
í

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer-12
layer-13
layer_with_weights-7
layer-14
layer_with_weights-8
layer-15
layer-16
layer_with_weights-9
layer-17
layer-18
layer_with_weights-10
layer-19
layer_with_weights-11
layer-20
layer-21
layer-22
layer_with_weights-12
layer-23
layer_with_weights-13
layer-24
layer-25
layer_with_weights-14
layer-26
layer-27
layer_with_weights-15
layer-28
layer_with_weights-16
layer-29
layer-30
 layer-31
!layer_with_weights-17
!layer-32
"layer_with_weights-18
"layer-33
#layer-34
$layer_with_weights-19
$layer-35
%layer-36
&layer-37
'layer_with_weights-20
'layer-38
(layer-39
)layer_with_weights-21
)layer-40
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_default_save_signature
1	optimizer
2
signatures
#3_self_saveable_object_factories*
'
#4_self_saveable_object_factories* 
Ô
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;axis
	<gamma
=beta
#>_self_saveable_object_factories*

?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
E_query_dense
F
_key_dense
G_value_dense
H_softmax
I_dropout_layer
J_output_dense
#K_self_saveable_object_factories*
Ê
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses
R_random_generator
#S_self_saveable_object_factories* 
6
T	keras_api
#U_self_saveable_object_factories* 
Ô
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\axis
	]gamma
^beta
#__self_saveable_object_factories*
í
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses

fkernel
gbias
#h_self_saveable_object_factories
 i_jit_compiled_convolution_op*
Ê
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
p_random_generator
#q_self_saveable_object_factories* 
í
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses

xkernel
ybias
#z_self_saveable_object_factories
 {_jit_compiled_convolution_op*
6
|	keras_api
#}_self_saveable_object_factories* 
Ü
~	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis

gamma
	beta
$_self_saveable_object_factories*
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_query_dense

_key_dense
_value_dense
_softmax
_dropout_layer
_output_dense
$_self_saveable_object_factories*
Ò
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator
$_self_saveable_object_factories* 
8
	keras_api
$_self_saveable_object_factories* 
Þ
	variables
 trainable_variables
¡regularization_losses
¢	keras_api
£__call__
+¤&call_and_return_all_conditional_losses
	¥axis

¦gamma
	§beta
$¨_self_saveable_object_factories*
÷
©	variables
ªtrainable_variables
«regularization_losses
¬	keras_api
­__call__
+®&call_and_return_all_conditional_losses
¯kernel
	°bias
$±_self_saveable_object_factories
!²_jit_compiled_convolution_op*
Ò
³	variables
´trainable_variables
µregularization_losses
¶	keras_api
·__call__
+¸&call_and_return_all_conditional_losses
¹_random_generator
$º_self_saveable_object_factories* 
÷
»	variables
¼trainable_variables
½regularization_losses
¾	keras_api
¿__call__
+À&call_and_return_all_conditional_losses
Ákernel
	Âbias
$Ã_self_saveable_object_factories
!Ä_jit_compiled_convolution_op*
8
Å	keras_api
$Æ_self_saveable_object_factories* 
Þ
Ç	variables
Ètrainable_variables
Éregularization_losses
Ê	keras_api
Ë__call__
+Ì&call_and_return_all_conditional_losses
	Íaxis

Îgamma
	Ïbeta
$Ð_self_saveable_object_factories*
«
Ñ	variables
Òtrainable_variables
Óregularization_losses
Ô	keras_api
Õ__call__
+Ö&call_and_return_all_conditional_losses
×_query_dense
Ø
_key_dense
Ù_value_dense
Ú_softmax
Û_dropout_layer
Ü_output_dense
$Ý_self_saveable_object_factories*
Ò
Þ	variables
ßtrainable_variables
àregularization_losses
á	keras_api
â__call__
+ã&call_and_return_all_conditional_losses
ä_random_generator
$å_self_saveable_object_factories* 
8
æ	keras_api
$ç_self_saveable_object_factories* 
Þ
è	variables
étrainable_variables
êregularization_losses
ë	keras_api
ì__call__
+í&call_and_return_all_conditional_losses
	îaxis

ïgamma
	ðbeta
$ñ_self_saveable_object_factories*
÷
ò	variables
ótrainable_variables
ôregularization_losses
õ	keras_api
ö__call__
+÷&call_and_return_all_conditional_losses
økernel
	ùbias
$ú_self_saveable_object_factories
!û_jit_compiled_convolution_op*
Ò
ü	variables
ýtrainable_variables
þregularization_losses
ÿ	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator
$_self_saveable_object_factories* 
÷
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
$_self_saveable_object_factories
!_jit_compiled_convolution_op*
8
	keras_api
$_self_saveable_object_factories* 
Þ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis

gamma
	beta
$_self_saveable_object_factories*
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
 _query_dense
¡
_key_dense
¢_value_dense
£_softmax
¤_dropout_layer
¥_output_dense
$¦_self_saveable_object_factories*
Ò
§	variables
¨trainable_variables
©regularization_losses
ª	keras_api
«__call__
+¬&call_and_return_all_conditional_losses
­_random_generator
$®_self_saveable_object_factories* 
8
¯	keras_api
$°_self_saveable_object_factories* 
Þ
±	variables
²trainable_variables
³regularization_losses
´	keras_api
µ__call__
+¶&call_and_return_all_conditional_losses
	·axis

¸gamma
	¹beta
$º_self_saveable_object_factories*
÷
»	variables
¼trainable_variables
½regularization_losses
¾	keras_api
¿__call__
+À&call_and_return_all_conditional_losses
Ákernel
	Âbias
$Ã_self_saveable_object_factories
!Ä_jit_compiled_convolution_op*
Ò
Å	variables
Ætrainable_variables
Çregularization_losses
È	keras_api
É__call__
+Ê&call_and_return_all_conditional_losses
Ë_random_generator
$Ì_self_saveable_object_factories* 
÷
Í	variables
Îtrainable_variables
Ïregularization_losses
Ð	keras_api
Ñ__call__
+Ò&call_and_return_all_conditional_losses
Ókernel
	Ôbias
$Õ_self_saveable_object_factories
!Ö_jit_compiled_convolution_op*
8
×	keras_api
$Ø_self_saveable_object_factories* 
º
Ù	variables
Útrainable_variables
Ûregularization_losses
Ü	keras_api
Ý__call__
+Þ&call_and_return_all_conditional_losses
$ß_self_saveable_object_factories* 
Ô
à	variables
átrainable_variables
âregularization_losses
ã	keras_api
ä__call__
+å&call_and_return_all_conditional_losses
ækernel
	çbias
$è_self_saveable_object_factories*
Ò
é	variables
êtrainable_variables
ëregularization_losses
ì	keras_api
í__call__
+î&call_and_return_all_conditional_losses
ï_random_generator
$ð_self_saveable_object_factories* 
Ô
ñ	variables
òtrainable_variables
óregularization_losses
ô	keras_api
õ__call__
+ö&call_and_return_all_conditional_losses
÷kernel
	øbias
$ù_self_saveable_object_factories*
Ö
<0
=1
ú2
û3
ü4
ý5
þ6
ÿ7
8
9
]10
^11
f12
g13
x14
y15
16
17
18
19
20
21
22
23
24
25
¦26
§27
¯28
°29
Á30
Â31
Î32
Ï33
34
35
36
37
38
39
40
41
ï42
ð43
ø44
ù45
46
47
48
49
50
51
52
53
54
55
56
57
¸58
¹59
Á60
Â61
Ó62
Ô63
æ64
ç65
÷66
ø67*
Ö
<0
=1
ú2
û3
ü4
ý5
þ6
ÿ7
8
9
]10
^11
f12
g13
x14
y15
16
17
18
19
20
21
22
23
24
25
¦26
§27
¯28
°29
Á30
Â31
Î32
Ï33
34
35
36
37
38
39
40
41
ï42
ð43
ø44
ù45
46
47
48
49
50
51
52
53
54
55
56
57
¸58
¹59
Á60
Â61
Ó62
Ô63
æ64
ç65
÷66
ø67*
* 
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
0_default_save_signature
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*
:
trace_0
 trace_1
¡trace_2
¢trace_3* 
:
£trace_0
¤trace_1
¥trace_2
¦trace_3* 
* 
* 

§serving_default* 
* 
* 

<0
=1*

<0
=1*
* 

¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*

­trace_0* 

®trace_0* 
* 
lf
VARIABLE_VALUElayer_normalization_432/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_432/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
ú0
û1
ü2
ý3
þ4
ÿ5
6
7*
D
ú0
û1
ü2
ý3
þ4
ÿ5
6
7*
* 

¯non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

´trace_0
µtrace_1* 

¶trace_0
·trace_1* 

¸	variables
¹trainable_variables
ºregularization_losses
»	keras_api
¼__call__
+½&call_and_return_all_conditional_losses
¾partial_output_shape
¿full_output_shape
úkernel
	ûbias
$À_self_saveable_object_factories*

Á	variables
Âtrainable_variables
Ãregularization_losses
Ä	keras_api
Å__call__
+Æ&call_and_return_all_conditional_losses
Çpartial_output_shape
Èfull_output_shape
ükernel
	ýbias
$É_self_saveable_object_factories*

Ê	variables
Ëtrainable_variables
Ìregularization_losses
Í	keras_api
Î__call__
+Ï&call_and_return_all_conditional_losses
Ðpartial_output_shape
Ñfull_output_shape
þkernel
	ÿbias
$Ò_self_saveable_object_factories*
º
Ó	variables
Ôtrainable_variables
Õregularization_losses
Ö	keras_api
×__call__
+Ø&call_and_return_all_conditional_losses
$Ù_self_saveable_object_factories* 
Ò
Ú	variables
Ûtrainable_variables
Üregularization_losses
Ý	keras_api
Þ__call__
+ß&call_and_return_all_conditional_losses
à_random_generator
$á_self_saveable_object_factories* 

â	variables
ãtrainable_variables
äregularization_losses
å	keras_api
æ__call__
+ç&call_and_return_all_conditional_losses
èpartial_output_shape
éfull_output_shape
kernel
	bias
$ê_self_saveable_object_factories*
* 
* 
* 
* 

ënon_trainable_variables
ìlayers
ímetrics
 îlayer_regularization_losses
ïlayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 

ðtrace_0
ñtrace_1* 

òtrace_0
ótrace_1* 
* 
* 
* 
* 

]0
^1*

]0
^1*
* 

ônon_trainable_variables
õlayers
ömetrics
 ÷layer_regularization_losses
ølayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

ùtrace_0* 

útrace_0* 
* 
lf
VARIABLE_VALUElayer_normalization_433/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_433/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 

f0
g1*

f0
g1*
* 

ûnon_trainable_variables
ülayers
ýmetrics
 þlayer_regularization_losses
ÿlayer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses*

trace_0* 

trace_0* 
a[
VARIABLE_VALUEconv1d_432/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv1d_432/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses* 

trace_0
trace_1* 

trace_0
trace_1* 
* 
* 

x0
y1*

x0
y1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses*

trace_0* 

trace_0* 
a[
VARIABLE_VALUEconv1d_433/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv1d_433/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
~	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
lf
VARIABLE_VALUElayer_normalization_434/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_434/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
0
1
2
3
4
5
6
7*
D
0
1
2
3
4
5
6
7*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0
trace_1* 

 trace_0
¡trace_1* 

¢	variables
£trainable_variables
¤regularization_losses
¥	keras_api
¦__call__
+§&call_and_return_all_conditional_losses
¨partial_output_shape
©full_output_shape
kernel
	bias
$ª_self_saveable_object_factories*

«	variables
¬trainable_variables
­regularization_losses
®	keras_api
¯__call__
+°&call_and_return_all_conditional_losses
±partial_output_shape
²full_output_shape
kernel
	bias
$³_self_saveable_object_factories*

´	variables
µtrainable_variables
¶regularization_losses
·	keras_api
¸__call__
+¹&call_and_return_all_conditional_losses
ºpartial_output_shape
»full_output_shape
kernel
	bias
$¼_self_saveable_object_factories*
º
½	variables
¾trainable_variables
¿regularization_losses
À	keras_api
Á__call__
+Â&call_and_return_all_conditional_losses
$Ã_self_saveable_object_factories* 
Ò
Ä	variables
Åtrainable_variables
Æregularization_losses
Ç	keras_api
È__call__
+É&call_and_return_all_conditional_losses
Ê_random_generator
$Ë_self_saveable_object_factories* 

Ì	variables
Ítrainable_variables
Îregularization_losses
Ï	keras_api
Ð__call__
+Ñ&call_and_return_all_conditional_losses
Òpartial_output_shape
Ófull_output_shape
kernel
	bias
$Ô_self_saveable_object_factories*
* 
* 
* 
* 

Õnon_trainable_variables
Ölayers
×metrics
 Ølayer_regularization_losses
Ùlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Útrace_0
Ûtrace_1* 

Ütrace_0
Ýtrace_1* 
* 
* 
* 
* 

¦0
§1*

¦0
§1*
* 

Þnon_trainable_variables
ßlayers
àmetrics
 álayer_regularization_losses
âlayer_metrics
	variables
 trainable_variables
¡regularization_losses
£__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses*

ãtrace_0* 

ätrace_0* 
* 
lf
VARIABLE_VALUElayer_normalization_435/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUElayer_normalization_435/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 

¯0
°1*

¯0
°1*
* 

ånon_trainable_variables
ælayers
çmetrics
 èlayer_regularization_losses
élayer_metrics
©	variables
ªtrainable_variables
«regularization_losses
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses*

êtrace_0* 

ëtrace_0* 
a[
VARIABLE_VALUEconv1d_434/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv1d_434/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 

ìnon_trainable_variables
ílayers
îmetrics
 ïlayer_regularization_losses
ðlayer_metrics
³	variables
´trainable_variables
µregularization_losses
·__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses* 

ñtrace_0
òtrace_1* 

ótrace_0
ôtrace_1* 
* 
* 

Á0
Â1*

Á0
Â1*
* 

õnon_trainable_variables
ölayers
÷metrics
 ølayer_regularization_losses
ùlayer_metrics
»	variables
¼trainable_variables
½regularization_losses
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses*

útrace_0* 

ûtrace_0* 
a[
VARIABLE_VALUEconv1d_435/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv1d_435/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Î0
Ï1*

Î0
Ï1*
* 

ünon_trainable_variables
ýlayers
þmetrics
 ÿlayer_regularization_losses
layer_metrics
Ç	variables
Ètrainable_variables
Éregularization_losses
Ë__call__
+Ì&call_and_return_all_conditional_losses
'Ì"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
mg
VARIABLE_VALUElayer_normalization_436/gamma6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUElayer_normalization_436/beta5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
0
1
2
3
4
5
6
7*
D
0
1
2
3
4
5
6
7*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ñ	variables
Òtrainable_variables
Óregularization_losses
Õ__call__
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape
kernel
	bias
$_self_saveable_object_factories*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape
kernel
	bias
$_self_saveable_object_factories*

	variables
trainable_variables
 regularization_losses
¡	keras_api
¢__call__
+£&call_and_return_all_conditional_losses
¤partial_output_shape
¥full_output_shape
kernel
	bias
$¦_self_saveable_object_factories*
º
§	variables
¨trainable_variables
©regularization_losses
ª	keras_api
«__call__
+¬&call_and_return_all_conditional_losses
$­_self_saveable_object_factories* 
Ò
®	variables
¯trainable_variables
°regularization_losses
±	keras_api
²__call__
+³&call_and_return_all_conditional_losses
´_random_generator
$µ_self_saveable_object_factories* 

¶	variables
·trainable_variables
¸regularization_losses
¹	keras_api
º__call__
+»&call_and_return_all_conditional_losses
¼partial_output_shape
½full_output_shape
kernel
	bias
$¾_self_saveable_object_factories*
* 
* 
* 
* 

¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
Þ	variables
ßtrainable_variables
àregularization_losses
â__call__
+ã&call_and_return_all_conditional_losses
'ã"call_and_return_conditional_losses* 

Ätrace_0
Åtrace_1* 

Ætrace_0
Çtrace_1* 
* 
* 
* 
* 

ï0
ð1*

ï0
ð1*
* 

Ènon_trainable_variables
Élayers
Êmetrics
 Ëlayer_regularization_losses
Ìlayer_metrics
è	variables
étrainable_variables
êregularization_losses
ì__call__
+í&call_and_return_all_conditional_losses
'í"call_and_return_conditional_losses*

Ítrace_0* 

Îtrace_0* 
* 
mg
VARIABLE_VALUElayer_normalization_437/gamma6layer_with_weights-12/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUElayer_normalization_437/beta5layer_with_weights-12/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 

ø0
ù1*

ø0
ù1*
* 

Ïnon_trainable_variables
Ðlayers
Ñmetrics
 Òlayer_regularization_losses
Ólayer_metrics
ò	variables
ótrainable_variables
ôregularization_losses
ö__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses*

Ôtrace_0* 

Õtrace_0* 
b\
VARIABLE_VALUEconv1d_436/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv1d_436/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 

Önon_trainable_variables
×layers
Ømetrics
 Ùlayer_regularization_losses
Úlayer_metrics
ü	variables
ýtrainable_variables
þregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Ûtrace_0
Ütrace_1* 

Ýtrace_0
Þtrace_1* 
* 
* 

0
1*

0
1*
* 

ßnon_trainable_variables
àlayers
ámetrics
 âlayer_regularization_losses
ãlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

ätrace_0* 

åtrace_0* 
b\
VARIABLE_VALUEconv1d_437/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv1d_437/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

0
1*

0
1*
* 

ænon_trainable_variables
çlayers
èmetrics
 élayer_regularization_losses
êlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

ëtrace_0* 

ìtrace_0* 
* 
mg
VARIABLE_VALUElayer_normalization_438/gamma6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUElayer_normalization_438/beta5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
0
1
2
3
4
5
6
7*
D
0
1
2
3
4
5
6
7*
* 

ínon_trainable_variables
îlayers
ïmetrics
 ðlayer_regularization_losses
ñlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

òtrace_0
ótrace_1* 

ôtrace_0
õtrace_1* 

ö	variables
÷trainable_variables
øregularization_losses
ù	keras_api
ú__call__
+û&call_and_return_all_conditional_losses
üpartial_output_shape
ýfull_output_shape
kernel
	bias
$þ_self_saveable_object_factories*

ÿ	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape
kernel
	bias
$_self_saveable_object_factories*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape
kernel
	bias
$_self_saveable_object_factories*
º
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
$_self_saveable_object_factories* 
Ò
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator
$_self_saveable_object_factories* 

 	variables
¡trainable_variables
¢regularization_losses
£	keras_api
¤__call__
+¥&call_and_return_all_conditional_losses
¦partial_output_shape
§full_output_shape
kernel
	bias
$¨_self_saveable_object_factories*
* 
* 
* 
* 

©non_trainable_variables
ªlayers
«metrics
 ¬layer_regularization_losses
­layer_metrics
§	variables
¨trainable_variables
©regularization_losses
«__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses* 

®trace_0
¯trace_1* 

°trace_0
±trace_1* 
* 
* 
* 
* 

¸0
¹1*

¸0
¹1*
* 

²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
±	variables
²trainable_variables
³regularization_losses
µ__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses*

·trace_0* 

¸trace_0* 
* 
mg
VARIABLE_VALUElayer_normalization_439/gamma6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUElayer_normalization_439/beta5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 

Á0
Â1*

Á0
Â1*
* 

¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
»	variables
¼trainable_variables
½regularization_losses
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses*

¾trace_0* 

¿trace_0* 
b\
VARIABLE_VALUEconv1d_438/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv1d_438/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 

Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
Å	variables
Ætrainable_variables
Çregularization_losses
É__call__
+Ê&call_and_return_all_conditional_losses
'Ê"call_and_return_conditional_losses* 

Åtrace_0
Ætrace_1* 

Çtrace_0
Ètrace_1* 
* 
* 

Ó0
Ô1*

Ó0
Ô1*
* 

Énon_trainable_variables
Êlayers
Ëmetrics
 Ìlayer_regularization_losses
Ílayer_metrics
Í	variables
Îtrainable_variables
Ïregularization_losses
Ñ__call__
+Ò&call_and_return_all_conditional_losses
'Ò"call_and_return_conditional_losses*

Îtrace_0* 

Ïtrace_0* 
b\
VARIABLE_VALUEconv1d_439/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv1d_439/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 

Ðnon_trainable_variables
Ñlayers
Òmetrics
 Ólayer_regularization_losses
Ôlayer_metrics
Ù	variables
Útrainable_variables
Ûregularization_losses
Ý__call__
+Þ&call_and_return_all_conditional_losses
'Þ"call_and_return_conditional_losses* 

Õtrace_0* 

Ötrace_0* 
* 

æ0
ç1*

æ0
ç1*
* 

×non_trainable_variables
Ølayers
Ùmetrics
 Úlayer_regularization_losses
Ûlayer_metrics
à	variables
átrainable_variables
âregularization_losses
ä__call__
+å&call_and_return_all_conditional_losses
'å"call_and_return_conditional_losses*

Ütrace_0* 

Ýtrace_0* 
a[
VARIABLE_VALUEdense_108/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_108/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Þnon_trainable_variables
ßlayers
àmetrics
 álayer_regularization_losses
âlayer_metrics
é	variables
êtrainable_variables
ëregularization_losses
í__call__
+î&call_and_return_all_conditional_losses
'î"call_and_return_conditional_losses* 

ãtrace_0
ätrace_1* 

åtrace_0
ætrace_1* 
* 
* 

÷0
ø1*

÷0
ø1*
* 

çnon_trainable_variables
èlayers
émetrics
 êlayer_regularization_losses
ëlayer_metrics
ñ	variables
òtrainable_variables
óregularization_losses
õ__call__
+ö&call_and_return_all_conditional_losses
'ö"call_and_return_conditional_losses*

ìtrace_0* 

ítrace_0* 
a[
VARIABLE_VALUEdense_109/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_109/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
e_
VARIABLE_VALUE%multi_head_attention_216/query/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#multi_head_attention_216/query/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#multi_head_attention_216/key/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!multi_head_attention_216/key/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%multi_head_attention_216/value/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#multi_head_attention_216/value/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE0multi_head_attention_216/attention_output/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE.multi_head_attention_216/attention_output/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%multi_head_attention_217/query/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_217/query/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_217/key/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_217/key/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%multi_head_attention_217/value/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_217/value/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0multi_head_attention_217/attention_output/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.multi_head_attention_217/attention_output/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%multi_head_attention_218/query/kernel'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_218/query/bias'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_218/key/kernel'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_218/key/bias'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%multi_head_attention_218/value/kernel'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_218/value/bias'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0multi_head_attention_218/attention_output/kernel'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.multi_head_attention_218/attention_output/bias'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%multi_head_attention_219/query/kernel'variables/50/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_219/query/bias'variables/51/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_219/key/kernel'variables/52/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_219/key/bias'variables/53/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%multi_head_attention_219/value/kernel'variables/54/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_219/value/bias'variables/55/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0multi_head_attention_219/attention_output/kernel'variables/56/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.multi_head_attention_219/attention_output/bias'variables/57/.ATTRIBUTES/VARIABLE_VALUE*
* 
Â
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40*

î0*
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
.
E0
F1
G2
H3
I4
J5*
* 
* 
* 
* 
* 
* 
* 

ú0
û1*

ú0
û1*
* 

ïnon_trainable_variables
ðlayers
ñmetrics
 òlayer_regularization_losses
ólayer_metrics
¸	variables
¹trainable_variables
ºregularization_losses
¼__call__
+½&call_and_return_all_conditional_losses
'½"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

ü0
ý1*

ü0
ý1*
* 

ônon_trainable_variables
õlayers
ömetrics
 ÷layer_regularization_losses
ølayer_metrics
Á	variables
Âtrainable_variables
Ãregularization_losses
Å__call__
+Æ&call_and_return_all_conditional_losses
'Æ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

þ0
ÿ1*

þ0
ÿ1*
* 

ùnon_trainable_variables
úlayers
ûmetrics
 ülayer_regularization_losses
ýlayer_metrics
Ê	variables
Ëtrainable_variables
Ìregularization_losses
Î__call__
+Ï&call_and_return_all_conditional_losses
'Ï"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 

þnon_trainable_variables
ÿlayers
metrics
 layer_regularization_losses
layer_metrics
Ó	variables
Ôtrainable_variables
Õregularization_losses
×__call__
+Ø&call_and_return_all_conditional_losses
'Ø"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ú	variables
Ûtrainable_variables
Üregularization_losses
Þ__call__
+ß&call_and_return_all_conditional_losses
'ß"call_and_return_conditional_losses* 
* 
* 
* 
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
â	variables
ãtrainable_variables
äregularization_losses
æ__call__
+ç&call_and_return_all_conditional_losses
'ç"call_and_return_conditional_losses*
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
4
0
1
2
3
4
5*
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¢	variables
£trainable_variables
¤regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
«	variables
¬trainable_variables
­regularization_losses
¯__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
´	variables
µtrainable_variables
¶regularization_losses
¸__call__
+¹&call_and_return_all_conditional_losses
'¹"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
½	variables
¾trainable_variables
¿regularization_losses
Á__call__
+Â&call_and_return_all_conditional_losses
'Â"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

¡non_trainable_variables
¢layers
£metrics
 ¤layer_regularization_losses
¥layer_metrics
Ä	variables
Åtrainable_variables
Æregularization_losses
È__call__
+É&call_and_return_all_conditional_losses
'É"call_and_return_conditional_losses* 
* 
* 
* 
* 

0
1*

0
1*
* 

¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ªlayer_metrics
Ì	variables
Ítrainable_variables
Îregularization_losses
Ð__call__
+Ñ&call_and_return_all_conditional_losses
'Ñ"call_and_return_conditional_losses*
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
4
×0
Ø1
Ù2
Ú3
Û4
Ü5*
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 

«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0
1*

0
1*
* 

°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
´layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0
1*

0
1*
* 

µnon_trainable_variables
¶layers
·metrics
 ¸layer_regularization_losses
¹layer_metrics
	variables
trainable_variables
 regularization_losses
¢__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 

ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
§	variables
¨trainable_variables
©regularization_losses
«__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
®	variables
¯trainable_variables
°regularization_losses
²__call__
+³&call_and_return_all_conditional_losses
'³"call_and_return_conditional_losses* 
* 
* 
* 
* 

0
1*

0
1*
* 

Änon_trainable_variables
Ålayers
Æmetrics
 Çlayer_regularization_losses
Èlayer_metrics
¶	variables
·trainable_variables
¸regularization_losses
º__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses*
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
4
 0
¡1
¢2
£3
¤4
¥5*
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 

Énon_trainable_variables
Êlayers
Ëmetrics
 Ìlayer_regularization_losses
Ílayer_metrics
ö	variables
÷trainable_variables
øregularization_losses
ú__call__
+û&call_and_return_all_conditional_losses
'û"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0
1*

0
1*
* 

Înon_trainable_variables
Ïlayers
Ðmetrics
 Ñlayer_regularization_losses
Òlayer_metrics
ÿ	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0
1*

0
1*
* 

Ónon_trainable_variables
Ôlayers
Õmetrics
 Ölayer_regularization_losses
×layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 

Ønon_trainable_variables
Ùlayers
Úmetrics
 Ûlayer_regularization_losses
Ülayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

Ýnon_trainable_variables
Þlayers
ßmetrics
 àlayer_regularization_losses
álayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 

0
1*

0
1*
* 

ânon_trainable_variables
ãlayers
ämetrics
 ålayer_regularization_losses
ælayer_metrics
 	variables
¡trainable_variables
¢regularization_losses
¤__call__
+¥&call_and_return_all_conditional_losses
'¥"call_and_return_conditional_losses*
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
ç	variables
è	keras_api

étotal

êcount*
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

é0
ê1*

ç	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_55Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_55layer_normalization_432/gammalayer_normalization_432/beta%multi_head_attention_216/query/kernel#multi_head_attention_216/query/bias#multi_head_attention_216/key/kernel!multi_head_attention_216/key/bias%multi_head_attention_216/value/kernel#multi_head_attention_216/value/bias0multi_head_attention_216/attention_output/kernel.multi_head_attention_216/attention_output/biaslayer_normalization_433/gammalayer_normalization_433/betaconv1d_432/kernelconv1d_432/biasconv1d_433/kernelconv1d_433/biaslayer_normalization_434/gammalayer_normalization_434/beta%multi_head_attention_217/query/kernel#multi_head_attention_217/query/bias#multi_head_attention_217/key/kernel!multi_head_attention_217/key/bias%multi_head_attention_217/value/kernel#multi_head_attention_217/value/bias0multi_head_attention_217/attention_output/kernel.multi_head_attention_217/attention_output/biaslayer_normalization_435/gammalayer_normalization_435/betaconv1d_434/kernelconv1d_434/biasconv1d_435/kernelconv1d_435/biaslayer_normalization_436/gammalayer_normalization_436/beta%multi_head_attention_218/query/kernel#multi_head_attention_218/query/bias#multi_head_attention_218/key/kernel!multi_head_attention_218/key/bias%multi_head_attention_218/value/kernel#multi_head_attention_218/value/bias0multi_head_attention_218/attention_output/kernel.multi_head_attention_218/attention_output/biaslayer_normalization_437/gammalayer_normalization_437/betaconv1d_436/kernelconv1d_436/biasconv1d_437/kernelconv1d_437/biaslayer_normalization_438/gammalayer_normalization_438/beta%multi_head_attention_219/query/kernel#multi_head_attention_219/query/bias#multi_head_attention_219/key/kernel!multi_head_attention_219/key/bias%multi_head_attention_219/value/kernel#multi_head_attention_219/value/bias0multi_head_attention_219/attention_output/kernel.multi_head_attention_219/attention_output/biaslayer_normalization_439/gammalayer_normalization_439/betaconv1d_438/kernelconv1d_438/biasconv1d_439/kernelconv1d_439/biasdense_108/kerneldense_108/biasdense_109/kerneldense_109/bias*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*f
_read_only_resource_inputsH
FD	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCD*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_1686832
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¿
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename1layer_normalization_432/gamma/Read/ReadVariableOp0layer_normalization_432/beta/Read/ReadVariableOp1layer_normalization_433/gamma/Read/ReadVariableOp0layer_normalization_433/beta/Read/ReadVariableOp%conv1d_432/kernel/Read/ReadVariableOp#conv1d_432/bias/Read/ReadVariableOp%conv1d_433/kernel/Read/ReadVariableOp#conv1d_433/bias/Read/ReadVariableOp1layer_normalization_434/gamma/Read/ReadVariableOp0layer_normalization_434/beta/Read/ReadVariableOp1layer_normalization_435/gamma/Read/ReadVariableOp0layer_normalization_435/beta/Read/ReadVariableOp%conv1d_434/kernel/Read/ReadVariableOp#conv1d_434/bias/Read/ReadVariableOp%conv1d_435/kernel/Read/ReadVariableOp#conv1d_435/bias/Read/ReadVariableOp1layer_normalization_436/gamma/Read/ReadVariableOp0layer_normalization_436/beta/Read/ReadVariableOp1layer_normalization_437/gamma/Read/ReadVariableOp0layer_normalization_437/beta/Read/ReadVariableOp%conv1d_436/kernel/Read/ReadVariableOp#conv1d_436/bias/Read/ReadVariableOp%conv1d_437/kernel/Read/ReadVariableOp#conv1d_437/bias/Read/ReadVariableOp1layer_normalization_438/gamma/Read/ReadVariableOp0layer_normalization_438/beta/Read/ReadVariableOp1layer_normalization_439/gamma/Read/ReadVariableOp0layer_normalization_439/beta/Read/ReadVariableOp%conv1d_438/kernel/Read/ReadVariableOp#conv1d_438/bias/Read/ReadVariableOp%conv1d_439/kernel/Read/ReadVariableOp#conv1d_439/bias/Read/ReadVariableOp$dense_108/kernel/Read/ReadVariableOp"dense_108/bias/Read/ReadVariableOp$dense_109/kernel/Read/ReadVariableOp"dense_109/bias/Read/ReadVariableOp9multi_head_attention_216/query/kernel/Read/ReadVariableOp7multi_head_attention_216/query/bias/Read/ReadVariableOp7multi_head_attention_216/key/kernel/Read/ReadVariableOp5multi_head_attention_216/key/bias/Read/ReadVariableOp9multi_head_attention_216/value/kernel/Read/ReadVariableOp7multi_head_attention_216/value/bias/Read/ReadVariableOpDmulti_head_attention_216/attention_output/kernel/Read/ReadVariableOpBmulti_head_attention_216/attention_output/bias/Read/ReadVariableOp9multi_head_attention_217/query/kernel/Read/ReadVariableOp7multi_head_attention_217/query/bias/Read/ReadVariableOp7multi_head_attention_217/key/kernel/Read/ReadVariableOp5multi_head_attention_217/key/bias/Read/ReadVariableOp9multi_head_attention_217/value/kernel/Read/ReadVariableOp7multi_head_attention_217/value/bias/Read/ReadVariableOpDmulti_head_attention_217/attention_output/kernel/Read/ReadVariableOpBmulti_head_attention_217/attention_output/bias/Read/ReadVariableOp9multi_head_attention_218/query/kernel/Read/ReadVariableOp7multi_head_attention_218/query/bias/Read/ReadVariableOp7multi_head_attention_218/key/kernel/Read/ReadVariableOp5multi_head_attention_218/key/bias/Read/ReadVariableOp9multi_head_attention_218/value/kernel/Read/ReadVariableOp7multi_head_attention_218/value/bias/Read/ReadVariableOpDmulti_head_attention_218/attention_output/kernel/Read/ReadVariableOpBmulti_head_attention_218/attention_output/bias/Read/ReadVariableOp9multi_head_attention_219/query/kernel/Read/ReadVariableOp7multi_head_attention_219/query/bias/Read/ReadVariableOp7multi_head_attention_219/key/kernel/Read/ReadVariableOp5multi_head_attention_219/key/bias/Read/ReadVariableOp9multi_head_attention_219/value/kernel/Read/ReadVariableOp7multi_head_attention_219/value/bias/Read/ReadVariableOpDmulti_head_attention_219/attention_output/kernel/Read/ReadVariableOpBmulti_head_attention_219/attention_output/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*S
TinL
J2H*
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
GPU2*0J 8 *)
f$R"
 __inference__traced_save_1689443
Â
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer_normalization_432/gammalayer_normalization_432/betalayer_normalization_433/gammalayer_normalization_433/betaconv1d_432/kernelconv1d_432/biasconv1d_433/kernelconv1d_433/biaslayer_normalization_434/gammalayer_normalization_434/betalayer_normalization_435/gammalayer_normalization_435/betaconv1d_434/kernelconv1d_434/biasconv1d_435/kernelconv1d_435/biaslayer_normalization_436/gammalayer_normalization_436/betalayer_normalization_437/gammalayer_normalization_437/betaconv1d_436/kernelconv1d_436/biasconv1d_437/kernelconv1d_437/biaslayer_normalization_438/gammalayer_normalization_438/betalayer_normalization_439/gammalayer_normalization_439/betaconv1d_438/kernelconv1d_438/biasconv1d_439/kernelconv1d_439/biasdense_108/kerneldense_108/biasdense_109/kerneldense_109/bias%multi_head_attention_216/query/kernel#multi_head_attention_216/query/bias#multi_head_attention_216/key/kernel!multi_head_attention_216/key/bias%multi_head_attention_216/value/kernel#multi_head_attention_216/value/bias0multi_head_attention_216/attention_output/kernel.multi_head_attention_216/attention_output/bias%multi_head_attention_217/query/kernel#multi_head_attention_217/query/bias#multi_head_attention_217/key/kernel!multi_head_attention_217/key/bias%multi_head_attention_217/value/kernel#multi_head_attention_217/value/bias0multi_head_attention_217/attention_output/kernel.multi_head_attention_217/attention_output/bias%multi_head_attention_218/query/kernel#multi_head_attention_218/query/bias#multi_head_attention_218/key/kernel!multi_head_attention_218/key/bias%multi_head_attention_218/value/kernel#multi_head_attention_218/value/bias0multi_head_attention_218/attention_output/kernel.multi_head_attention_218/attention_output/bias%multi_head_attention_219/query/kernel#multi_head_attention_219/query/bias#multi_head_attention_219/key/kernel!multi_head_attention_219/key/bias%multi_head_attention_219/value/kernel#multi_head_attention_219/value/bias0multi_head_attention_219/attention_output/kernel.multi_head_attention_219/attention_output/biastotalcount*R
TinK
I2G*
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
GPU2*0J 8 *,
f'R%
#__inference__traced_restore_1689663ø)
¸
I
-__inference_dropout_530_layer_call_fn_1688718

inputs
identityº
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_530_layer_call_and_return_conditional_losses_1684560d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

T__inference_layer_normalization_434_layer_call_and_return_conditional_losses_1688306

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç2

U__inference_multi_head_attention_216_layer_call_and_return_conditional_losses_1685697	
query	
valueB
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	@
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	B
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	M
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbeo
softmax_40/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_535/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout_535/dropout/MulMulsoftmax_40/Softmax:softmax:0"dropout_535/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dropout_535/dropout/ShapeShapesoftmax_40/Softmax:softmax:0*
T0*
_output_shapes
:¬
0dropout_535/dropout/random_uniform/RandomUniformRandomUniform"dropout_535/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_535/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ò
 dropout_535/dropout/GreaterEqualGreaterEqual9dropout_535/dropout/random_uniform/RandomUniform:output:0+dropout_535/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_535/dropout/CastCast$dropout_535/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_535/dropout/Mul_1Muldropout_535/dropout/Mul:z:0dropout_535/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
einsum_1/EinsumEinsumdropout_535/dropout/Mul_1:z:0value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcd©
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
ñ
¢
9__inference_layer_normalization_436_layer_call_fn_1688570

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallð
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_436_layer_call_and_return_conditional_losses_1684496s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

T__inference_layer_normalization_433_layer_call_and_return_conditional_losses_1688199

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


g
H__inference_dropout_526_layer_call_and_return_conditional_losses_1685626

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë

G__inference_conv1d_434_layer_call_and_return_conditional_losses_1688510

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
I
-__inference_dropout_534_layer_call_fn_1689169

inputs
identity·
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_534_layer_call_and_return_conditional_losses_1684833a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
f
H__inference_dropout_528_layer_call_and_return_conditional_losses_1688442

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë

G__inference_conv1d_436_layer_call_and_return_conditional_losses_1684607

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

T__inference_layer_normalization_439_layer_call_and_return_conditional_losses_1684753

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ
¢
9__inference_layer_normalization_439_layer_call_fn_1689035

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallð
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_439_layer_call_and_return_conditional_losses_1684753s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ*

U__inference_multi_head_attention_218_layer_call_and_return_conditional_losses_1684537	
query	
valueB
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	@
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	B
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	M
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbeo
softmax_42/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
dropout_537/IdentityIdentitysoftmax_42/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
einsum_1/EinsumEinsumdropout_537/Identity:output:0value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcd©
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
ó

G__inference_conv1d_433_layer_call_and_return_conditional_losses_1684299

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ*

U__inference_multi_head_attention_217_layer_call_and_return_conditional_losses_1684369	
query	
valueB
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	@
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	B
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	M
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbeo
softmax_41/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
dropout_536/IdentityIdentitysoftmax_41/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
einsum_1/EinsumEinsumdropout_536/Identity:output:0value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcd©
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
ë
f
H__inference_dropout_528_layer_call_and_return_conditional_losses_1684392

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»
Ý!
E__inference_model_54_layer_call_and_return_conditional_losses_1686509
input_55-
layer_normalization_432_1686332:-
layer_normalization_432_1686334:7
 multi_head_attention_216_1686337:3
 multi_head_attention_216_1686339:	7
 multi_head_attention_216_1686341:3
 multi_head_attention_216_1686343:	7
 multi_head_attention_216_1686345:3
 multi_head_attention_216_1686347:	7
 multi_head_attention_216_1686349:.
 multi_head_attention_216_1686351:-
layer_normalization_433_1686356:-
layer_normalization_433_1686358:(
conv1d_432_1686361: 
conv1d_432_1686363:(
conv1d_433_1686367: 
conv1d_433_1686369:-
layer_normalization_434_1686373:-
layer_normalization_434_1686375:7
 multi_head_attention_217_1686378:3
 multi_head_attention_217_1686380:	7
 multi_head_attention_217_1686382:3
 multi_head_attention_217_1686384:	7
 multi_head_attention_217_1686386:3
 multi_head_attention_217_1686388:	7
 multi_head_attention_217_1686390:.
 multi_head_attention_217_1686392:-
layer_normalization_435_1686397:-
layer_normalization_435_1686399:(
conv1d_434_1686402: 
conv1d_434_1686404:(
conv1d_435_1686408: 
conv1d_435_1686410:-
layer_normalization_436_1686414:-
layer_normalization_436_1686416:7
 multi_head_attention_218_1686419:3
 multi_head_attention_218_1686421:	7
 multi_head_attention_218_1686423:3
 multi_head_attention_218_1686425:	7
 multi_head_attention_218_1686427:3
 multi_head_attention_218_1686429:	7
 multi_head_attention_218_1686431:.
 multi_head_attention_218_1686433:-
layer_normalization_437_1686438:-
layer_normalization_437_1686440:(
conv1d_436_1686443: 
conv1d_436_1686445:(
conv1d_437_1686449: 
conv1d_437_1686451:-
layer_normalization_438_1686455:-
layer_normalization_438_1686457:7
 multi_head_attention_219_1686460:3
 multi_head_attention_219_1686462:	7
 multi_head_attention_219_1686464:3
 multi_head_attention_219_1686466:	7
 multi_head_attention_219_1686468:3
 multi_head_attention_219_1686470:	7
 multi_head_attention_219_1686472:.
 multi_head_attention_219_1686474:-
layer_normalization_439_1686479:-
layer_normalization_439_1686481:(
conv1d_438_1686484: 
conv1d_438_1686486:(
conv1d_439_1686490: 
conv1d_439_1686492:$
dense_108_1686497:	 
dense_108_1686499:	$
dense_109_1686503:	
dense_109_1686505:
identity¢"conv1d_432/StatefulPartitionedCall¢"conv1d_433/StatefulPartitionedCall¢"conv1d_434/StatefulPartitionedCall¢"conv1d_435/StatefulPartitionedCall¢"conv1d_436/StatefulPartitionedCall¢"conv1d_437/StatefulPartitionedCall¢"conv1d_438/StatefulPartitionedCall¢"conv1d_439/StatefulPartitionedCall¢!dense_108/StatefulPartitionedCall¢!dense_109/StatefulPartitionedCall¢/layer_normalization_432/StatefulPartitionedCall¢/layer_normalization_433/StatefulPartitionedCall¢/layer_normalization_434/StatefulPartitionedCall¢/layer_normalization_435/StatefulPartitionedCall¢/layer_normalization_436/StatefulPartitionedCall¢/layer_normalization_437/StatefulPartitionedCall¢/layer_normalization_438/StatefulPartitionedCall¢/layer_normalization_439/StatefulPartitionedCall¢0multi_head_attention_216/StatefulPartitionedCall¢0multi_head_attention_217/StatefulPartitionedCall¢0multi_head_attention_218/StatefulPartitionedCall¢0multi_head_attention_219/StatefulPartitionedCall¸
/layer_normalization_432/StatefulPartitionedCallStatefulPartitionedCallinput_55layer_normalization_432_1686332layer_normalization_432_1686334*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_432_layer_call_and_return_conditional_losses_1684160ÿ
0multi_head_attention_216/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_432/StatefulPartitionedCall:output:08layer_normalization_432/StatefulPartitionedCall:output:0 multi_head_attention_216_1686337 multi_head_attention_216_1686339 multi_head_attention_216_1686341 multi_head_attention_216_1686343 multi_head_attention_216_1686345 multi_head_attention_216_1686347 multi_head_attention_216_1686349 multi_head_attention_216_1686351*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_216_layer_call_and_return_conditional_losses_1684201ù
dropout_526/PartitionedCallPartitionedCall9multi_head_attention_216/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_526_layer_call_and_return_conditional_losses_1684224
tf.__operators__.add_432/AddV2AddV2$dropout_526/PartitionedCall:output:0input_55*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_433/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_432/AddV2:z:0layer_normalization_433_1686356layer_normalization_433_1686358*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_433_layer_call_and_return_conditional_losses_1684249´
"conv1d_432/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_433/StatefulPartitionedCall:output:0conv1d_432_1686361conv1d_432_1686363*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_432_layer_call_and_return_conditional_losses_1684271ë
dropout_527/PartitionedCallPartitionedCall+conv1d_432/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_527_layer_call_and_return_conditional_losses_1684282 
"conv1d_433/StatefulPartitionedCallStatefulPartitionedCall$dropout_527/PartitionedCall:output:0conv1d_433_1686367conv1d_433_1686369*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_433_layer_call_and_return_conditional_losses_1684299®
tf.__operators__.add_433/AddV2AddV2+conv1d_433/StatefulPartitionedCall:output:0"tf.__operators__.add_432/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_434/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_433/AddV2:z:0layer_normalization_434_1686373layer_normalization_434_1686375*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_434_layer_call_and_return_conditional_losses_1684328ÿ
0multi_head_attention_217/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_434/StatefulPartitionedCall:output:08layer_normalization_434/StatefulPartitionedCall:output:0 multi_head_attention_217_1686378 multi_head_attention_217_1686380 multi_head_attention_217_1686382 multi_head_attention_217_1686384 multi_head_attention_217_1686386 multi_head_attention_217_1686388 multi_head_attention_217_1686390 multi_head_attention_217_1686392*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_217_layer_call_and_return_conditional_losses_1684369ù
dropout_528/PartitionedCallPartitionedCall9multi_head_attention_217/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_528_layer_call_and_return_conditional_losses_1684392§
tf.__operators__.add_434/AddV2AddV2$dropout_528/PartitionedCall:output:0"tf.__operators__.add_433/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_435/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_434/AddV2:z:0layer_normalization_435_1686397layer_normalization_435_1686399*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_435_layer_call_and_return_conditional_losses_1684417´
"conv1d_434/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_435/StatefulPartitionedCall:output:0conv1d_434_1686402conv1d_434_1686404*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_434_layer_call_and_return_conditional_losses_1684439ë
dropout_529/PartitionedCallPartitionedCall+conv1d_434/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_529_layer_call_and_return_conditional_losses_1684450 
"conv1d_435/StatefulPartitionedCallStatefulPartitionedCall$dropout_529/PartitionedCall:output:0conv1d_435_1686408conv1d_435_1686410*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_435_layer_call_and_return_conditional_losses_1684467®
tf.__operators__.add_435/AddV2AddV2+conv1d_435/StatefulPartitionedCall:output:0"tf.__operators__.add_434/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_436/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_435/AddV2:z:0layer_normalization_436_1686414layer_normalization_436_1686416*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_436_layer_call_and_return_conditional_losses_1684496ÿ
0multi_head_attention_218/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_436/StatefulPartitionedCall:output:08layer_normalization_436/StatefulPartitionedCall:output:0 multi_head_attention_218_1686419 multi_head_attention_218_1686421 multi_head_attention_218_1686423 multi_head_attention_218_1686425 multi_head_attention_218_1686427 multi_head_attention_218_1686429 multi_head_attention_218_1686431 multi_head_attention_218_1686433*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_218_layer_call_and_return_conditional_losses_1684537ù
dropout_530/PartitionedCallPartitionedCall9multi_head_attention_218/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_530_layer_call_and_return_conditional_losses_1684560§
tf.__operators__.add_436/AddV2AddV2$dropout_530/PartitionedCall:output:0"tf.__operators__.add_435/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_437/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_436/AddV2:z:0layer_normalization_437_1686438layer_normalization_437_1686440*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_437_layer_call_and_return_conditional_losses_1684585´
"conv1d_436/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_437/StatefulPartitionedCall:output:0conv1d_436_1686443conv1d_436_1686445*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_436_layer_call_and_return_conditional_losses_1684607ë
dropout_531/PartitionedCallPartitionedCall+conv1d_436/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_531_layer_call_and_return_conditional_losses_1684618 
"conv1d_437/StatefulPartitionedCallStatefulPartitionedCall$dropout_531/PartitionedCall:output:0conv1d_437_1686449conv1d_437_1686451*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_437_layer_call_and_return_conditional_losses_1684635®
tf.__operators__.add_437/AddV2AddV2+conv1d_437/StatefulPartitionedCall:output:0"tf.__operators__.add_436/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_438/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_437/AddV2:z:0layer_normalization_438_1686455layer_normalization_438_1686457*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_438_layer_call_and_return_conditional_losses_1684664ÿ
0multi_head_attention_219/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_438/StatefulPartitionedCall:output:08layer_normalization_438/StatefulPartitionedCall:output:0 multi_head_attention_219_1686460 multi_head_attention_219_1686462 multi_head_attention_219_1686464 multi_head_attention_219_1686466 multi_head_attention_219_1686468 multi_head_attention_219_1686470 multi_head_attention_219_1686472 multi_head_attention_219_1686474*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_219_layer_call_and_return_conditional_losses_1684705ù
dropout_532/PartitionedCallPartitionedCall9multi_head_attention_219/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_532_layer_call_and_return_conditional_losses_1684728§
tf.__operators__.add_438/AddV2AddV2$dropout_532/PartitionedCall:output:0"tf.__operators__.add_437/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_439/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_438/AddV2:z:0layer_normalization_439_1686479layer_normalization_439_1686481*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_439_layer_call_and_return_conditional_losses_1684753´
"conv1d_438/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_439/StatefulPartitionedCall:output:0conv1d_438_1686484conv1d_438_1686486*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_438_layer_call_and_return_conditional_losses_1684775ë
dropout_533/PartitionedCallPartitionedCall+conv1d_438/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_533_layer_call_and_return_conditional_losses_1684786 
"conv1d_439/StatefulPartitionedCallStatefulPartitionedCall$dropout_533/PartitionedCall:output:0conv1d_439_1686490conv1d_439_1686492*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_439_layer_call_and_return_conditional_losses_1684803®
tf.__operators__.add_439/AddV2AddV2+conv1d_439/StatefulPartitionedCall:output:0"tf.__operators__.add_438/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
+global_average_pooling1d_54/PartitionedCallPartitionedCall"tf.__operators__.add_439/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *a
f\RZ
X__inference_global_average_pooling1d_54_layer_call_and_return_conditional_losses_1684128©
!dense_108/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling1d_54/PartitionedCall:output:0dense_108_1686497dense_108_1686499*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_108_layer_call_and_return_conditional_losses_1684822ç
dropout_534/PartitionedCallPartitionedCall*dense_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_534_layer_call_and_return_conditional_losses_1684833
!dense_109/StatefulPartitionedCallStatefulPartitionedCall$dropout_534/PartitionedCall:output:0dense_109_1686503dense_109_1686505*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_109_layer_call_and_return_conditional_losses_1684845y
IdentityIdentity*dense_109/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^conv1d_432/StatefulPartitionedCall#^conv1d_433/StatefulPartitionedCall#^conv1d_434/StatefulPartitionedCall#^conv1d_435/StatefulPartitionedCall#^conv1d_436/StatefulPartitionedCall#^conv1d_437/StatefulPartitionedCall#^conv1d_438/StatefulPartitionedCall#^conv1d_439/StatefulPartitionedCall"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall0^layer_normalization_432/StatefulPartitionedCall0^layer_normalization_433/StatefulPartitionedCall0^layer_normalization_434/StatefulPartitionedCall0^layer_normalization_435/StatefulPartitionedCall0^layer_normalization_436/StatefulPartitionedCall0^layer_normalization_437/StatefulPartitionedCall0^layer_normalization_438/StatefulPartitionedCall0^layer_normalization_439/StatefulPartitionedCall1^multi_head_attention_216/StatefulPartitionedCall1^multi_head_attention_217/StatefulPartitionedCall1^multi_head_attention_218/StatefulPartitionedCall1^multi_head_attention_219/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes¢
:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv1d_432/StatefulPartitionedCall"conv1d_432/StatefulPartitionedCall2H
"conv1d_433/StatefulPartitionedCall"conv1d_433/StatefulPartitionedCall2H
"conv1d_434/StatefulPartitionedCall"conv1d_434/StatefulPartitionedCall2H
"conv1d_435/StatefulPartitionedCall"conv1d_435/StatefulPartitionedCall2H
"conv1d_436/StatefulPartitionedCall"conv1d_436/StatefulPartitionedCall2H
"conv1d_437/StatefulPartitionedCall"conv1d_437/StatefulPartitionedCall2H
"conv1d_438/StatefulPartitionedCall"conv1d_438/StatefulPartitionedCall2H
"conv1d_439/StatefulPartitionedCall"conv1d_439/StatefulPartitionedCall2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2b
/layer_normalization_432/StatefulPartitionedCall/layer_normalization_432/StatefulPartitionedCall2b
/layer_normalization_433/StatefulPartitionedCall/layer_normalization_433/StatefulPartitionedCall2b
/layer_normalization_434/StatefulPartitionedCall/layer_normalization_434/StatefulPartitionedCall2b
/layer_normalization_435/StatefulPartitionedCall/layer_normalization_435/StatefulPartitionedCall2b
/layer_normalization_436/StatefulPartitionedCall/layer_normalization_436/StatefulPartitionedCall2b
/layer_normalization_437/StatefulPartitionedCall/layer_normalization_437/StatefulPartitionedCall2b
/layer_normalization_438/StatefulPartitionedCall/layer_normalization_438/StatefulPartitionedCall2b
/layer_normalization_439/StatefulPartitionedCall/layer_normalization_439/StatefulPartitionedCall2d
0multi_head_attention_216/StatefulPartitionedCall0multi_head_attention_216/StatefulPartitionedCall2d
0multi_head_attention_217/StatefulPartitionedCall0multi_head_attention_217/StatefulPartitionedCall2d
0multi_head_attention_218/StatefulPartitionedCall0multi_head_attention_218/StatefulPartitionedCall2d
0multi_head_attention_219/StatefulPartitionedCall0multi_head_attention_219/StatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_55
ó

T__inference_layer_normalization_432_layer_call_and_return_conditional_losses_1688020

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ
¢
9__inference_layer_normalization_435_layer_call_fn_1688463

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallð
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_435_layer_call_and_return_conditional_losses_1684417s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

t
X__inference_global_average_pooling1d_54_layer_call_and_return_conditional_losses_1684128

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


g
H__inference_dropout_530_layer_call_and_return_conditional_losses_1688740

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ
¢
9__inference_layer_normalization_434_layer_call_fn_1688284

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallð
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_434_layer_call_and_return_conditional_losses_1684328s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë

G__inference_conv1d_438_layer_call_and_return_conditional_losses_1689082

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë

G__inference_conv1d_432_layer_call_and_return_conditional_losses_1684271

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
-__inference_dropout_530_layer_call_fn_1688723

inputs
identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_530_layer_call_and_return_conditional_losses_1685280s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§
Õ
*__inference_model_54_layer_call_fn_1687114

inputs
unknown:
	unknown_0: 
	unknown_1:
	unknown_2:	 
	unknown_3:
	unknown_4:	 
	unknown_5:
	unknown_6:	 
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10: 

unknown_11:

unknown_12: 

unknown_13:

unknown_14:

unknown_15:

unknown_16:!

unknown_17:

unknown_18:	!

unknown_19:

unknown_20:	!

unknown_21:

unknown_22:	!

unknown_23:

unknown_24:

unknown_25:

unknown_26: 

unknown_27:

unknown_28: 

unknown_29:

unknown_30:

unknown_31:

unknown_32:!

unknown_33:

unknown_34:	!

unknown_35:

unknown_36:	!

unknown_37:

unknown_38:	!

unknown_39:

unknown_40:

unknown_41:

unknown_42: 

unknown_43:

unknown_44: 

unknown_45:

unknown_46:

unknown_47:

unknown_48:!

unknown_49:

unknown_50:	!

unknown_51:

unknown_52:	!

unknown_53:

unknown_54:	!

unknown_55:

unknown_56:

unknown_57:

unknown_58: 

unknown_59:

unknown_60: 

unknown_61:

unknown_62:

unknown_63:	

unknown_64:	

unknown_65:	

unknown_66:
identity¢StatefulPartitionedCallð	
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*f
_read_only_resource_inputsH
FD	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCD*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_model_54_layer_call_and_return_conditional_losses_1686049o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes¢
:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ö
:__inference_multi_head_attention_219_layer_call_fn_1688900	
query	
value
unknown:
	unknown_0:	 
	unknown_1:
	unknown_2:	 
	unknown_3:
	unknown_4:	 
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_219_layer_call_and_return_conditional_losses_1684705s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
Ë

G__inference_conv1d_438_layer_call_and_return_conditional_losses_1684775

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

T__inference_layer_normalization_433_layer_call_and_return_conditional_losses_1684249

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

T__inference_layer_normalization_438_layer_call_and_return_conditional_losses_1684664

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
f
H__inference_dropout_527_layer_call_and_return_conditional_losses_1688239

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

T__inference_layer_normalization_435_layer_call_and_return_conditional_losses_1688485

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

G__inference_conv1d_433_layer_call_and_return_conditional_losses_1688275

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì

+__inference_dense_109_layer_call_fn_1689200

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_109_layer_call_and_return_conditional_losses_1684845o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ
É"
 __inference__traced_save_1689443
file_prefix<
8savev2_layer_normalization_432_gamma_read_readvariableop;
7savev2_layer_normalization_432_beta_read_readvariableop<
8savev2_layer_normalization_433_gamma_read_readvariableop;
7savev2_layer_normalization_433_beta_read_readvariableop0
,savev2_conv1d_432_kernel_read_readvariableop.
*savev2_conv1d_432_bias_read_readvariableop0
,savev2_conv1d_433_kernel_read_readvariableop.
*savev2_conv1d_433_bias_read_readvariableop<
8savev2_layer_normalization_434_gamma_read_readvariableop;
7savev2_layer_normalization_434_beta_read_readvariableop<
8savev2_layer_normalization_435_gamma_read_readvariableop;
7savev2_layer_normalization_435_beta_read_readvariableop0
,savev2_conv1d_434_kernel_read_readvariableop.
*savev2_conv1d_434_bias_read_readvariableop0
,savev2_conv1d_435_kernel_read_readvariableop.
*savev2_conv1d_435_bias_read_readvariableop<
8savev2_layer_normalization_436_gamma_read_readvariableop;
7savev2_layer_normalization_436_beta_read_readvariableop<
8savev2_layer_normalization_437_gamma_read_readvariableop;
7savev2_layer_normalization_437_beta_read_readvariableop0
,savev2_conv1d_436_kernel_read_readvariableop.
*savev2_conv1d_436_bias_read_readvariableop0
,savev2_conv1d_437_kernel_read_readvariableop.
*savev2_conv1d_437_bias_read_readvariableop<
8savev2_layer_normalization_438_gamma_read_readvariableop;
7savev2_layer_normalization_438_beta_read_readvariableop<
8savev2_layer_normalization_439_gamma_read_readvariableop;
7savev2_layer_normalization_439_beta_read_readvariableop0
,savev2_conv1d_438_kernel_read_readvariableop.
*savev2_conv1d_438_bias_read_readvariableop0
,savev2_conv1d_439_kernel_read_readvariableop.
*savev2_conv1d_439_bias_read_readvariableop/
+savev2_dense_108_kernel_read_readvariableop-
)savev2_dense_108_bias_read_readvariableop/
+savev2_dense_109_kernel_read_readvariableop-
)savev2_dense_109_bias_read_readvariableopD
@savev2_multi_head_attention_216_query_kernel_read_readvariableopB
>savev2_multi_head_attention_216_query_bias_read_readvariableopB
>savev2_multi_head_attention_216_key_kernel_read_readvariableop@
<savev2_multi_head_attention_216_key_bias_read_readvariableopD
@savev2_multi_head_attention_216_value_kernel_read_readvariableopB
>savev2_multi_head_attention_216_value_bias_read_readvariableopO
Ksavev2_multi_head_attention_216_attention_output_kernel_read_readvariableopM
Isavev2_multi_head_attention_216_attention_output_bias_read_readvariableopD
@savev2_multi_head_attention_217_query_kernel_read_readvariableopB
>savev2_multi_head_attention_217_query_bias_read_readvariableopB
>savev2_multi_head_attention_217_key_kernel_read_readvariableop@
<savev2_multi_head_attention_217_key_bias_read_readvariableopD
@savev2_multi_head_attention_217_value_kernel_read_readvariableopB
>savev2_multi_head_attention_217_value_bias_read_readvariableopO
Ksavev2_multi_head_attention_217_attention_output_kernel_read_readvariableopM
Isavev2_multi_head_attention_217_attention_output_bias_read_readvariableopD
@savev2_multi_head_attention_218_query_kernel_read_readvariableopB
>savev2_multi_head_attention_218_query_bias_read_readvariableopB
>savev2_multi_head_attention_218_key_kernel_read_readvariableop@
<savev2_multi_head_attention_218_key_bias_read_readvariableopD
@savev2_multi_head_attention_218_value_kernel_read_readvariableopB
>savev2_multi_head_attention_218_value_bias_read_readvariableopO
Ksavev2_multi_head_attention_218_attention_output_kernel_read_readvariableopM
Isavev2_multi_head_attention_218_attention_output_bias_read_readvariableopD
@savev2_multi_head_attention_219_query_kernel_read_readvariableopB
>savev2_multi_head_attention_219_query_bias_read_readvariableopB
>savev2_multi_head_attention_219_key_kernel_read_readvariableop@
<savev2_multi_head_attention_219_key_bias_read_readvariableopD
@savev2_multi_head_attention_219_value_kernel_read_readvariableopB
>savev2_multi_head_attention_219_value_bias_read_readvariableopO
Ksavev2_multi_head_attention_219_attention_output_kernel_read_readvariableopM
Isavev2_multi_head_attention_219_attention_output_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ö
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:G*
dtype0*ÿ
valueõBòGB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-12/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/50/.ATTRIBUTES/VARIABLE_VALUEB'variables/51/.ATTRIBUTES/VARIABLE_VALUEB'variables/52/.ATTRIBUTES/VARIABLE_VALUEB'variables/53/.ATTRIBUTES/VARIABLE_VALUEB'variables/54/.ATTRIBUTES/VARIABLE_VALUEB'variables/55/.ATTRIBUTES/VARIABLE_VALUEB'variables/56/.ATTRIBUTES/VARIABLE_VALUEB'variables/57/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHþ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:G*
dtype0*£
valueBGB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B º!
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:08savev2_layer_normalization_432_gamma_read_readvariableop7savev2_layer_normalization_432_beta_read_readvariableop8savev2_layer_normalization_433_gamma_read_readvariableop7savev2_layer_normalization_433_beta_read_readvariableop,savev2_conv1d_432_kernel_read_readvariableop*savev2_conv1d_432_bias_read_readvariableop,savev2_conv1d_433_kernel_read_readvariableop*savev2_conv1d_433_bias_read_readvariableop8savev2_layer_normalization_434_gamma_read_readvariableop7savev2_layer_normalization_434_beta_read_readvariableop8savev2_layer_normalization_435_gamma_read_readvariableop7savev2_layer_normalization_435_beta_read_readvariableop,savev2_conv1d_434_kernel_read_readvariableop*savev2_conv1d_434_bias_read_readvariableop,savev2_conv1d_435_kernel_read_readvariableop*savev2_conv1d_435_bias_read_readvariableop8savev2_layer_normalization_436_gamma_read_readvariableop7savev2_layer_normalization_436_beta_read_readvariableop8savev2_layer_normalization_437_gamma_read_readvariableop7savev2_layer_normalization_437_beta_read_readvariableop,savev2_conv1d_436_kernel_read_readvariableop*savev2_conv1d_436_bias_read_readvariableop,savev2_conv1d_437_kernel_read_readvariableop*savev2_conv1d_437_bias_read_readvariableop8savev2_layer_normalization_438_gamma_read_readvariableop7savev2_layer_normalization_438_beta_read_readvariableop8savev2_layer_normalization_439_gamma_read_readvariableop7savev2_layer_normalization_439_beta_read_readvariableop,savev2_conv1d_438_kernel_read_readvariableop*savev2_conv1d_438_bias_read_readvariableop,savev2_conv1d_439_kernel_read_readvariableop*savev2_conv1d_439_bias_read_readvariableop+savev2_dense_108_kernel_read_readvariableop)savev2_dense_108_bias_read_readvariableop+savev2_dense_109_kernel_read_readvariableop)savev2_dense_109_bias_read_readvariableop@savev2_multi_head_attention_216_query_kernel_read_readvariableop>savev2_multi_head_attention_216_query_bias_read_readvariableop>savev2_multi_head_attention_216_key_kernel_read_readvariableop<savev2_multi_head_attention_216_key_bias_read_readvariableop@savev2_multi_head_attention_216_value_kernel_read_readvariableop>savev2_multi_head_attention_216_value_bias_read_readvariableopKsavev2_multi_head_attention_216_attention_output_kernel_read_readvariableopIsavev2_multi_head_attention_216_attention_output_bias_read_readvariableop@savev2_multi_head_attention_217_query_kernel_read_readvariableop>savev2_multi_head_attention_217_query_bias_read_readvariableop>savev2_multi_head_attention_217_key_kernel_read_readvariableop<savev2_multi_head_attention_217_key_bias_read_readvariableop@savev2_multi_head_attention_217_value_kernel_read_readvariableop>savev2_multi_head_attention_217_value_bias_read_readvariableopKsavev2_multi_head_attention_217_attention_output_kernel_read_readvariableopIsavev2_multi_head_attention_217_attention_output_bias_read_readvariableop@savev2_multi_head_attention_218_query_kernel_read_readvariableop>savev2_multi_head_attention_218_query_bias_read_readvariableop>savev2_multi_head_attention_218_key_kernel_read_readvariableop<savev2_multi_head_attention_218_key_bias_read_readvariableop@savev2_multi_head_attention_218_value_kernel_read_readvariableop>savev2_multi_head_attention_218_value_bias_read_readvariableopKsavev2_multi_head_attention_218_attention_output_kernel_read_readvariableopIsavev2_multi_head_attention_218_attention_output_bias_read_readvariableop@savev2_multi_head_attention_219_query_kernel_read_readvariableop>savev2_multi_head_attention_219_query_bias_read_readvariableop>savev2_multi_head_attention_219_key_kernel_read_readvariableop<savev2_multi_head_attention_219_key_bias_read_readvariableop@savev2_multi_head_attention_219_value_kernel_read_readvariableop>savev2_multi_head_attention_219_value_bias_read_readvariableopKsavev2_multi_head_attention_219_attention_output_kernel_read_readvariableopIsavev2_multi_head_attention_219_attention_output_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *U
dtypesK
I2G
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*Ì
_input_shapesº
·: :::::::::::::::::::::::::::::::::	::	:::	::	::	::::	::	::	::::	::	::	::::	::	::	::: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
::  

_output_shapes
::%!!

_output_shapes
:	:!"

_output_shapes	
::%#!

_output_shapes
:	: $

_output_shapes
::)%%
#
_output_shapes
::%&!

_output_shapes
:	:)'%
#
_output_shapes
::%(!

_output_shapes
:	:))%
#
_output_shapes
::%*!

_output_shapes
:	:)+%
#
_output_shapes
:: ,

_output_shapes
::)-%
#
_output_shapes
::%.!

_output_shapes
:	:)/%
#
_output_shapes
::%0!

_output_shapes
:	:)1%
#
_output_shapes
::%2!

_output_shapes
:	:)3%
#
_output_shapes
:: 4

_output_shapes
::)5%
#
_output_shapes
::%6!

_output_shapes
:	:)7%
#
_output_shapes
::%8!

_output_shapes
:	:)9%
#
_output_shapes
::%:!

_output_shapes
:	:);%
#
_output_shapes
:: <

_output_shapes
::)=%
#
_output_shapes
::%>!

_output_shapes
:	:)?%
#
_output_shapes
::%@!

_output_shapes
:	:)A%
#
_output_shapes
::%B!

_output_shapes
:	:)C%
#
_output_shapes
:: D

_output_shapes
::E

_output_shapes
: :F

_output_shapes
: :G

_output_shapes
: 
ó

T__inference_layer_normalization_435_layer_call_and_return_conditional_losses_1684417

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


g
H__inference_dropout_528_layer_call_and_return_conditional_losses_1685453

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ö
:__inference_multi_head_attention_219_layer_call_fn_1688922	
query	
value
unknown:
	unknown_0:	 
	unknown_1:
	unknown_2:	 
	unknown_3:
	unknown_4:	 
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_219_layer_call_and_return_conditional_losses_1685178s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue


g
H__inference_dropout_528_layer_call_and_return_conditional_losses_1688454

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
f
H__inference_dropout_529_layer_call_and_return_conditional_losses_1688525

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í	
ø
F__inference_dense_109_layer_call_and_return_conditional_losses_1689210

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß

,__inference_conv1d_435_layer_call_fn_1688546

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_435_layer_call_and_return_conditional_losses_1684467s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
I
-__inference_dropout_533_layer_call_fn_1689087

inputs
identityº
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_533_layer_call_and_return_conditional_losses_1684786d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ö
:__inference_multi_head_attention_218_layer_call_fn_1688614	
query	
value
unknown:
	unknown_0:	 
	unknown_1:
	unknown_2:	 
	unknown_3:
	unknown_4:	 
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_218_layer_call_and_return_conditional_losses_1684537s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
ó

T__inference_layer_normalization_434_layer_call_and_return_conditional_losses_1684328

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç2

U__inference_multi_head_attention_217_layer_call_and_return_conditional_losses_1685524	
query	
valueB
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	@
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	B
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	M
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbeo
softmax_41/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_536/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout_536/dropout/MulMulsoftmax_41/Softmax:softmax:0"dropout_536/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dropout_536/dropout/ShapeShapesoftmax_41/Softmax:softmax:0*
T0*
_output_shapes
:¬
0dropout_536/dropout/random_uniform/RandomUniformRandomUniform"dropout_536/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_536/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ò
 dropout_536/dropout/GreaterEqualGreaterEqual9dropout_536/dropout/random_uniform/RandomUniform:output:0+dropout_536/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_536/dropout/CastCast$dropout_536/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_536/dropout/Mul_1Muldropout_536/dropout/Mul:z:0dropout_536/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
einsum_1/EinsumEinsumdropout_536/dropout/Mul_1:z:0value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcd©
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
«
¾O
"__inference__wrapped_model_1684118
input_55T
Fmodel_54_layer_normalization_432_batchnorm_mul_readvariableop_resource:P
Bmodel_54_layer_normalization_432_batchnorm_readvariableop_resource:d
Mmodel_54_multi_head_attention_216_query_einsum_einsum_readvariableop_resource:V
Cmodel_54_multi_head_attention_216_query_add_readvariableop_resource:	b
Kmodel_54_multi_head_attention_216_key_einsum_einsum_readvariableop_resource:T
Amodel_54_multi_head_attention_216_key_add_readvariableop_resource:	d
Mmodel_54_multi_head_attention_216_value_einsum_einsum_readvariableop_resource:V
Cmodel_54_multi_head_attention_216_value_add_readvariableop_resource:	o
Xmodel_54_multi_head_attention_216_attention_output_einsum_einsum_readvariableop_resource:\
Nmodel_54_multi_head_attention_216_attention_output_add_readvariableop_resource:T
Fmodel_54_layer_normalization_433_batchnorm_mul_readvariableop_resource:P
Bmodel_54_layer_normalization_433_batchnorm_readvariableop_resource:U
?model_54_conv1d_432_conv1d_expanddims_1_readvariableop_resource:A
3model_54_conv1d_432_biasadd_readvariableop_resource:U
?model_54_conv1d_433_conv1d_expanddims_1_readvariableop_resource:A
3model_54_conv1d_433_biasadd_readvariableop_resource:T
Fmodel_54_layer_normalization_434_batchnorm_mul_readvariableop_resource:P
Bmodel_54_layer_normalization_434_batchnorm_readvariableop_resource:d
Mmodel_54_multi_head_attention_217_query_einsum_einsum_readvariableop_resource:V
Cmodel_54_multi_head_attention_217_query_add_readvariableop_resource:	b
Kmodel_54_multi_head_attention_217_key_einsum_einsum_readvariableop_resource:T
Amodel_54_multi_head_attention_217_key_add_readvariableop_resource:	d
Mmodel_54_multi_head_attention_217_value_einsum_einsum_readvariableop_resource:V
Cmodel_54_multi_head_attention_217_value_add_readvariableop_resource:	o
Xmodel_54_multi_head_attention_217_attention_output_einsum_einsum_readvariableop_resource:\
Nmodel_54_multi_head_attention_217_attention_output_add_readvariableop_resource:T
Fmodel_54_layer_normalization_435_batchnorm_mul_readvariableop_resource:P
Bmodel_54_layer_normalization_435_batchnorm_readvariableop_resource:U
?model_54_conv1d_434_conv1d_expanddims_1_readvariableop_resource:A
3model_54_conv1d_434_biasadd_readvariableop_resource:U
?model_54_conv1d_435_conv1d_expanddims_1_readvariableop_resource:A
3model_54_conv1d_435_biasadd_readvariableop_resource:T
Fmodel_54_layer_normalization_436_batchnorm_mul_readvariableop_resource:P
Bmodel_54_layer_normalization_436_batchnorm_readvariableop_resource:d
Mmodel_54_multi_head_attention_218_query_einsum_einsum_readvariableop_resource:V
Cmodel_54_multi_head_attention_218_query_add_readvariableop_resource:	b
Kmodel_54_multi_head_attention_218_key_einsum_einsum_readvariableop_resource:T
Amodel_54_multi_head_attention_218_key_add_readvariableop_resource:	d
Mmodel_54_multi_head_attention_218_value_einsum_einsum_readvariableop_resource:V
Cmodel_54_multi_head_attention_218_value_add_readvariableop_resource:	o
Xmodel_54_multi_head_attention_218_attention_output_einsum_einsum_readvariableop_resource:\
Nmodel_54_multi_head_attention_218_attention_output_add_readvariableop_resource:T
Fmodel_54_layer_normalization_437_batchnorm_mul_readvariableop_resource:P
Bmodel_54_layer_normalization_437_batchnorm_readvariableop_resource:U
?model_54_conv1d_436_conv1d_expanddims_1_readvariableop_resource:A
3model_54_conv1d_436_biasadd_readvariableop_resource:U
?model_54_conv1d_437_conv1d_expanddims_1_readvariableop_resource:A
3model_54_conv1d_437_biasadd_readvariableop_resource:T
Fmodel_54_layer_normalization_438_batchnorm_mul_readvariableop_resource:P
Bmodel_54_layer_normalization_438_batchnorm_readvariableop_resource:d
Mmodel_54_multi_head_attention_219_query_einsum_einsum_readvariableop_resource:V
Cmodel_54_multi_head_attention_219_query_add_readvariableop_resource:	b
Kmodel_54_multi_head_attention_219_key_einsum_einsum_readvariableop_resource:T
Amodel_54_multi_head_attention_219_key_add_readvariableop_resource:	d
Mmodel_54_multi_head_attention_219_value_einsum_einsum_readvariableop_resource:V
Cmodel_54_multi_head_attention_219_value_add_readvariableop_resource:	o
Xmodel_54_multi_head_attention_219_attention_output_einsum_einsum_readvariableop_resource:\
Nmodel_54_multi_head_attention_219_attention_output_add_readvariableop_resource:T
Fmodel_54_layer_normalization_439_batchnorm_mul_readvariableop_resource:P
Bmodel_54_layer_normalization_439_batchnorm_readvariableop_resource:U
?model_54_conv1d_438_conv1d_expanddims_1_readvariableop_resource:A
3model_54_conv1d_438_biasadd_readvariableop_resource:U
?model_54_conv1d_439_conv1d_expanddims_1_readvariableop_resource:A
3model_54_conv1d_439_biasadd_readvariableop_resource:D
1model_54_dense_108_matmul_readvariableop_resource:	A
2model_54_dense_108_biasadd_readvariableop_resource:	D
1model_54_dense_109_matmul_readvariableop_resource:	@
2model_54_dense_109_biasadd_readvariableop_resource:
identity¢*model_54/conv1d_432/BiasAdd/ReadVariableOp¢6model_54/conv1d_432/Conv1D/ExpandDims_1/ReadVariableOp¢*model_54/conv1d_433/BiasAdd/ReadVariableOp¢6model_54/conv1d_433/Conv1D/ExpandDims_1/ReadVariableOp¢*model_54/conv1d_434/BiasAdd/ReadVariableOp¢6model_54/conv1d_434/Conv1D/ExpandDims_1/ReadVariableOp¢*model_54/conv1d_435/BiasAdd/ReadVariableOp¢6model_54/conv1d_435/Conv1D/ExpandDims_1/ReadVariableOp¢*model_54/conv1d_436/BiasAdd/ReadVariableOp¢6model_54/conv1d_436/Conv1D/ExpandDims_1/ReadVariableOp¢*model_54/conv1d_437/BiasAdd/ReadVariableOp¢6model_54/conv1d_437/Conv1D/ExpandDims_1/ReadVariableOp¢*model_54/conv1d_438/BiasAdd/ReadVariableOp¢6model_54/conv1d_438/Conv1D/ExpandDims_1/ReadVariableOp¢*model_54/conv1d_439/BiasAdd/ReadVariableOp¢6model_54/conv1d_439/Conv1D/ExpandDims_1/ReadVariableOp¢)model_54/dense_108/BiasAdd/ReadVariableOp¢(model_54/dense_108/MatMul/ReadVariableOp¢)model_54/dense_109/BiasAdd/ReadVariableOp¢(model_54/dense_109/MatMul/ReadVariableOp¢9model_54/layer_normalization_432/batchnorm/ReadVariableOp¢=model_54/layer_normalization_432/batchnorm/mul/ReadVariableOp¢9model_54/layer_normalization_433/batchnorm/ReadVariableOp¢=model_54/layer_normalization_433/batchnorm/mul/ReadVariableOp¢9model_54/layer_normalization_434/batchnorm/ReadVariableOp¢=model_54/layer_normalization_434/batchnorm/mul/ReadVariableOp¢9model_54/layer_normalization_435/batchnorm/ReadVariableOp¢=model_54/layer_normalization_435/batchnorm/mul/ReadVariableOp¢9model_54/layer_normalization_436/batchnorm/ReadVariableOp¢=model_54/layer_normalization_436/batchnorm/mul/ReadVariableOp¢9model_54/layer_normalization_437/batchnorm/ReadVariableOp¢=model_54/layer_normalization_437/batchnorm/mul/ReadVariableOp¢9model_54/layer_normalization_438/batchnorm/ReadVariableOp¢=model_54/layer_normalization_438/batchnorm/mul/ReadVariableOp¢9model_54/layer_normalization_439/batchnorm/ReadVariableOp¢=model_54/layer_normalization_439/batchnorm/mul/ReadVariableOp¢Emodel_54/multi_head_attention_216/attention_output/add/ReadVariableOp¢Omodel_54/multi_head_attention_216/attention_output/einsum/Einsum/ReadVariableOp¢8model_54/multi_head_attention_216/key/add/ReadVariableOp¢Bmodel_54/multi_head_attention_216/key/einsum/Einsum/ReadVariableOp¢:model_54/multi_head_attention_216/query/add/ReadVariableOp¢Dmodel_54/multi_head_attention_216/query/einsum/Einsum/ReadVariableOp¢:model_54/multi_head_attention_216/value/add/ReadVariableOp¢Dmodel_54/multi_head_attention_216/value/einsum/Einsum/ReadVariableOp¢Emodel_54/multi_head_attention_217/attention_output/add/ReadVariableOp¢Omodel_54/multi_head_attention_217/attention_output/einsum/Einsum/ReadVariableOp¢8model_54/multi_head_attention_217/key/add/ReadVariableOp¢Bmodel_54/multi_head_attention_217/key/einsum/Einsum/ReadVariableOp¢:model_54/multi_head_attention_217/query/add/ReadVariableOp¢Dmodel_54/multi_head_attention_217/query/einsum/Einsum/ReadVariableOp¢:model_54/multi_head_attention_217/value/add/ReadVariableOp¢Dmodel_54/multi_head_attention_217/value/einsum/Einsum/ReadVariableOp¢Emodel_54/multi_head_attention_218/attention_output/add/ReadVariableOp¢Omodel_54/multi_head_attention_218/attention_output/einsum/Einsum/ReadVariableOp¢8model_54/multi_head_attention_218/key/add/ReadVariableOp¢Bmodel_54/multi_head_attention_218/key/einsum/Einsum/ReadVariableOp¢:model_54/multi_head_attention_218/query/add/ReadVariableOp¢Dmodel_54/multi_head_attention_218/query/einsum/Einsum/ReadVariableOp¢:model_54/multi_head_attention_218/value/add/ReadVariableOp¢Dmodel_54/multi_head_attention_218/value/einsum/Einsum/ReadVariableOp¢Emodel_54/multi_head_attention_219/attention_output/add/ReadVariableOp¢Omodel_54/multi_head_attention_219/attention_output/einsum/Einsum/ReadVariableOp¢8model_54/multi_head_attention_219/key/add/ReadVariableOp¢Bmodel_54/multi_head_attention_219/key/einsum/Einsum/ReadVariableOp¢:model_54/multi_head_attention_219/query/add/ReadVariableOp¢Dmodel_54/multi_head_attention_219/query/einsum/Einsum/ReadVariableOp¢:model_54/multi_head_attention_219/value/add/ReadVariableOp¢Dmodel_54/multi_head_attention_219/value/einsum/Einsum/ReadVariableOp
?model_54/layer_normalization_432/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ð
-model_54/layer_normalization_432/moments/meanMeaninput_55Hmodel_54/layer_normalization_432/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(³
5model_54/layer_normalization_432/moments/StopGradientStopGradient6model_54/layer_normalization_432/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
:model_54/layer_normalization_432/moments/SquaredDifferenceSquaredDifferenceinput_55>model_54/layer_normalization_432/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Cmodel_54/layer_normalization_432/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
1model_54/layer_normalization_432/moments/varianceMean>model_54/layer_normalization_432/moments/SquaredDifference:z:0Lmodel_54/layer_normalization_432/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(u
0model_54/layer_normalization_432/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ä
.model_54/layer_normalization_432/batchnorm/addAddV2:model_54/layer_normalization_432/moments/variance:output:09model_54/layer_normalization_432/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
0model_54/layer_normalization_432/batchnorm/RsqrtRsqrt2model_54/layer_normalization_432/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
=model_54/layer_normalization_432/batchnorm/mul/ReadVariableOpReadVariableOpFmodel_54_layer_normalization_432_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0è
.model_54/layer_normalization_432/batchnorm/mulMul4model_54/layer_normalization_432/batchnorm/Rsqrt:y:0Emodel_54/layer_normalization_432/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
0model_54/layer_normalization_432/batchnorm/mul_1Mulinput_552model_54/layer_normalization_432/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
0model_54/layer_normalization_432/batchnorm/mul_2Mul6model_54/layer_normalization_432/moments/mean:output:02model_54/layer_normalization_432/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
9model_54/layer_normalization_432/batchnorm/ReadVariableOpReadVariableOpBmodel_54_layer_normalization_432_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0ä
.model_54/layer_normalization_432/batchnorm/subSubAmodel_54/layer_normalization_432/batchnorm/ReadVariableOp:value:04model_54/layer_normalization_432/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
0model_54/layer_normalization_432/batchnorm/add_1AddV24model_54/layer_normalization_432/batchnorm/mul_1:z:02model_54/layer_normalization_432/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
Dmodel_54/multi_head_attention_216/query/einsum/Einsum/ReadVariableOpReadVariableOpMmodel_54_multi_head_attention_216_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0¤
5model_54/multi_head_attention_216/query/einsum/EinsumEinsum4model_54/layer_normalization_432/batchnorm/add_1:z:0Lmodel_54/multi_head_attention_216/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde¿
:model_54/multi_head_attention_216/query/add/ReadVariableOpReadVariableOpCmodel_54_multi_head_attention_216_query_add_readvariableop_resource*
_output_shapes
:	*
dtype0ó
+model_54/multi_head_attention_216/query/addAddV2>model_54/multi_head_attention_216/query/einsum/Einsum:output:0Bmodel_54/multi_head_attention_216/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
Bmodel_54/multi_head_attention_216/key/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_54_multi_head_attention_216_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0 
3model_54/multi_head_attention_216/key/einsum/EinsumEinsum4model_54/layer_normalization_432/batchnorm/add_1:z:0Jmodel_54/multi_head_attention_216/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde»
8model_54/multi_head_attention_216/key/add/ReadVariableOpReadVariableOpAmodel_54_multi_head_attention_216_key_add_readvariableop_resource*
_output_shapes
:	*
dtype0í
)model_54/multi_head_attention_216/key/addAddV2<model_54/multi_head_attention_216/key/einsum/Einsum:output:0@model_54/multi_head_attention_216/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
Dmodel_54/multi_head_attention_216/value/einsum/Einsum/ReadVariableOpReadVariableOpMmodel_54_multi_head_attention_216_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0¤
5model_54/multi_head_attention_216/value/einsum/EinsumEinsum4model_54/layer_normalization_432/batchnorm/add_1:z:0Lmodel_54/multi_head_attention_216/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde¿
:model_54/multi_head_attention_216/value/add/ReadVariableOpReadVariableOpCmodel_54_multi_head_attention_216_value_add_readvariableop_resource*
_output_shapes
:	*
dtype0ó
+model_54/multi_head_attention_216/value/addAddV2>model_54/multi_head_attention_216/value/einsum/Einsum:output:0Bmodel_54/multi_head_attention_216/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
'model_54/multi_head_attention_216/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =Ê
%model_54/multi_head_attention_216/MulMul/model_54/multi_head_attention_216/query/add:z:00model_54/multi_head_attention_216/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
/model_54/multi_head_attention_216/einsum/EinsumEinsum-model_54/multi_head_attention_216/key/add:z:0)model_54/multi_head_attention_216/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe³
4model_54/multi_head_attention_216/softmax_40/SoftmaxSoftmax8model_54/multi_head_attention_216/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
6model_54/multi_head_attention_216/dropout_535/IdentityIdentity>model_54/multi_head_attention_216/softmax_40/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1model_54/multi_head_attention_216/einsum_1/EinsumEinsum?model_54/multi_head_attention_216/dropout_535/Identity:output:0/model_54/multi_head_attention_216/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcdí
Omodel_54/multi_head_attention_216/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpXmodel_54_multi_head_attention_216_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0»
@model_54/multi_head_attention_216/attention_output/einsum/EinsumEinsum:model_54/multi_head_attention_216/einsum_1/Einsum:output:0Wmodel_54/multi_head_attention_216/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abeÐ
Emodel_54/multi_head_attention_216/attention_output/add/ReadVariableOpReadVariableOpNmodel_54_multi_head_attention_216_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0
6model_54/multi_head_attention_216/attention_output/addAddV2Imodel_54/multi_head_attention_216/attention_output/einsum/Einsum:output:0Mmodel_54/multi_head_attention_216/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_54/dropout_526/IdentityIdentity:model_54/multi_head_attention_216/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'model_54/tf.__operators__.add_432/AddV2AddV2&model_54/dropout_526/Identity:output:0input_55*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
?model_54/layer_normalization_433/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
-model_54/layer_normalization_433/moments/meanMean+model_54/tf.__operators__.add_432/AddV2:z:0Hmodel_54/layer_normalization_433/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(³
5model_54/layer_normalization_433/moments/StopGradientStopGradient6model_54/layer_normalization_433/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
:model_54/layer_normalization_433/moments/SquaredDifferenceSquaredDifference+model_54/tf.__operators__.add_432/AddV2:z:0>model_54/layer_normalization_433/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Cmodel_54/layer_normalization_433/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
1model_54/layer_normalization_433/moments/varianceMean>model_54/layer_normalization_433/moments/SquaredDifference:z:0Lmodel_54/layer_normalization_433/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(u
0model_54/layer_normalization_433/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ä
.model_54/layer_normalization_433/batchnorm/addAddV2:model_54/layer_normalization_433/moments/variance:output:09model_54/layer_normalization_433/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
0model_54/layer_normalization_433/batchnorm/RsqrtRsqrt2model_54/layer_normalization_433/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
=model_54/layer_normalization_433/batchnorm/mul/ReadVariableOpReadVariableOpFmodel_54_layer_normalization_433_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0è
.model_54/layer_normalization_433/batchnorm/mulMul4model_54/layer_normalization_433/batchnorm/Rsqrt:y:0Emodel_54/layer_normalization_433/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
0model_54/layer_normalization_433/batchnorm/mul_1Mul+model_54/tf.__operators__.add_432/AddV2:z:02model_54/layer_normalization_433/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
0model_54/layer_normalization_433/batchnorm/mul_2Mul6model_54/layer_normalization_433/moments/mean:output:02model_54/layer_normalization_433/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
9model_54/layer_normalization_433/batchnorm/ReadVariableOpReadVariableOpBmodel_54_layer_normalization_433_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0ä
.model_54/layer_normalization_433/batchnorm/subSubAmodel_54/layer_normalization_433/batchnorm/ReadVariableOp:value:04model_54/layer_normalization_433/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
0model_54/layer_normalization_433/batchnorm/add_1AddV24model_54/layer_normalization_433/batchnorm/mul_1:z:02model_54/layer_normalization_433/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
)model_54/conv1d_432/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ×
%model_54/conv1d_432/Conv1D/ExpandDims
ExpandDims4model_54/layer_normalization_433/batchnorm/add_1:z:02model_54/conv1d_432/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
6model_54/conv1d_432/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?model_54_conv1d_432_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0m
+model_54/conv1d_432/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ü
'model_54/conv1d_432/Conv1D/ExpandDims_1
ExpandDims>model_54/conv1d_432/Conv1D/ExpandDims_1/ReadVariableOp:value:04model_54/conv1d_432/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:é
model_54/conv1d_432/Conv1DConv2D.model_54/conv1d_432/Conv1D/ExpandDims:output:00model_54/conv1d_432/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
¨
"model_54/conv1d_432/Conv1D/SqueezeSqueeze#model_54/conv1d_432/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
*model_54/conv1d_432/BiasAdd/ReadVariableOpReadVariableOp3model_54_conv1d_432_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0½
model_54/conv1d_432/BiasAddBiasAdd+model_54/conv1d_432/Conv1D/Squeeze:output:02model_54/conv1d_432/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
model_54/conv1d_432/ReluRelu$model_54/conv1d_432/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_54/dropout_527/IdentityIdentity&model_54/conv1d_432/Relu:activations:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
)model_54/conv1d_433/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿÉ
%model_54/conv1d_433/Conv1D/ExpandDims
ExpandDims&model_54/dropout_527/Identity:output:02model_54/conv1d_433/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
6model_54/conv1d_433/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?model_54_conv1d_433_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0m
+model_54/conv1d_433/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ü
'model_54/conv1d_433/Conv1D/ExpandDims_1
ExpandDims>model_54/conv1d_433/Conv1D/ExpandDims_1/ReadVariableOp:value:04model_54/conv1d_433/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:é
model_54/conv1d_433/Conv1DConv2D.model_54/conv1d_433/Conv1D/ExpandDims:output:00model_54/conv1d_433/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
¨
"model_54/conv1d_433/Conv1D/SqueezeSqueeze#model_54/conv1d_433/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
*model_54/conv1d_433/BiasAdd/ReadVariableOpReadVariableOp3model_54_conv1d_433_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0½
model_54/conv1d_433/BiasAddBiasAdd+model_54/conv1d_433/Conv1D/Squeeze:output:02model_54/conv1d_433/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
'model_54/tf.__operators__.add_433/AddV2AddV2$model_54/conv1d_433/BiasAdd:output:0+model_54/tf.__operators__.add_432/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
?model_54/layer_normalization_434/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
-model_54/layer_normalization_434/moments/meanMean+model_54/tf.__operators__.add_433/AddV2:z:0Hmodel_54/layer_normalization_434/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(³
5model_54/layer_normalization_434/moments/StopGradientStopGradient6model_54/layer_normalization_434/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
:model_54/layer_normalization_434/moments/SquaredDifferenceSquaredDifference+model_54/tf.__operators__.add_433/AddV2:z:0>model_54/layer_normalization_434/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Cmodel_54/layer_normalization_434/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
1model_54/layer_normalization_434/moments/varianceMean>model_54/layer_normalization_434/moments/SquaredDifference:z:0Lmodel_54/layer_normalization_434/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(u
0model_54/layer_normalization_434/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ä
.model_54/layer_normalization_434/batchnorm/addAddV2:model_54/layer_normalization_434/moments/variance:output:09model_54/layer_normalization_434/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
0model_54/layer_normalization_434/batchnorm/RsqrtRsqrt2model_54/layer_normalization_434/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
=model_54/layer_normalization_434/batchnorm/mul/ReadVariableOpReadVariableOpFmodel_54_layer_normalization_434_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0è
.model_54/layer_normalization_434/batchnorm/mulMul4model_54/layer_normalization_434/batchnorm/Rsqrt:y:0Emodel_54/layer_normalization_434/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
0model_54/layer_normalization_434/batchnorm/mul_1Mul+model_54/tf.__operators__.add_433/AddV2:z:02model_54/layer_normalization_434/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
0model_54/layer_normalization_434/batchnorm/mul_2Mul6model_54/layer_normalization_434/moments/mean:output:02model_54/layer_normalization_434/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
9model_54/layer_normalization_434/batchnorm/ReadVariableOpReadVariableOpBmodel_54_layer_normalization_434_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0ä
.model_54/layer_normalization_434/batchnorm/subSubAmodel_54/layer_normalization_434/batchnorm/ReadVariableOp:value:04model_54/layer_normalization_434/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
0model_54/layer_normalization_434/batchnorm/add_1AddV24model_54/layer_normalization_434/batchnorm/mul_1:z:02model_54/layer_normalization_434/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
Dmodel_54/multi_head_attention_217/query/einsum/Einsum/ReadVariableOpReadVariableOpMmodel_54_multi_head_attention_217_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0¤
5model_54/multi_head_attention_217/query/einsum/EinsumEinsum4model_54/layer_normalization_434/batchnorm/add_1:z:0Lmodel_54/multi_head_attention_217/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde¿
:model_54/multi_head_attention_217/query/add/ReadVariableOpReadVariableOpCmodel_54_multi_head_attention_217_query_add_readvariableop_resource*
_output_shapes
:	*
dtype0ó
+model_54/multi_head_attention_217/query/addAddV2>model_54/multi_head_attention_217/query/einsum/Einsum:output:0Bmodel_54/multi_head_attention_217/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
Bmodel_54/multi_head_attention_217/key/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_54_multi_head_attention_217_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0 
3model_54/multi_head_attention_217/key/einsum/EinsumEinsum4model_54/layer_normalization_434/batchnorm/add_1:z:0Jmodel_54/multi_head_attention_217/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde»
8model_54/multi_head_attention_217/key/add/ReadVariableOpReadVariableOpAmodel_54_multi_head_attention_217_key_add_readvariableop_resource*
_output_shapes
:	*
dtype0í
)model_54/multi_head_attention_217/key/addAddV2<model_54/multi_head_attention_217/key/einsum/Einsum:output:0@model_54/multi_head_attention_217/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
Dmodel_54/multi_head_attention_217/value/einsum/Einsum/ReadVariableOpReadVariableOpMmodel_54_multi_head_attention_217_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0¤
5model_54/multi_head_attention_217/value/einsum/EinsumEinsum4model_54/layer_normalization_434/batchnorm/add_1:z:0Lmodel_54/multi_head_attention_217/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde¿
:model_54/multi_head_attention_217/value/add/ReadVariableOpReadVariableOpCmodel_54_multi_head_attention_217_value_add_readvariableop_resource*
_output_shapes
:	*
dtype0ó
+model_54/multi_head_attention_217/value/addAddV2>model_54/multi_head_attention_217/value/einsum/Einsum:output:0Bmodel_54/multi_head_attention_217/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
'model_54/multi_head_attention_217/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =Ê
%model_54/multi_head_attention_217/MulMul/model_54/multi_head_attention_217/query/add:z:00model_54/multi_head_attention_217/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
/model_54/multi_head_attention_217/einsum/EinsumEinsum-model_54/multi_head_attention_217/key/add:z:0)model_54/multi_head_attention_217/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe³
4model_54/multi_head_attention_217/softmax_41/SoftmaxSoftmax8model_54/multi_head_attention_217/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
6model_54/multi_head_attention_217/dropout_536/IdentityIdentity>model_54/multi_head_attention_217/softmax_41/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1model_54/multi_head_attention_217/einsum_1/EinsumEinsum?model_54/multi_head_attention_217/dropout_536/Identity:output:0/model_54/multi_head_attention_217/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcdí
Omodel_54/multi_head_attention_217/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpXmodel_54_multi_head_attention_217_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0»
@model_54/multi_head_attention_217/attention_output/einsum/EinsumEinsum:model_54/multi_head_attention_217/einsum_1/Einsum:output:0Wmodel_54/multi_head_attention_217/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abeÐ
Emodel_54/multi_head_attention_217/attention_output/add/ReadVariableOpReadVariableOpNmodel_54_multi_head_attention_217_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0
6model_54/multi_head_attention_217/attention_output/addAddV2Imodel_54/multi_head_attention_217/attention_output/einsum/Einsum:output:0Mmodel_54/multi_head_attention_217/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_54/dropout_528/IdentityIdentity:model_54/multi_head_attention_217/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
'model_54/tf.__operators__.add_434/AddV2AddV2&model_54/dropout_528/Identity:output:0+model_54/tf.__operators__.add_433/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
?model_54/layer_normalization_435/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
-model_54/layer_normalization_435/moments/meanMean+model_54/tf.__operators__.add_434/AddV2:z:0Hmodel_54/layer_normalization_435/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(³
5model_54/layer_normalization_435/moments/StopGradientStopGradient6model_54/layer_normalization_435/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
:model_54/layer_normalization_435/moments/SquaredDifferenceSquaredDifference+model_54/tf.__operators__.add_434/AddV2:z:0>model_54/layer_normalization_435/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Cmodel_54/layer_normalization_435/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
1model_54/layer_normalization_435/moments/varianceMean>model_54/layer_normalization_435/moments/SquaredDifference:z:0Lmodel_54/layer_normalization_435/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(u
0model_54/layer_normalization_435/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ä
.model_54/layer_normalization_435/batchnorm/addAddV2:model_54/layer_normalization_435/moments/variance:output:09model_54/layer_normalization_435/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
0model_54/layer_normalization_435/batchnorm/RsqrtRsqrt2model_54/layer_normalization_435/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
=model_54/layer_normalization_435/batchnorm/mul/ReadVariableOpReadVariableOpFmodel_54_layer_normalization_435_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0è
.model_54/layer_normalization_435/batchnorm/mulMul4model_54/layer_normalization_435/batchnorm/Rsqrt:y:0Emodel_54/layer_normalization_435/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
0model_54/layer_normalization_435/batchnorm/mul_1Mul+model_54/tf.__operators__.add_434/AddV2:z:02model_54/layer_normalization_435/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
0model_54/layer_normalization_435/batchnorm/mul_2Mul6model_54/layer_normalization_435/moments/mean:output:02model_54/layer_normalization_435/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
9model_54/layer_normalization_435/batchnorm/ReadVariableOpReadVariableOpBmodel_54_layer_normalization_435_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0ä
.model_54/layer_normalization_435/batchnorm/subSubAmodel_54/layer_normalization_435/batchnorm/ReadVariableOp:value:04model_54/layer_normalization_435/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
0model_54/layer_normalization_435/batchnorm/add_1AddV24model_54/layer_normalization_435/batchnorm/mul_1:z:02model_54/layer_normalization_435/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
)model_54/conv1d_434/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ×
%model_54/conv1d_434/Conv1D/ExpandDims
ExpandDims4model_54/layer_normalization_435/batchnorm/add_1:z:02model_54/conv1d_434/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
6model_54/conv1d_434/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?model_54_conv1d_434_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0m
+model_54/conv1d_434/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ü
'model_54/conv1d_434/Conv1D/ExpandDims_1
ExpandDims>model_54/conv1d_434/Conv1D/ExpandDims_1/ReadVariableOp:value:04model_54/conv1d_434/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:é
model_54/conv1d_434/Conv1DConv2D.model_54/conv1d_434/Conv1D/ExpandDims:output:00model_54/conv1d_434/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
¨
"model_54/conv1d_434/Conv1D/SqueezeSqueeze#model_54/conv1d_434/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
*model_54/conv1d_434/BiasAdd/ReadVariableOpReadVariableOp3model_54_conv1d_434_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0½
model_54/conv1d_434/BiasAddBiasAdd+model_54/conv1d_434/Conv1D/Squeeze:output:02model_54/conv1d_434/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
model_54/conv1d_434/ReluRelu$model_54/conv1d_434/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_54/dropout_529/IdentityIdentity&model_54/conv1d_434/Relu:activations:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
)model_54/conv1d_435/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿÉ
%model_54/conv1d_435/Conv1D/ExpandDims
ExpandDims&model_54/dropout_529/Identity:output:02model_54/conv1d_435/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
6model_54/conv1d_435/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?model_54_conv1d_435_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0m
+model_54/conv1d_435/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ü
'model_54/conv1d_435/Conv1D/ExpandDims_1
ExpandDims>model_54/conv1d_435/Conv1D/ExpandDims_1/ReadVariableOp:value:04model_54/conv1d_435/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:é
model_54/conv1d_435/Conv1DConv2D.model_54/conv1d_435/Conv1D/ExpandDims:output:00model_54/conv1d_435/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
¨
"model_54/conv1d_435/Conv1D/SqueezeSqueeze#model_54/conv1d_435/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
*model_54/conv1d_435/BiasAdd/ReadVariableOpReadVariableOp3model_54_conv1d_435_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0½
model_54/conv1d_435/BiasAddBiasAdd+model_54/conv1d_435/Conv1D/Squeeze:output:02model_54/conv1d_435/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
'model_54/tf.__operators__.add_435/AddV2AddV2$model_54/conv1d_435/BiasAdd:output:0+model_54/tf.__operators__.add_434/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
?model_54/layer_normalization_436/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
-model_54/layer_normalization_436/moments/meanMean+model_54/tf.__operators__.add_435/AddV2:z:0Hmodel_54/layer_normalization_436/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(³
5model_54/layer_normalization_436/moments/StopGradientStopGradient6model_54/layer_normalization_436/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
:model_54/layer_normalization_436/moments/SquaredDifferenceSquaredDifference+model_54/tf.__operators__.add_435/AddV2:z:0>model_54/layer_normalization_436/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Cmodel_54/layer_normalization_436/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
1model_54/layer_normalization_436/moments/varianceMean>model_54/layer_normalization_436/moments/SquaredDifference:z:0Lmodel_54/layer_normalization_436/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(u
0model_54/layer_normalization_436/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ä
.model_54/layer_normalization_436/batchnorm/addAddV2:model_54/layer_normalization_436/moments/variance:output:09model_54/layer_normalization_436/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
0model_54/layer_normalization_436/batchnorm/RsqrtRsqrt2model_54/layer_normalization_436/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
=model_54/layer_normalization_436/batchnorm/mul/ReadVariableOpReadVariableOpFmodel_54_layer_normalization_436_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0è
.model_54/layer_normalization_436/batchnorm/mulMul4model_54/layer_normalization_436/batchnorm/Rsqrt:y:0Emodel_54/layer_normalization_436/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
0model_54/layer_normalization_436/batchnorm/mul_1Mul+model_54/tf.__operators__.add_435/AddV2:z:02model_54/layer_normalization_436/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
0model_54/layer_normalization_436/batchnorm/mul_2Mul6model_54/layer_normalization_436/moments/mean:output:02model_54/layer_normalization_436/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
9model_54/layer_normalization_436/batchnorm/ReadVariableOpReadVariableOpBmodel_54_layer_normalization_436_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0ä
.model_54/layer_normalization_436/batchnorm/subSubAmodel_54/layer_normalization_436/batchnorm/ReadVariableOp:value:04model_54/layer_normalization_436/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
0model_54/layer_normalization_436/batchnorm/add_1AddV24model_54/layer_normalization_436/batchnorm/mul_1:z:02model_54/layer_normalization_436/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
Dmodel_54/multi_head_attention_218/query/einsum/Einsum/ReadVariableOpReadVariableOpMmodel_54_multi_head_attention_218_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0¤
5model_54/multi_head_attention_218/query/einsum/EinsumEinsum4model_54/layer_normalization_436/batchnorm/add_1:z:0Lmodel_54/multi_head_attention_218/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde¿
:model_54/multi_head_attention_218/query/add/ReadVariableOpReadVariableOpCmodel_54_multi_head_attention_218_query_add_readvariableop_resource*
_output_shapes
:	*
dtype0ó
+model_54/multi_head_attention_218/query/addAddV2>model_54/multi_head_attention_218/query/einsum/Einsum:output:0Bmodel_54/multi_head_attention_218/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
Bmodel_54/multi_head_attention_218/key/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_54_multi_head_attention_218_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0 
3model_54/multi_head_attention_218/key/einsum/EinsumEinsum4model_54/layer_normalization_436/batchnorm/add_1:z:0Jmodel_54/multi_head_attention_218/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde»
8model_54/multi_head_attention_218/key/add/ReadVariableOpReadVariableOpAmodel_54_multi_head_attention_218_key_add_readvariableop_resource*
_output_shapes
:	*
dtype0í
)model_54/multi_head_attention_218/key/addAddV2<model_54/multi_head_attention_218/key/einsum/Einsum:output:0@model_54/multi_head_attention_218/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
Dmodel_54/multi_head_attention_218/value/einsum/Einsum/ReadVariableOpReadVariableOpMmodel_54_multi_head_attention_218_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0¤
5model_54/multi_head_attention_218/value/einsum/EinsumEinsum4model_54/layer_normalization_436/batchnorm/add_1:z:0Lmodel_54/multi_head_attention_218/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde¿
:model_54/multi_head_attention_218/value/add/ReadVariableOpReadVariableOpCmodel_54_multi_head_attention_218_value_add_readvariableop_resource*
_output_shapes
:	*
dtype0ó
+model_54/multi_head_attention_218/value/addAddV2>model_54/multi_head_attention_218/value/einsum/Einsum:output:0Bmodel_54/multi_head_attention_218/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
'model_54/multi_head_attention_218/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =Ê
%model_54/multi_head_attention_218/MulMul/model_54/multi_head_attention_218/query/add:z:00model_54/multi_head_attention_218/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
/model_54/multi_head_attention_218/einsum/EinsumEinsum-model_54/multi_head_attention_218/key/add:z:0)model_54/multi_head_attention_218/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe³
4model_54/multi_head_attention_218/softmax_42/SoftmaxSoftmax8model_54/multi_head_attention_218/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
6model_54/multi_head_attention_218/dropout_537/IdentityIdentity>model_54/multi_head_attention_218/softmax_42/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1model_54/multi_head_attention_218/einsum_1/EinsumEinsum?model_54/multi_head_attention_218/dropout_537/Identity:output:0/model_54/multi_head_attention_218/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcdí
Omodel_54/multi_head_attention_218/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpXmodel_54_multi_head_attention_218_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0»
@model_54/multi_head_attention_218/attention_output/einsum/EinsumEinsum:model_54/multi_head_attention_218/einsum_1/Einsum:output:0Wmodel_54/multi_head_attention_218/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abeÐ
Emodel_54/multi_head_attention_218/attention_output/add/ReadVariableOpReadVariableOpNmodel_54_multi_head_attention_218_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0
6model_54/multi_head_attention_218/attention_output/addAddV2Imodel_54/multi_head_attention_218/attention_output/einsum/Einsum:output:0Mmodel_54/multi_head_attention_218/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_54/dropout_530/IdentityIdentity:model_54/multi_head_attention_218/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
'model_54/tf.__operators__.add_436/AddV2AddV2&model_54/dropout_530/Identity:output:0+model_54/tf.__operators__.add_435/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
?model_54/layer_normalization_437/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
-model_54/layer_normalization_437/moments/meanMean+model_54/tf.__operators__.add_436/AddV2:z:0Hmodel_54/layer_normalization_437/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(³
5model_54/layer_normalization_437/moments/StopGradientStopGradient6model_54/layer_normalization_437/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
:model_54/layer_normalization_437/moments/SquaredDifferenceSquaredDifference+model_54/tf.__operators__.add_436/AddV2:z:0>model_54/layer_normalization_437/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Cmodel_54/layer_normalization_437/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
1model_54/layer_normalization_437/moments/varianceMean>model_54/layer_normalization_437/moments/SquaredDifference:z:0Lmodel_54/layer_normalization_437/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(u
0model_54/layer_normalization_437/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ä
.model_54/layer_normalization_437/batchnorm/addAddV2:model_54/layer_normalization_437/moments/variance:output:09model_54/layer_normalization_437/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
0model_54/layer_normalization_437/batchnorm/RsqrtRsqrt2model_54/layer_normalization_437/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
=model_54/layer_normalization_437/batchnorm/mul/ReadVariableOpReadVariableOpFmodel_54_layer_normalization_437_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0è
.model_54/layer_normalization_437/batchnorm/mulMul4model_54/layer_normalization_437/batchnorm/Rsqrt:y:0Emodel_54/layer_normalization_437/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
0model_54/layer_normalization_437/batchnorm/mul_1Mul+model_54/tf.__operators__.add_436/AddV2:z:02model_54/layer_normalization_437/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
0model_54/layer_normalization_437/batchnorm/mul_2Mul6model_54/layer_normalization_437/moments/mean:output:02model_54/layer_normalization_437/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
9model_54/layer_normalization_437/batchnorm/ReadVariableOpReadVariableOpBmodel_54_layer_normalization_437_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0ä
.model_54/layer_normalization_437/batchnorm/subSubAmodel_54/layer_normalization_437/batchnorm/ReadVariableOp:value:04model_54/layer_normalization_437/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
0model_54/layer_normalization_437/batchnorm/add_1AddV24model_54/layer_normalization_437/batchnorm/mul_1:z:02model_54/layer_normalization_437/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
)model_54/conv1d_436/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ×
%model_54/conv1d_436/Conv1D/ExpandDims
ExpandDims4model_54/layer_normalization_437/batchnorm/add_1:z:02model_54/conv1d_436/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
6model_54/conv1d_436/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?model_54_conv1d_436_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0m
+model_54/conv1d_436/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ü
'model_54/conv1d_436/Conv1D/ExpandDims_1
ExpandDims>model_54/conv1d_436/Conv1D/ExpandDims_1/ReadVariableOp:value:04model_54/conv1d_436/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:é
model_54/conv1d_436/Conv1DConv2D.model_54/conv1d_436/Conv1D/ExpandDims:output:00model_54/conv1d_436/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
¨
"model_54/conv1d_436/Conv1D/SqueezeSqueeze#model_54/conv1d_436/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
*model_54/conv1d_436/BiasAdd/ReadVariableOpReadVariableOp3model_54_conv1d_436_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0½
model_54/conv1d_436/BiasAddBiasAdd+model_54/conv1d_436/Conv1D/Squeeze:output:02model_54/conv1d_436/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
model_54/conv1d_436/ReluRelu$model_54/conv1d_436/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_54/dropout_531/IdentityIdentity&model_54/conv1d_436/Relu:activations:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
)model_54/conv1d_437/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿÉ
%model_54/conv1d_437/Conv1D/ExpandDims
ExpandDims&model_54/dropout_531/Identity:output:02model_54/conv1d_437/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
6model_54/conv1d_437/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?model_54_conv1d_437_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0m
+model_54/conv1d_437/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ü
'model_54/conv1d_437/Conv1D/ExpandDims_1
ExpandDims>model_54/conv1d_437/Conv1D/ExpandDims_1/ReadVariableOp:value:04model_54/conv1d_437/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:é
model_54/conv1d_437/Conv1DConv2D.model_54/conv1d_437/Conv1D/ExpandDims:output:00model_54/conv1d_437/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
¨
"model_54/conv1d_437/Conv1D/SqueezeSqueeze#model_54/conv1d_437/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
*model_54/conv1d_437/BiasAdd/ReadVariableOpReadVariableOp3model_54_conv1d_437_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0½
model_54/conv1d_437/BiasAddBiasAdd+model_54/conv1d_437/Conv1D/Squeeze:output:02model_54/conv1d_437/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
'model_54/tf.__operators__.add_437/AddV2AddV2$model_54/conv1d_437/BiasAdd:output:0+model_54/tf.__operators__.add_436/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
?model_54/layer_normalization_438/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
-model_54/layer_normalization_438/moments/meanMean+model_54/tf.__operators__.add_437/AddV2:z:0Hmodel_54/layer_normalization_438/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(³
5model_54/layer_normalization_438/moments/StopGradientStopGradient6model_54/layer_normalization_438/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
:model_54/layer_normalization_438/moments/SquaredDifferenceSquaredDifference+model_54/tf.__operators__.add_437/AddV2:z:0>model_54/layer_normalization_438/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Cmodel_54/layer_normalization_438/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
1model_54/layer_normalization_438/moments/varianceMean>model_54/layer_normalization_438/moments/SquaredDifference:z:0Lmodel_54/layer_normalization_438/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(u
0model_54/layer_normalization_438/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ä
.model_54/layer_normalization_438/batchnorm/addAddV2:model_54/layer_normalization_438/moments/variance:output:09model_54/layer_normalization_438/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
0model_54/layer_normalization_438/batchnorm/RsqrtRsqrt2model_54/layer_normalization_438/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
=model_54/layer_normalization_438/batchnorm/mul/ReadVariableOpReadVariableOpFmodel_54_layer_normalization_438_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0è
.model_54/layer_normalization_438/batchnorm/mulMul4model_54/layer_normalization_438/batchnorm/Rsqrt:y:0Emodel_54/layer_normalization_438/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
0model_54/layer_normalization_438/batchnorm/mul_1Mul+model_54/tf.__operators__.add_437/AddV2:z:02model_54/layer_normalization_438/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
0model_54/layer_normalization_438/batchnorm/mul_2Mul6model_54/layer_normalization_438/moments/mean:output:02model_54/layer_normalization_438/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
9model_54/layer_normalization_438/batchnorm/ReadVariableOpReadVariableOpBmodel_54_layer_normalization_438_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0ä
.model_54/layer_normalization_438/batchnorm/subSubAmodel_54/layer_normalization_438/batchnorm/ReadVariableOp:value:04model_54/layer_normalization_438/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
0model_54/layer_normalization_438/batchnorm/add_1AddV24model_54/layer_normalization_438/batchnorm/mul_1:z:02model_54/layer_normalization_438/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
Dmodel_54/multi_head_attention_219/query/einsum/Einsum/ReadVariableOpReadVariableOpMmodel_54_multi_head_attention_219_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0¤
5model_54/multi_head_attention_219/query/einsum/EinsumEinsum4model_54/layer_normalization_438/batchnorm/add_1:z:0Lmodel_54/multi_head_attention_219/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde¿
:model_54/multi_head_attention_219/query/add/ReadVariableOpReadVariableOpCmodel_54_multi_head_attention_219_query_add_readvariableop_resource*
_output_shapes
:	*
dtype0ó
+model_54/multi_head_attention_219/query/addAddV2>model_54/multi_head_attention_219/query/einsum/Einsum:output:0Bmodel_54/multi_head_attention_219/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
Bmodel_54/multi_head_attention_219/key/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_54_multi_head_attention_219_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0 
3model_54/multi_head_attention_219/key/einsum/EinsumEinsum4model_54/layer_normalization_438/batchnorm/add_1:z:0Jmodel_54/multi_head_attention_219/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde»
8model_54/multi_head_attention_219/key/add/ReadVariableOpReadVariableOpAmodel_54_multi_head_attention_219_key_add_readvariableop_resource*
_output_shapes
:	*
dtype0í
)model_54/multi_head_attention_219/key/addAddV2<model_54/multi_head_attention_219/key/einsum/Einsum:output:0@model_54/multi_head_attention_219/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
Dmodel_54/multi_head_attention_219/value/einsum/Einsum/ReadVariableOpReadVariableOpMmodel_54_multi_head_attention_219_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0¤
5model_54/multi_head_attention_219/value/einsum/EinsumEinsum4model_54/layer_normalization_438/batchnorm/add_1:z:0Lmodel_54/multi_head_attention_219/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde¿
:model_54/multi_head_attention_219/value/add/ReadVariableOpReadVariableOpCmodel_54_multi_head_attention_219_value_add_readvariableop_resource*
_output_shapes
:	*
dtype0ó
+model_54/multi_head_attention_219/value/addAddV2>model_54/multi_head_attention_219/value/einsum/Einsum:output:0Bmodel_54/multi_head_attention_219/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
'model_54/multi_head_attention_219/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =Ê
%model_54/multi_head_attention_219/MulMul/model_54/multi_head_attention_219/query/add:z:00model_54/multi_head_attention_219/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
/model_54/multi_head_attention_219/einsum/EinsumEinsum-model_54/multi_head_attention_219/key/add:z:0)model_54/multi_head_attention_219/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe³
4model_54/multi_head_attention_219/softmax_43/SoftmaxSoftmax8model_54/multi_head_attention_219/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
6model_54/multi_head_attention_219/dropout_538/IdentityIdentity>model_54/multi_head_attention_219/softmax_43/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1model_54/multi_head_attention_219/einsum_1/EinsumEinsum?model_54/multi_head_attention_219/dropout_538/Identity:output:0/model_54/multi_head_attention_219/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcdí
Omodel_54/multi_head_attention_219/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpXmodel_54_multi_head_attention_219_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0»
@model_54/multi_head_attention_219/attention_output/einsum/EinsumEinsum:model_54/multi_head_attention_219/einsum_1/Einsum:output:0Wmodel_54/multi_head_attention_219/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abeÐ
Emodel_54/multi_head_attention_219/attention_output/add/ReadVariableOpReadVariableOpNmodel_54_multi_head_attention_219_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0
6model_54/multi_head_attention_219/attention_output/addAddV2Imodel_54/multi_head_attention_219/attention_output/einsum/Einsum:output:0Mmodel_54/multi_head_attention_219/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_54/dropout_532/IdentityIdentity:model_54/multi_head_attention_219/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
'model_54/tf.__operators__.add_438/AddV2AddV2&model_54/dropout_532/Identity:output:0+model_54/tf.__operators__.add_437/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
?model_54/layer_normalization_439/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
-model_54/layer_normalization_439/moments/meanMean+model_54/tf.__operators__.add_438/AddV2:z:0Hmodel_54/layer_normalization_439/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(³
5model_54/layer_normalization_439/moments/StopGradientStopGradient6model_54/layer_normalization_439/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
:model_54/layer_normalization_439/moments/SquaredDifferenceSquaredDifference+model_54/tf.__operators__.add_438/AddV2:z:0>model_54/layer_normalization_439/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Cmodel_54/layer_normalization_439/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
1model_54/layer_normalization_439/moments/varianceMean>model_54/layer_normalization_439/moments/SquaredDifference:z:0Lmodel_54/layer_normalization_439/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(u
0model_54/layer_normalization_439/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ä
.model_54/layer_normalization_439/batchnorm/addAddV2:model_54/layer_normalization_439/moments/variance:output:09model_54/layer_normalization_439/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
0model_54/layer_normalization_439/batchnorm/RsqrtRsqrt2model_54/layer_normalization_439/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
=model_54/layer_normalization_439/batchnorm/mul/ReadVariableOpReadVariableOpFmodel_54_layer_normalization_439_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0è
.model_54/layer_normalization_439/batchnorm/mulMul4model_54/layer_normalization_439/batchnorm/Rsqrt:y:0Emodel_54/layer_normalization_439/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
0model_54/layer_normalization_439/batchnorm/mul_1Mul+model_54/tf.__operators__.add_438/AddV2:z:02model_54/layer_normalization_439/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
0model_54/layer_normalization_439/batchnorm/mul_2Mul6model_54/layer_normalization_439/moments/mean:output:02model_54/layer_normalization_439/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¸
9model_54/layer_normalization_439/batchnorm/ReadVariableOpReadVariableOpBmodel_54_layer_normalization_439_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0ä
.model_54/layer_normalization_439/batchnorm/subSubAmodel_54/layer_normalization_439/batchnorm/ReadVariableOp:value:04model_54/layer_normalization_439/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
0model_54/layer_normalization_439/batchnorm/add_1AddV24model_54/layer_normalization_439/batchnorm/mul_1:z:02model_54/layer_normalization_439/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
)model_54/conv1d_438/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ×
%model_54/conv1d_438/Conv1D/ExpandDims
ExpandDims4model_54/layer_normalization_439/batchnorm/add_1:z:02model_54/conv1d_438/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
6model_54/conv1d_438/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?model_54_conv1d_438_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0m
+model_54/conv1d_438/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ü
'model_54/conv1d_438/Conv1D/ExpandDims_1
ExpandDims>model_54/conv1d_438/Conv1D/ExpandDims_1/ReadVariableOp:value:04model_54/conv1d_438/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:é
model_54/conv1d_438/Conv1DConv2D.model_54/conv1d_438/Conv1D/ExpandDims:output:00model_54/conv1d_438/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
¨
"model_54/conv1d_438/Conv1D/SqueezeSqueeze#model_54/conv1d_438/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
*model_54/conv1d_438/BiasAdd/ReadVariableOpReadVariableOp3model_54_conv1d_438_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0½
model_54/conv1d_438/BiasAddBiasAdd+model_54/conv1d_438/Conv1D/Squeeze:output:02model_54/conv1d_438/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
model_54/conv1d_438/ReluRelu$model_54/conv1d_438/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_54/dropout_533/IdentityIdentity&model_54/conv1d_438/Relu:activations:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
)model_54/conv1d_439/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿÉ
%model_54/conv1d_439/Conv1D/ExpandDims
ExpandDims&model_54/dropout_533/Identity:output:02model_54/conv1d_439/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
6model_54/conv1d_439/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp?model_54_conv1d_439_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0m
+model_54/conv1d_439/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Ü
'model_54/conv1d_439/Conv1D/ExpandDims_1
ExpandDims>model_54/conv1d_439/Conv1D/ExpandDims_1/ReadVariableOp:value:04model_54/conv1d_439/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:é
model_54/conv1d_439/Conv1DConv2D.model_54/conv1d_439/Conv1D/ExpandDims:output:00model_54/conv1d_439/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
¨
"model_54/conv1d_439/Conv1D/SqueezeSqueeze#model_54/conv1d_439/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
*model_54/conv1d_439/BiasAdd/ReadVariableOpReadVariableOp3model_54_conv1d_439_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0½
model_54/conv1d_439/BiasAddBiasAdd+model_54/conv1d_439/Conv1D/Squeeze:output:02model_54/conv1d_439/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
'model_54/tf.__operators__.add_439/AddV2AddV2$model_54/conv1d_439/BiasAdd:output:0+model_54/tf.__operators__.add_438/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
;model_54/global_average_pooling1d_54/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :Ö
)model_54/global_average_pooling1d_54/MeanMean+model_54/tf.__operators__.add_439/AddV2:z:0Dmodel_54/global_average_pooling1d_54/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(model_54/dense_108/MatMul/ReadVariableOpReadVariableOp1model_54_dense_108_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0¼
model_54/dense_108/MatMulMatMul2model_54/global_average_pooling1d_54/Mean:output:00model_54/dense_108/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)model_54/dense_108/BiasAdd/ReadVariableOpReadVariableOp2model_54_dense_108_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
model_54/dense_108/BiasAddBiasAdd#model_54/dense_108/MatMul:product:01model_54/dense_108/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
model_54/dense_108/ReluRelu#model_54/dense_108/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_54/dropout_534/IdentityIdentity%model_54/dense_108/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(model_54/dense_109/MatMul/ReadVariableOpReadVariableOp1model_54_dense_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0¯
model_54/dense_109/MatMulMatMul&model_54/dropout_534/Identity:output:00model_54/dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)model_54/dense_109/BiasAdd/ReadVariableOpReadVariableOp2model_54_dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
model_54/dense_109/BiasAddBiasAdd#model_54/dense_109/MatMul:product:01model_54/dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
IdentityIdentity#model_54/dense_109/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
NoOpNoOp+^model_54/conv1d_432/BiasAdd/ReadVariableOp7^model_54/conv1d_432/Conv1D/ExpandDims_1/ReadVariableOp+^model_54/conv1d_433/BiasAdd/ReadVariableOp7^model_54/conv1d_433/Conv1D/ExpandDims_1/ReadVariableOp+^model_54/conv1d_434/BiasAdd/ReadVariableOp7^model_54/conv1d_434/Conv1D/ExpandDims_1/ReadVariableOp+^model_54/conv1d_435/BiasAdd/ReadVariableOp7^model_54/conv1d_435/Conv1D/ExpandDims_1/ReadVariableOp+^model_54/conv1d_436/BiasAdd/ReadVariableOp7^model_54/conv1d_436/Conv1D/ExpandDims_1/ReadVariableOp+^model_54/conv1d_437/BiasAdd/ReadVariableOp7^model_54/conv1d_437/Conv1D/ExpandDims_1/ReadVariableOp+^model_54/conv1d_438/BiasAdd/ReadVariableOp7^model_54/conv1d_438/Conv1D/ExpandDims_1/ReadVariableOp+^model_54/conv1d_439/BiasAdd/ReadVariableOp7^model_54/conv1d_439/Conv1D/ExpandDims_1/ReadVariableOp*^model_54/dense_108/BiasAdd/ReadVariableOp)^model_54/dense_108/MatMul/ReadVariableOp*^model_54/dense_109/BiasAdd/ReadVariableOp)^model_54/dense_109/MatMul/ReadVariableOp:^model_54/layer_normalization_432/batchnorm/ReadVariableOp>^model_54/layer_normalization_432/batchnorm/mul/ReadVariableOp:^model_54/layer_normalization_433/batchnorm/ReadVariableOp>^model_54/layer_normalization_433/batchnorm/mul/ReadVariableOp:^model_54/layer_normalization_434/batchnorm/ReadVariableOp>^model_54/layer_normalization_434/batchnorm/mul/ReadVariableOp:^model_54/layer_normalization_435/batchnorm/ReadVariableOp>^model_54/layer_normalization_435/batchnorm/mul/ReadVariableOp:^model_54/layer_normalization_436/batchnorm/ReadVariableOp>^model_54/layer_normalization_436/batchnorm/mul/ReadVariableOp:^model_54/layer_normalization_437/batchnorm/ReadVariableOp>^model_54/layer_normalization_437/batchnorm/mul/ReadVariableOp:^model_54/layer_normalization_438/batchnorm/ReadVariableOp>^model_54/layer_normalization_438/batchnorm/mul/ReadVariableOp:^model_54/layer_normalization_439/batchnorm/ReadVariableOp>^model_54/layer_normalization_439/batchnorm/mul/ReadVariableOpF^model_54/multi_head_attention_216/attention_output/add/ReadVariableOpP^model_54/multi_head_attention_216/attention_output/einsum/Einsum/ReadVariableOp9^model_54/multi_head_attention_216/key/add/ReadVariableOpC^model_54/multi_head_attention_216/key/einsum/Einsum/ReadVariableOp;^model_54/multi_head_attention_216/query/add/ReadVariableOpE^model_54/multi_head_attention_216/query/einsum/Einsum/ReadVariableOp;^model_54/multi_head_attention_216/value/add/ReadVariableOpE^model_54/multi_head_attention_216/value/einsum/Einsum/ReadVariableOpF^model_54/multi_head_attention_217/attention_output/add/ReadVariableOpP^model_54/multi_head_attention_217/attention_output/einsum/Einsum/ReadVariableOp9^model_54/multi_head_attention_217/key/add/ReadVariableOpC^model_54/multi_head_attention_217/key/einsum/Einsum/ReadVariableOp;^model_54/multi_head_attention_217/query/add/ReadVariableOpE^model_54/multi_head_attention_217/query/einsum/Einsum/ReadVariableOp;^model_54/multi_head_attention_217/value/add/ReadVariableOpE^model_54/multi_head_attention_217/value/einsum/Einsum/ReadVariableOpF^model_54/multi_head_attention_218/attention_output/add/ReadVariableOpP^model_54/multi_head_attention_218/attention_output/einsum/Einsum/ReadVariableOp9^model_54/multi_head_attention_218/key/add/ReadVariableOpC^model_54/multi_head_attention_218/key/einsum/Einsum/ReadVariableOp;^model_54/multi_head_attention_218/query/add/ReadVariableOpE^model_54/multi_head_attention_218/query/einsum/Einsum/ReadVariableOp;^model_54/multi_head_attention_218/value/add/ReadVariableOpE^model_54/multi_head_attention_218/value/einsum/Einsum/ReadVariableOpF^model_54/multi_head_attention_219/attention_output/add/ReadVariableOpP^model_54/multi_head_attention_219/attention_output/einsum/Einsum/ReadVariableOp9^model_54/multi_head_attention_219/key/add/ReadVariableOpC^model_54/multi_head_attention_219/key/einsum/Einsum/ReadVariableOp;^model_54/multi_head_attention_219/query/add/ReadVariableOpE^model_54/multi_head_attention_219/query/einsum/Einsum/ReadVariableOp;^model_54/multi_head_attention_219/value/add/ReadVariableOpE^model_54/multi_head_attention_219/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes¢
:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*model_54/conv1d_432/BiasAdd/ReadVariableOp*model_54/conv1d_432/BiasAdd/ReadVariableOp2p
6model_54/conv1d_432/Conv1D/ExpandDims_1/ReadVariableOp6model_54/conv1d_432/Conv1D/ExpandDims_1/ReadVariableOp2X
*model_54/conv1d_433/BiasAdd/ReadVariableOp*model_54/conv1d_433/BiasAdd/ReadVariableOp2p
6model_54/conv1d_433/Conv1D/ExpandDims_1/ReadVariableOp6model_54/conv1d_433/Conv1D/ExpandDims_1/ReadVariableOp2X
*model_54/conv1d_434/BiasAdd/ReadVariableOp*model_54/conv1d_434/BiasAdd/ReadVariableOp2p
6model_54/conv1d_434/Conv1D/ExpandDims_1/ReadVariableOp6model_54/conv1d_434/Conv1D/ExpandDims_1/ReadVariableOp2X
*model_54/conv1d_435/BiasAdd/ReadVariableOp*model_54/conv1d_435/BiasAdd/ReadVariableOp2p
6model_54/conv1d_435/Conv1D/ExpandDims_1/ReadVariableOp6model_54/conv1d_435/Conv1D/ExpandDims_1/ReadVariableOp2X
*model_54/conv1d_436/BiasAdd/ReadVariableOp*model_54/conv1d_436/BiasAdd/ReadVariableOp2p
6model_54/conv1d_436/Conv1D/ExpandDims_1/ReadVariableOp6model_54/conv1d_436/Conv1D/ExpandDims_1/ReadVariableOp2X
*model_54/conv1d_437/BiasAdd/ReadVariableOp*model_54/conv1d_437/BiasAdd/ReadVariableOp2p
6model_54/conv1d_437/Conv1D/ExpandDims_1/ReadVariableOp6model_54/conv1d_437/Conv1D/ExpandDims_1/ReadVariableOp2X
*model_54/conv1d_438/BiasAdd/ReadVariableOp*model_54/conv1d_438/BiasAdd/ReadVariableOp2p
6model_54/conv1d_438/Conv1D/ExpandDims_1/ReadVariableOp6model_54/conv1d_438/Conv1D/ExpandDims_1/ReadVariableOp2X
*model_54/conv1d_439/BiasAdd/ReadVariableOp*model_54/conv1d_439/BiasAdd/ReadVariableOp2p
6model_54/conv1d_439/Conv1D/ExpandDims_1/ReadVariableOp6model_54/conv1d_439/Conv1D/ExpandDims_1/ReadVariableOp2V
)model_54/dense_108/BiasAdd/ReadVariableOp)model_54/dense_108/BiasAdd/ReadVariableOp2T
(model_54/dense_108/MatMul/ReadVariableOp(model_54/dense_108/MatMul/ReadVariableOp2V
)model_54/dense_109/BiasAdd/ReadVariableOp)model_54/dense_109/BiasAdd/ReadVariableOp2T
(model_54/dense_109/MatMul/ReadVariableOp(model_54/dense_109/MatMul/ReadVariableOp2v
9model_54/layer_normalization_432/batchnorm/ReadVariableOp9model_54/layer_normalization_432/batchnorm/ReadVariableOp2~
=model_54/layer_normalization_432/batchnorm/mul/ReadVariableOp=model_54/layer_normalization_432/batchnorm/mul/ReadVariableOp2v
9model_54/layer_normalization_433/batchnorm/ReadVariableOp9model_54/layer_normalization_433/batchnorm/ReadVariableOp2~
=model_54/layer_normalization_433/batchnorm/mul/ReadVariableOp=model_54/layer_normalization_433/batchnorm/mul/ReadVariableOp2v
9model_54/layer_normalization_434/batchnorm/ReadVariableOp9model_54/layer_normalization_434/batchnorm/ReadVariableOp2~
=model_54/layer_normalization_434/batchnorm/mul/ReadVariableOp=model_54/layer_normalization_434/batchnorm/mul/ReadVariableOp2v
9model_54/layer_normalization_435/batchnorm/ReadVariableOp9model_54/layer_normalization_435/batchnorm/ReadVariableOp2~
=model_54/layer_normalization_435/batchnorm/mul/ReadVariableOp=model_54/layer_normalization_435/batchnorm/mul/ReadVariableOp2v
9model_54/layer_normalization_436/batchnorm/ReadVariableOp9model_54/layer_normalization_436/batchnorm/ReadVariableOp2~
=model_54/layer_normalization_436/batchnorm/mul/ReadVariableOp=model_54/layer_normalization_436/batchnorm/mul/ReadVariableOp2v
9model_54/layer_normalization_437/batchnorm/ReadVariableOp9model_54/layer_normalization_437/batchnorm/ReadVariableOp2~
=model_54/layer_normalization_437/batchnorm/mul/ReadVariableOp=model_54/layer_normalization_437/batchnorm/mul/ReadVariableOp2v
9model_54/layer_normalization_438/batchnorm/ReadVariableOp9model_54/layer_normalization_438/batchnorm/ReadVariableOp2~
=model_54/layer_normalization_438/batchnorm/mul/ReadVariableOp=model_54/layer_normalization_438/batchnorm/mul/ReadVariableOp2v
9model_54/layer_normalization_439/batchnorm/ReadVariableOp9model_54/layer_normalization_439/batchnorm/ReadVariableOp2~
=model_54/layer_normalization_439/batchnorm/mul/ReadVariableOp=model_54/layer_normalization_439/batchnorm/mul/ReadVariableOp2
Emodel_54/multi_head_attention_216/attention_output/add/ReadVariableOpEmodel_54/multi_head_attention_216/attention_output/add/ReadVariableOp2¢
Omodel_54/multi_head_attention_216/attention_output/einsum/Einsum/ReadVariableOpOmodel_54/multi_head_attention_216/attention_output/einsum/Einsum/ReadVariableOp2t
8model_54/multi_head_attention_216/key/add/ReadVariableOp8model_54/multi_head_attention_216/key/add/ReadVariableOp2
Bmodel_54/multi_head_attention_216/key/einsum/Einsum/ReadVariableOpBmodel_54/multi_head_attention_216/key/einsum/Einsum/ReadVariableOp2x
:model_54/multi_head_attention_216/query/add/ReadVariableOp:model_54/multi_head_attention_216/query/add/ReadVariableOp2
Dmodel_54/multi_head_attention_216/query/einsum/Einsum/ReadVariableOpDmodel_54/multi_head_attention_216/query/einsum/Einsum/ReadVariableOp2x
:model_54/multi_head_attention_216/value/add/ReadVariableOp:model_54/multi_head_attention_216/value/add/ReadVariableOp2
Dmodel_54/multi_head_attention_216/value/einsum/Einsum/ReadVariableOpDmodel_54/multi_head_attention_216/value/einsum/Einsum/ReadVariableOp2
Emodel_54/multi_head_attention_217/attention_output/add/ReadVariableOpEmodel_54/multi_head_attention_217/attention_output/add/ReadVariableOp2¢
Omodel_54/multi_head_attention_217/attention_output/einsum/Einsum/ReadVariableOpOmodel_54/multi_head_attention_217/attention_output/einsum/Einsum/ReadVariableOp2t
8model_54/multi_head_attention_217/key/add/ReadVariableOp8model_54/multi_head_attention_217/key/add/ReadVariableOp2
Bmodel_54/multi_head_attention_217/key/einsum/Einsum/ReadVariableOpBmodel_54/multi_head_attention_217/key/einsum/Einsum/ReadVariableOp2x
:model_54/multi_head_attention_217/query/add/ReadVariableOp:model_54/multi_head_attention_217/query/add/ReadVariableOp2
Dmodel_54/multi_head_attention_217/query/einsum/Einsum/ReadVariableOpDmodel_54/multi_head_attention_217/query/einsum/Einsum/ReadVariableOp2x
:model_54/multi_head_attention_217/value/add/ReadVariableOp:model_54/multi_head_attention_217/value/add/ReadVariableOp2
Dmodel_54/multi_head_attention_217/value/einsum/Einsum/ReadVariableOpDmodel_54/multi_head_attention_217/value/einsum/Einsum/ReadVariableOp2
Emodel_54/multi_head_attention_218/attention_output/add/ReadVariableOpEmodel_54/multi_head_attention_218/attention_output/add/ReadVariableOp2¢
Omodel_54/multi_head_attention_218/attention_output/einsum/Einsum/ReadVariableOpOmodel_54/multi_head_attention_218/attention_output/einsum/Einsum/ReadVariableOp2t
8model_54/multi_head_attention_218/key/add/ReadVariableOp8model_54/multi_head_attention_218/key/add/ReadVariableOp2
Bmodel_54/multi_head_attention_218/key/einsum/Einsum/ReadVariableOpBmodel_54/multi_head_attention_218/key/einsum/Einsum/ReadVariableOp2x
:model_54/multi_head_attention_218/query/add/ReadVariableOp:model_54/multi_head_attention_218/query/add/ReadVariableOp2
Dmodel_54/multi_head_attention_218/query/einsum/Einsum/ReadVariableOpDmodel_54/multi_head_attention_218/query/einsum/Einsum/ReadVariableOp2x
:model_54/multi_head_attention_218/value/add/ReadVariableOp:model_54/multi_head_attention_218/value/add/ReadVariableOp2
Dmodel_54/multi_head_attention_218/value/einsum/Einsum/ReadVariableOpDmodel_54/multi_head_attention_218/value/einsum/Einsum/ReadVariableOp2
Emodel_54/multi_head_attention_219/attention_output/add/ReadVariableOpEmodel_54/multi_head_attention_219/attention_output/add/ReadVariableOp2¢
Omodel_54/multi_head_attention_219/attention_output/einsum/Einsum/ReadVariableOpOmodel_54/multi_head_attention_219/attention_output/einsum/Einsum/ReadVariableOp2t
8model_54/multi_head_attention_219/key/add/ReadVariableOp8model_54/multi_head_attention_219/key/add/ReadVariableOp2
Bmodel_54/multi_head_attention_219/key/einsum/Einsum/ReadVariableOpBmodel_54/multi_head_attention_219/key/einsum/Einsum/ReadVariableOp2x
:model_54/multi_head_attention_219/query/add/ReadVariableOp:model_54/multi_head_attention_219/query/add/ReadVariableOp2
Dmodel_54/multi_head_attention_219/query/einsum/Einsum/ReadVariableOpDmodel_54/multi_head_attention_219/query/einsum/Einsum/ReadVariableOp2x
:model_54/multi_head_attention_219/value/add/ReadVariableOp:model_54/multi_head_attention_219/value/add/ReadVariableOp2
Dmodel_54/multi_head_attention_219/value/einsum/Einsum/ReadVariableOpDmodel_54/multi_head_attention_219/value/einsum/Einsum/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_55
»
Û!
E__inference_model_54_layer_call_and_return_conditional_losses_1684852

inputs-
layer_normalization_432_1684161:-
layer_normalization_432_1684163:7
 multi_head_attention_216_1684202:3
 multi_head_attention_216_1684204:	7
 multi_head_attention_216_1684206:3
 multi_head_attention_216_1684208:	7
 multi_head_attention_216_1684210:3
 multi_head_attention_216_1684212:	7
 multi_head_attention_216_1684214:.
 multi_head_attention_216_1684216:-
layer_normalization_433_1684250:-
layer_normalization_433_1684252:(
conv1d_432_1684272: 
conv1d_432_1684274:(
conv1d_433_1684300: 
conv1d_433_1684302:-
layer_normalization_434_1684329:-
layer_normalization_434_1684331:7
 multi_head_attention_217_1684370:3
 multi_head_attention_217_1684372:	7
 multi_head_attention_217_1684374:3
 multi_head_attention_217_1684376:	7
 multi_head_attention_217_1684378:3
 multi_head_attention_217_1684380:	7
 multi_head_attention_217_1684382:.
 multi_head_attention_217_1684384:-
layer_normalization_435_1684418:-
layer_normalization_435_1684420:(
conv1d_434_1684440: 
conv1d_434_1684442:(
conv1d_435_1684468: 
conv1d_435_1684470:-
layer_normalization_436_1684497:-
layer_normalization_436_1684499:7
 multi_head_attention_218_1684538:3
 multi_head_attention_218_1684540:	7
 multi_head_attention_218_1684542:3
 multi_head_attention_218_1684544:	7
 multi_head_attention_218_1684546:3
 multi_head_attention_218_1684548:	7
 multi_head_attention_218_1684550:.
 multi_head_attention_218_1684552:-
layer_normalization_437_1684586:-
layer_normalization_437_1684588:(
conv1d_436_1684608: 
conv1d_436_1684610:(
conv1d_437_1684636: 
conv1d_437_1684638:-
layer_normalization_438_1684665:-
layer_normalization_438_1684667:7
 multi_head_attention_219_1684706:3
 multi_head_attention_219_1684708:	7
 multi_head_attention_219_1684710:3
 multi_head_attention_219_1684712:	7
 multi_head_attention_219_1684714:3
 multi_head_attention_219_1684716:	7
 multi_head_attention_219_1684718:.
 multi_head_attention_219_1684720:-
layer_normalization_439_1684754:-
layer_normalization_439_1684756:(
conv1d_438_1684776: 
conv1d_438_1684778:(
conv1d_439_1684804: 
conv1d_439_1684806:$
dense_108_1684823:	 
dense_108_1684825:	$
dense_109_1684846:	
dense_109_1684848:
identity¢"conv1d_432/StatefulPartitionedCall¢"conv1d_433/StatefulPartitionedCall¢"conv1d_434/StatefulPartitionedCall¢"conv1d_435/StatefulPartitionedCall¢"conv1d_436/StatefulPartitionedCall¢"conv1d_437/StatefulPartitionedCall¢"conv1d_438/StatefulPartitionedCall¢"conv1d_439/StatefulPartitionedCall¢!dense_108/StatefulPartitionedCall¢!dense_109/StatefulPartitionedCall¢/layer_normalization_432/StatefulPartitionedCall¢/layer_normalization_433/StatefulPartitionedCall¢/layer_normalization_434/StatefulPartitionedCall¢/layer_normalization_435/StatefulPartitionedCall¢/layer_normalization_436/StatefulPartitionedCall¢/layer_normalization_437/StatefulPartitionedCall¢/layer_normalization_438/StatefulPartitionedCall¢/layer_normalization_439/StatefulPartitionedCall¢0multi_head_attention_216/StatefulPartitionedCall¢0multi_head_attention_217/StatefulPartitionedCall¢0multi_head_attention_218/StatefulPartitionedCall¢0multi_head_attention_219/StatefulPartitionedCall¶
/layer_normalization_432/StatefulPartitionedCallStatefulPartitionedCallinputslayer_normalization_432_1684161layer_normalization_432_1684163*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_432_layer_call_and_return_conditional_losses_1684160ÿ
0multi_head_attention_216/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_432/StatefulPartitionedCall:output:08layer_normalization_432/StatefulPartitionedCall:output:0 multi_head_attention_216_1684202 multi_head_attention_216_1684204 multi_head_attention_216_1684206 multi_head_attention_216_1684208 multi_head_attention_216_1684210 multi_head_attention_216_1684212 multi_head_attention_216_1684214 multi_head_attention_216_1684216*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_216_layer_call_and_return_conditional_losses_1684201ù
dropout_526/PartitionedCallPartitionedCall9multi_head_attention_216/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_526_layer_call_and_return_conditional_losses_1684224
tf.__operators__.add_432/AddV2AddV2$dropout_526/PartitionedCall:output:0inputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_433/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_432/AddV2:z:0layer_normalization_433_1684250layer_normalization_433_1684252*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_433_layer_call_and_return_conditional_losses_1684249´
"conv1d_432/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_433/StatefulPartitionedCall:output:0conv1d_432_1684272conv1d_432_1684274*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_432_layer_call_and_return_conditional_losses_1684271ë
dropout_527/PartitionedCallPartitionedCall+conv1d_432/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_527_layer_call_and_return_conditional_losses_1684282 
"conv1d_433/StatefulPartitionedCallStatefulPartitionedCall$dropout_527/PartitionedCall:output:0conv1d_433_1684300conv1d_433_1684302*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_433_layer_call_and_return_conditional_losses_1684299®
tf.__operators__.add_433/AddV2AddV2+conv1d_433/StatefulPartitionedCall:output:0"tf.__operators__.add_432/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_434/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_433/AddV2:z:0layer_normalization_434_1684329layer_normalization_434_1684331*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_434_layer_call_and_return_conditional_losses_1684328ÿ
0multi_head_attention_217/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_434/StatefulPartitionedCall:output:08layer_normalization_434/StatefulPartitionedCall:output:0 multi_head_attention_217_1684370 multi_head_attention_217_1684372 multi_head_attention_217_1684374 multi_head_attention_217_1684376 multi_head_attention_217_1684378 multi_head_attention_217_1684380 multi_head_attention_217_1684382 multi_head_attention_217_1684384*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_217_layer_call_and_return_conditional_losses_1684369ù
dropout_528/PartitionedCallPartitionedCall9multi_head_attention_217/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_528_layer_call_and_return_conditional_losses_1684392§
tf.__operators__.add_434/AddV2AddV2$dropout_528/PartitionedCall:output:0"tf.__operators__.add_433/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_435/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_434/AddV2:z:0layer_normalization_435_1684418layer_normalization_435_1684420*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_435_layer_call_and_return_conditional_losses_1684417´
"conv1d_434/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_435/StatefulPartitionedCall:output:0conv1d_434_1684440conv1d_434_1684442*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_434_layer_call_and_return_conditional_losses_1684439ë
dropout_529/PartitionedCallPartitionedCall+conv1d_434/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_529_layer_call_and_return_conditional_losses_1684450 
"conv1d_435/StatefulPartitionedCallStatefulPartitionedCall$dropout_529/PartitionedCall:output:0conv1d_435_1684468conv1d_435_1684470*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_435_layer_call_and_return_conditional_losses_1684467®
tf.__operators__.add_435/AddV2AddV2+conv1d_435/StatefulPartitionedCall:output:0"tf.__operators__.add_434/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_436/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_435/AddV2:z:0layer_normalization_436_1684497layer_normalization_436_1684499*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_436_layer_call_and_return_conditional_losses_1684496ÿ
0multi_head_attention_218/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_436/StatefulPartitionedCall:output:08layer_normalization_436/StatefulPartitionedCall:output:0 multi_head_attention_218_1684538 multi_head_attention_218_1684540 multi_head_attention_218_1684542 multi_head_attention_218_1684544 multi_head_attention_218_1684546 multi_head_attention_218_1684548 multi_head_attention_218_1684550 multi_head_attention_218_1684552*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_218_layer_call_and_return_conditional_losses_1684537ù
dropout_530/PartitionedCallPartitionedCall9multi_head_attention_218/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_530_layer_call_and_return_conditional_losses_1684560§
tf.__operators__.add_436/AddV2AddV2$dropout_530/PartitionedCall:output:0"tf.__operators__.add_435/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_437/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_436/AddV2:z:0layer_normalization_437_1684586layer_normalization_437_1684588*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_437_layer_call_and_return_conditional_losses_1684585´
"conv1d_436/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_437/StatefulPartitionedCall:output:0conv1d_436_1684608conv1d_436_1684610*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_436_layer_call_and_return_conditional_losses_1684607ë
dropout_531/PartitionedCallPartitionedCall+conv1d_436/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_531_layer_call_and_return_conditional_losses_1684618 
"conv1d_437/StatefulPartitionedCallStatefulPartitionedCall$dropout_531/PartitionedCall:output:0conv1d_437_1684636conv1d_437_1684638*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_437_layer_call_and_return_conditional_losses_1684635®
tf.__operators__.add_437/AddV2AddV2+conv1d_437/StatefulPartitionedCall:output:0"tf.__operators__.add_436/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_438/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_437/AddV2:z:0layer_normalization_438_1684665layer_normalization_438_1684667*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_438_layer_call_and_return_conditional_losses_1684664ÿ
0multi_head_attention_219/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_438/StatefulPartitionedCall:output:08layer_normalization_438/StatefulPartitionedCall:output:0 multi_head_attention_219_1684706 multi_head_attention_219_1684708 multi_head_attention_219_1684710 multi_head_attention_219_1684712 multi_head_attention_219_1684714 multi_head_attention_219_1684716 multi_head_attention_219_1684718 multi_head_attention_219_1684720*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_219_layer_call_and_return_conditional_losses_1684705ù
dropout_532/PartitionedCallPartitionedCall9multi_head_attention_219/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_532_layer_call_and_return_conditional_losses_1684728§
tf.__operators__.add_438/AddV2AddV2$dropout_532/PartitionedCall:output:0"tf.__operators__.add_437/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_439/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_438/AddV2:z:0layer_normalization_439_1684754layer_normalization_439_1684756*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_439_layer_call_and_return_conditional_losses_1684753´
"conv1d_438/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_439/StatefulPartitionedCall:output:0conv1d_438_1684776conv1d_438_1684778*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_438_layer_call_and_return_conditional_losses_1684775ë
dropout_533/PartitionedCallPartitionedCall+conv1d_438/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_533_layer_call_and_return_conditional_losses_1684786 
"conv1d_439/StatefulPartitionedCallStatefulPartitionedCall$dropout_533/PartitionedCall:output:0conv1d_439_1684804conv1d_439_1684806*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_439_layer_call_and_return_conditional_losses_1684803®
tf.__operators__.add_439/AddV2AddV2+conv1d_439/StatefulPartitionedCall:output:0"tf.__operators__.add_438/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
+global_average_pooling1d_54/PartitionedCallPartitionedCall"tf.__operators__.add_439/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *a
f\RZ
X__inference_global_average_pooling1d_54_layer_call_and_return_conditional_losses_1684128©
!dense_108/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling1d_54/PartitionedCall:output:0dense_108_1684823dense_108_1684825*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_108_layer_call_and_return_conditional_losses_1684822ç
dropout_534/PartitionedCallPartitionedCall*dense_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_534_layer_call_and_return_conditional_losses_1684833
!dense_109/StatefulPartitionedCallStatefulPartitionedCall$dropout_534/PartitionedCall:output:0dense_109_1684846dense_109_1684848*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_109_layer_call_and_return_conditional_losses_1684845y
IdentityIdentity*dense_109/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^conv1d_432/StatefulPartitionedCall#^conv1d_433/StatefulPartitionedCall#^conv1d_434/StatefulPartitionedCall#^conv1d_435/StatefulPartitionedCall#^conv1d_436/StatefulPartitionedCall#^conv1d_437/StatefulPartitionedCall#^conv1d_438/StatefulPartitionedCall#^conv1d_439/StatefulPartitionedCall"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall0^layer_normalization_432/StatefulPartitionedCall0^layer_normalization_433/StatefulPartitionedCall0^layer_normalization_434/StatefulPartitionedCall0^layer_normalization_435/StatefulPartitionedCall0^layer_normalization_436/StatefulPartitionedCall0^layer_normalization_437/StatefulPartitionedCall0^layer_normalization_438/StatefulPartitionedCall0^layer_normalization_439/StatefulPartitionedCall1^multi_head_attention_216/StatefulPartitionedCall1^multi_head_attention_217/StatefulPartitionedCall1^multi_head_attention_218/StatefulPartitionedCall1^multi_head_attention_219/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes¢
:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv1d_432/StatefulPartitionedCall"conv1d_432/StatefulPartitionedCall2H
"conv1d_433/StatefulPartitionedCall"conv1d_433/StatefulPartitionedCall2H
"conv1d_434/StatefulPartitionedCall"conv1d_434/StatefulPartitionedCall2H
"conv1d_435/StatefulPartitionedCall"conv1d_435/StatefulPartitionedCall2H
"conv1d_436/StatefulPartitionedCall"conv1d_436/StatefulPartitionedCall2H
"conv1d_437/StatefulPartitionedCall"conv1d_437/StatefulPartitionedCall2H
"conv1d_438/StatefulPartitionedCall"conv1d_438/StatefulPartitionedCall2H
"conv1d_439/StatefulPartitionedCall"conv1d_439/StatefulPartitionedCall2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2b
/layer_normalization_432/StatefulPartitionedCall/layer_normalization_432/StatefulPartitionedCall2b
/layer_normalization_433/StatefulPartitionedCall/layer_normalization_433/StatefulPartitionedCall2b
/layer_normalization_434/StatefulPartitionedCall/layer_normalization_434/StatefulPartitionedCall2b
/layer_normalization_435/StatefulPartitionedCall/layer_normalization_435/StatefulPartitionedCall2b
/layer_normalization_436/StatefulPartitionedCall/layer_normalization_436/StatefulPartitionedCall2b
/layer_normalization_437/StatefulPartitionedCall/layer_normalization_437/StatefulPartitionedCall2b
/layer_normalization_438/StatefulPartitionedCall/layer_normalization_438/StatefulPartitionedCall2b
/layer_normalization_439/StatefulPartitionedCall/layer_normalization_439/StatefulPartitionedCall2d
0multi_head_attention_216/StatefulPartitionedCall0multi_head_attention_216/StatefulPartitionedCall2d
0multi_head_attention_217/StatefulPartitionedCall0multi_head_attention_217/StatefulPartitionedCall2d
0multi_head_attention_218/StatefulPartitionedCall0multi_head_attention_218/StatefulPartitionedCall2d
0multi_head_attention_219/StatefulPartitionedCall0multi_head_attention_219/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

G__inference_conv1d_435_layer_call_and_return_conditional_losses_1684467

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

T__inference_layer_normalization_437_layer_call_and_return_conditional_losses_1684585

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
f
H__inference_dropout_533_layer_call_and_return_conditional_losses_1684786

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

G__inference_conv1d_435_layer_call_and_return_conditional_losses_1688561

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß

,__inference_conv1d_434_layer_call_fn_1688494

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_434_layer_call_and_return_conditional_losses_1684439s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½Ñ
F
E__inference_model_54_layer_call_and_return_conditional_losses_1687989

inputsK
=layer_normalization_432_batchnorm_mul_readvariableop_resource:G
9layer_normalization_432_batchnorm_readvariableop_resource:[
Dmulti_head_attention_216_query_einsum_einsum_readvariableop_resource:M
:multi_head_attention_216_query_add_readvariableop_resource:	Y
Bmulti_head_attention_216_key_einsum_einsum_readvariableop_resource:K
8multi_head_attention_216_key_add_readvariableop_resource:	[
Dmulti_head_attention_216_value_einsum_einsum_readvariableop_resource:M
:multi_head_attention_216_value_add_readvariableop_resource:	f
Omulti_head_attention_216_attention_output_einsum_einsum_readvariableop_resource:S
Emulti_head_attention_216_attention_output_add_readvariableop_resource:K
=layer_normalization_433_batchnorm_mul_readvariableop_resource:G
9layer_normalization_433_batchnorm_readvariableop_resource:L
6conv1d_432_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_432_biasadd_readvariableop_resource:L
6conv1d_433_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_433_biasadd_readvariableop_resource:K
=layer_normalization_434_batchnorm_mul_readvariableop_resource:G
9layer_normalization_434_batchnorm_readvariableop_resource:[
Dmulti_head_attention_217_query_einsum_einsum_readvariableop_resource:M
:multi_head_attention_217_query_add_readvariableop_resource:	Y
Bmulti_head_attention_217_key_einsum_einsum_readvariableop_resource:K
8multi_head_attention_217_key_add_readvariableop_resource:	[
Dmulti_head_attention_217_value_einsum_einsum_readvariableop_resource:M
:multi_head_attention_217_value_add_readvariableop_resource:	f
Omulti_head_attention_217_attention_output_einsum_einsum_readvariableop_resource:S
Emulti_head_attention_217_attention_output_add_readvariableop_resource:K
=layer_normalization_435_batchnorm_mul_readvariableop_resource:G
9layer_normalization_435_batchnorm_readvariableop_resource:L
6conv1d_434_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_434_biasadd_readvariableop_resource:L
6conv1d_435_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_435_biasadd_readvariableop_resource:K
=layer_normalization_436_batchnorm_mul_readvariableop_resource:G
9layer_normalization_436_batchnorm_readvariableop_resource:[
Dmulti_head_attention_218_query_einsum_einsum_readvariableop_resource:M
:multi_head_attention_218_query_add_readvariableop_resource:	Y
Bmulti_head_attention_218_key_einsum_einsum_readvariableop_resource:K
8multi_head_attention_218_key_add_readvariableop_resource:	[
Dmulti_head_attention_218_value_einsum_einsum_readvariableop_resource:M
:multi_head_attention_218_value_add_readvariableop_resource:	f
Omulti_head_attention_218_attention_output_einsum_einsum_readvariableop_resource:S
Emulti_head_attention_218_attention_output_add_readvariableop_resource:K
=layer_normalization_437_batchnorm_mul_readvariableop_resource:G
9layer_normalization_437_batchnorm_readvariableop_resource:L
6conv1d_436_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_436_biasadd_readvariableop_resource:L
6conv1d_437_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_437_biasadd_readvariableop_resource:K
=layer_normalization_438_batchnorm_mul_readvariableop_resource:G
9layer_normalization_438_batchnorm_readvariableop_resource:[
Dmulti_head_attention_219_query_einsum_einsum_readvariableop_resource:M
:multi_head_attention_219_query_add_readvariableop_resource:	Y
Bmulti_head_attention_219_key_einsum_einsum_readvariableop_resource:K
8multi_head_attention_219_key_add_readvariableop_resource:	[
Dmulti_head_attention_219_value_einsum_einsum_readvariableop_resource:M
:multi_head_attention_219_value_add_readvariableop_resource:	f
Omulti_head_attention_219_attention_output_einsum_einsum_readvariableop_resource:S
Emulti_head_attention_219_attention_output_add_readvariableop_resource:K
=layer_normalization_439_batchnorm_mul_readvariableop_resource:G
9layer_normalization_439_batchnorm_readvariableop_resource:L
6conv1d_438_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_438_biasadd_readvariableop_resource:L
6conv1d_439_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_439_biasadd_readvariableop_resource:;
(dense_108_matmul_readvariableop_resource:	8
)dense_108_biasadd_readvariableop_resource:	;
(dense_109_matmul_readvariableop_resource:	7
)dense_109_biasadd_readvariableop_resource:
identity¢!conv1d_432/BiasAdd/ReadVariableOp¢-conv1d_432/Conv1D/ExpandDims_1/ReadVariableOp¢!conv1d_433/BiasAdd/ReadVariableOp¢-conv1d_433/Conv1D/ExpandDims_1/ReadVariableOp¢!conv1d_434/BiasAdd/ReadVariableOp¢-conv1d_434/Conv1D/ExpandDims_1/ReadVariableOp¢!conv1d_435/BiasAdd/ReadVariableOp¢-conv1d_435/Conv1D/ExpandDims_1/ReadVariableOp¢!conv1d_436/BiasAdd/ReadVariableOp¢-conv1d_436/Conv1D/ExpandDims_1/ReadVariableOp¢!conv1d_437/BiasAdd/ReadVariableOp¢-conv1d_437/Conv1D/ExpandDims_1/ReadVariableOp¢!conv1d_438/BiasAdd/ReadVariableOp¢-conv1d_438/Conv1D/ExpandDims_1/ReadVariableOp¢!conv1d_439/BiasAdd/ReadVariableOp¢-conv1d_439/Conv1D/ExpandDims_1/ReadVariableOp¢ dense_108/BiasAdd/ReadVariableOp¢dense_108/MatMul/ReadVariableOp¢ dense_109/BiasAdd/ReadVariableOp¢dense_109/MatMul/ReadVariableOp¢0layer_normalization_432/batchnorm/ReadVariableOp¢4layer_normalization_432/batchnorm/mul/ReadVariableOp¢0layer_normalization_433/batchnorm/ReadVariableOp¢4layer_normalization_433/batchnorm/mul/ReadVariableOp¢0layer_normalization_434/batchnorm/ReadVariableOp¢4layer_normalization_434/batchnorm/mul/ReadVariableOp¢0layer_normalization_435/batchnorm/ReadVariableOp¢4layer_normalization_435/batchnorm/mul/ReadVariableOp¢0layer_normalization_436/batchnorm/ReadVariableOp¢4layer_normalization_436/batchnorm/mul/ReadVariableOp¢0layer_normalization_437/batchnorm/ReadVariableOp¢4layer_normalization_437/batchnorm/mul/ReadVariableOp¢0layer_normalization_438/batchnorm/ReadVariableOp¢4layer_normalization_438/batchnorm/mul/ReadVariableOp¢0layer_normalization_439/batchnorm/ReadVariableOp¢4layer_normalization_439/batchnorm/mul/ReadVariableOp¢<multi_head_attention_216/attention_output/add/ReadVariableOp¢Fmulti_head_attention_216/attention_output/einsum/Einsum/ReadVariableOp¢/multi_head_attention_216/key/add/ReadVariableOp¢9multi_head_attention_216/key/einsum/Einsum/ReadVariableOp¢1multi_head_attention_216/query/add/ReadVariableOp¢;multi_head_attention_216/query/einsum/Einsum/ReadVariableOp¢1multi_head_attention_216/value/add/ReadVariableOp¢;multi_head_attention_216/value/einsum/Einsum/ReadVariableOp¢<multi_head_attention_217/attention_output/add/ReadVariableOp¢Fmulti_head_attention_217/attention_output/einsum/Einsum/ReadVariableOp¢/multi_head_attention_217/key/add/ReadVariableOp¢9multi_head_attention_217/key/einsum/Einsum/ReadVariableOp¢1multi_head_attention_217/query/add/ReadVariableOp¢;multi_head_attention_217/query/einsum/Einsum/ReadVariableOp¢1multi_head_attention_217/value/add/ReadVariableOp¢;multi_head_attention_217/value/einsum/Einsum/ReadVariableOp¢<multi_head_attention_218/attention_output/add/ReadVariableOp¢Fmulti_head_attention_218/attention_output/einsum/Einsum/ReadVariableOp¢/multi_head_attention_218/key/add/ReadVariableOp¢9multi_head_attention_218/key/einsum/Einsum/ReadVariableOp¢1multi_head_attention_218/query/add/ReadVariableOp¢;multi_head_attention_218/query/einsum/Einsum/ReadVariableOp¢1multi_head_attention_218/value/add/ReadVariableOp¢;multi_head_attention_218/value/einsum/Einsum/ReadVariableOp¢<multi_head_attention_219/attention_output/add/ReadVariableOp¢Fmulti_head_attention_219/attention_output/einsum/Einsum/ReadVariableOp¢/multi_head_attention_219/key/add/ReadVariableOp¢9multi_head_attention_219/key/einsum/Einsum/ReadVariableOp¢1multi_head_attention_219/query/add/ReadVariableOp¢;multi_head_attention_219/query/einsum/Einsum/ReadVariableOp¢1multi_head_attention_219/value/add/ReadVariableOp¢;multi_head_attention_219/value/einsum/Einsum/ReadVariableOp
6layer_normalization_432/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¼
$layer_normalization_432/moments/meanMeaninputs?layer_normalization_432/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¡
,layer_normalization_432/moments/StopGradientStopGradient-layer_normalization_432/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
1layer_normalization_432/moments/SquaredDifferenceSquaredDifferenceinputs5layer_normalization_432/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:layer_normalization_432/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_432/moments/varianceMean5layer_normalization_432/moments/SquaredDifference:z:0Clayer_normalization_432/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(l
'layer_normalization_432/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_432/batchnorm/addAddV21layer_normalization_432/moments/variance:output:00layer_normalization_432/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_432/batchnorm/RsqrtRsqrt)layer_normalization_432/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4layer_normalization_432/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_432_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Í
%layer_normalization_432/batchnorm/mulMul+layer_normalization_432/batchnorm/Rsqrt:y:0<layer_normalization_432/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_432/batchnorm/mul_1Mulinputs)layer_normalization_432/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_432/batchnorm/mul_2Mul-layer_normalization_432/moments/mean:output:0)layer_normalization_432/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization_432/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_432_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0É
%layer_normalization_432/batchnorm/subSub8layer_normalization_432/batchnorm/ReadVariableOp:value:0+layer_normalization_432/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_432/batchnorm/add_1AddV2+layer_normalization_432/batchnorm/mul_1:z:0)layer_normalization_432/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
;multi_head_attention_216/query/einsum/Einsum/ReadVariableOpReadVariableOpDmulti_head_attention_216_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
,multi_head_attention_216/query/einsum/EinsumEinsum+layer_normalization_432/batchnorm/add_1:z:0Cmulti_head_attention_216/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde­
1multi_head_attention_216/query/add/ReadVariableOpReadVariableOp:multi_head_attention_216_query_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
"multi_head_attention_216/query/addAddV25multi_head_attention_216/query/einsum/Einsum:output:09multi_head_attention_216/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
9multi_head_attention_216/key/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_216_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
*multi_head_attention_216/key/einsum/EinsumEinsum+layer_normalization_432/batchnorm/add_1:z:0Amulti_head_attention_216/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde©
/multi_head_attention_216/key/add/ReadVariableOpReadVariableOp8multi_head_attention_216_key_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ò
 multi_head_attention_216/key/addAddV23multi_head_attention_216/key/einsum/Einsum:output:07multi_head_attention_216/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
;multi_head_attention_216/value/einsum/Einsum/ReadVariableOpReadVariableOpDmulti_head_attention_216_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
,multi_head_attention_216/value/einsum/EinsumEinsum+layer_normalization_432/batchnorm/add_1:z:0Cmulti_head_attention_216/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde­
1multi_head_attention_216/value/add/ReadVariableOpReadVariableOp:multi_head_attention_216_value_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
"multi_head_attention_216/value/addAddV25multi_head_attention_216/value/einsum/Einsum:output:09multi_head_attention_216/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
multi_head_attention_216/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =¯
multi_head_attention_216/MulMul&multi_head_attention_216/query/add:z:0'multi_head_attention_216/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
&multi_head_attention_216/einsum/EinsumEinsum$multi_head_attention_216/key/add:z:0 multi_head_attention_216/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe¡
+multi_head_attention_216/softmax_40/SoftmaxSoftmax/multi_head_attention_216/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
2multi_head_attention_216/dropout_535/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?å
0multi_head_attention_216/dropout_535/dropout/MulMul5multi_head_attention_216/softmax_40/Softmax:softmax:0;multi_head_attention_216/dropout_535/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2multi_head_attention_216/dropout_535/dropout/ShapeShape5multi_head_attention_216/softmax_40/Softmax:softmax:0*
T0*
_output_shapes
:Þ
Imulti_head_attention_216/dropout_535/dropout/random_uniform/RandomUniformRandomUniform;multi_head_attention_216/dropout_535/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
;multi_head_attention_216/dropout_535/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >
9multi_head_attention_216/dropout_535/dropout/GreaterEqualGreaterEqualRmulti_head_attention_216/dropout_535/dropout/random_uniform/RandomUniform:output:0Dmulti_head_attention_216/dropout_535/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
1multi_head_attention_216/dropout_535/dropout/CastCast=multi_head_attention_216/dropout_535/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
2multi_head_attention_216/dropout_535/dropout/Mul_1Mul4multi_head_attention_216/dropout_535/dropout/Mul:z:05multi_head_attention_216/dropout_535/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
(multi_head_attention_216/einsum_1/EinsumEinsum6multi_head_attention_216/dropout_535/dropout/Mul_1:z:0&multi_head_attention_216/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcdÛ
Fmulti_head_attention_216/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpOmulti_head_attention_216_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0 
7multi_head_attention_216/attention_output/einsum/EinsumEinsum1multi_head_attention_216/einsum_1/Einsum:output:0Nmulti_head_attention_216/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe¾
<multi_head_attention_216/attention_output/add/ReadVariableOpReadVariableOpEmulti_head_attention_216_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0ô
-multi_head_attention_216/attention_output/addAddV2@multi_head_attention_216/attention_output/einsum/Einsum:output:0Dmulti_head_attention_216/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_526/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?«
dropout_526/dropout/MulMul1multi_head_attention_216/attention_output/add:z:0"dropout_526/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
dropout_526/dropout/ShapeShape1multi_head_attention_216/attention_output/add:z:0*
T0*
_output_shapes
:¨
0dropout_526/dropout/random_uniform/RandomUniformRandomUniform"dropout_526/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_526/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Î
 dropout_526/dropout/GreaterEqualGreaterEqual9dropout_526/dropout/random_uniform/RandomUniform:output:0+dropout_526/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_526/dropout/CastCast$dropout_526/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_526/dropout/Mul_1Muldropout_526/dropout/Mul:z:0dropout_526/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
tf.__operators__.add_432/AddV2AddV2dropout_526/dropout/Mul_1:z:0inputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6layer_normalization_433/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ø
$layer_normalization_433/moments/meanMean"tf.__operators__.add_432/AddV2:z:0?layer_normalization_433/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¡
,layer_normalization_433/moments/StopGradientStopGradient-layer_normalization_433/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
1layer_normalization_433/moments/SquaredDifferenceSquaredDifference"tf.__operators__.add_432/AddV2:z:05layer_normalization_433/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:layer_normalization_433/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_433/moments/varianceMean5layer_normalization_433/moments/SquaredDifference:z:0Clayer_normalization_433/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(l
'layer_normalization_433/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_433/batchnorm/addAddV21layer_normalization_433/moments/variance:output:00layer_normalization_433/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_433/batchnorm/RsqrtRsqrt)layer_normalization_433/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4layer_normalization_433/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_433_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Í
%layer_normalization_433/batchnorm/mulMul+layer_normalization_433/batchnorm/Rsqrt:y:0<layer_normalization_433/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
'layer_normalization_433/batchnorm/mul_1Mul"tf.__operators__.add_432/AddV2:z:0)layer_normalization_433/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_433/batchnorm/mul_2Mul-layer_normalization_433/moments/mean:output:0)layer_normalization_433/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization_433/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_433_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0É
%layer_normalization_433/batchnorm/subSub8layer_normalization_433/batchnorm/ReadVariableOp:value:0+layer_normalization_433/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_433/batchnorm/add_1AddV2+layer_normalization_433/batchnorm/mul_1:z:0)layer_normalization_433/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 conv1d_432/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ¼
conv1d_432/Conv1D/ExpandDims
ExpandDims+layer_normalization_433/batchnorm/add_1:z:0)conv1d_432/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-conv1d_432/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_432_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_432/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_432/Conv1D/ExpandDims_1
ExpandDims5conv1d_432/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_432/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_432/Conv1DConv2D%conv1d_432/Conv1D/ExpandDims:output:0'conv1d_432/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_432/Conv1D/SqueezeSqueezeconv1d_432/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_432/BiasAdd/ReadVariableOpReadVariableOp*conv1d_432_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_432/BiasAddBiasAdd"conv1d_432/Conv1D/Squeeze:output:0)conv1d_432/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv1d_432/ReluReluconv1d_432/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_527/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout_527/dropout/MulMulconv1d_432/Relu:activations:0"dropout_527/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dropout_527/dropout/ShapeShapeconv1d_432/Relu:activations:0*
T0*
_output_shapes
:¨
0dropout_527/dropout/random_uniform/RandomUniformRandomUniform"dropout_527/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_527/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Î
 dropout_527/dropout/GreaterEqualGreaterEqual9dropout_527/dropout/random_uniform/RandomUniform:output:0+dropout_527/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_527/dropout/CastCast$dropout_527/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_527/dropout/Mul_1Muldropout_527/dropout/Mul:z:0dropout_527/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 conv1d_433/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ®
conv1d_433/Conv1D/ExpandDims
ExpandDimsdropout_527/dropout/Mul_1:z:0)conv1d_433/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-conv1d_433/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_433_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_433/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_433/Conv1D/ExpandDims_1
ExpandDims5conv1d_433/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_433/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_433/Conv1DConv2D%conv1d_433/Conv1D/ExpandDims:output:0'conv1d_433/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_433/Conv1D/SqueezeSqueezeconv1d_433/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_433/BiasAdd/ReadVariableOpReadVariableOp*conv1d_433_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_433/BiasAddBiasAdd"conv1d_433/Conv1D/Squeeze:output:0)conv1d_433/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
tf.__operators__.add_433/AddV2AddV2conv1d_433/BiasAdd:output:0"tf.__operators__.add_432/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6layer_normalization_434/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ø
$layer_normalization_434/moments/meanMean"tf.__operators__.add_433/AddV2:z:0?layer_normalization_434/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¡
,layer_normalization_434/moments/StopGradientStopGradient-layer_normalization_434/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
1layer_normalization_434/moments/SquaredDifferenceSquaredDifference"tf.__operators__.add_433/AddV2:z:05layer_normalization_434/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:layer_normalization_434/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_434/moments/varianceMean5layer_normalization_434/moments/SquaredDifference:z:0Clayer_normalization_434/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(l
'layer_normalization_434/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_434/batchnorm/addAddV21layer_normalization_434/moments/variance:output:00layer_normalization_434/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_434/batchnorm/RsqrtRsqrt)layer_normalization_434/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4layer_normalization_434/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_434_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Í
%layer_normalization_434/batchnorm/mulMul+layer_normalization_434/batchnorm/Rsqrt:y:0<layer_normalization_434/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
'layer_normalization_434/batchnorm/mul_1Mul"tf.__operators__.add_433/AddV2:z:0)layer_normalization_434/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_434/batchnorm/mul_2Mul-layer_normalization_434/moments/mean:output:0)layer_normalization_434/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization_434/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_434_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0É
%layer_normalization_434/batchnorm/subSub8layer_normalization_434/batchnorm/ReadVariableOp:value:0+layer_normalization_434/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_434/batchnorm/add_1AddV2+layer_normalization_434/batchnorm/mul_1:z:0)layer_normalization_434/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
;multi_head_attention_217/query/einsum/Einsum/ReadVariableOpReadVariableOpDmulti_head_attention_217_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
,multi_head_attention_217/query/einsum/EinsumEinsum+layer_normalization_434/batchnorm/add_1:z:0Cmulti_head_attention_217/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde­
1multi_head_attention_217/query/add/ReadVariableOpReadVariableOp:multi_head_attention_217_query_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
"multi_head_attention_217/query/addAddV25multi_head_attention_217/query/einsum/Einsum:output:09multi_head_attention_217/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
9multi_head_attention_217/key/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_217_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
*multi_head_attention_217/key/einsum/EinsumEinsum+layer_normalization_434/batchnorm/add_1:z:0Amulti_head_attention_217/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde©
/multi_head_attention_217/key/add/ReadVariableOpReadVariableOp8multi_head_attention_217_key_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ò
 multi_head_attention_217/key/addAddV23multi_head_attention_217/key/einsum/Einsum:output:07multi_head_attention_217/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
;multi_head_attention_217/value/einsum/Einsum/ReadVariableOpReadVariableOpDmulti_head_attention_217_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
,multi_head_attention_217/value/einsum/EinsumEinsum+layer_normalization_434/batchnorm/add_1:z:0Cmulti_head_attention_217/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde­
1multi_head_attention_217/value/add/ReadVariableOpReadVariableOp:multi_head_attention_217_value_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
"multi_head_attention_217/value/addAddV25multi_head_attention_217/value/einsum/Einsum:output:09multi_head_attention_217/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
multi_head_attention_217/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =¯
multi_head_attention_217/MulMul&multi_head_attention_217/query/add:z:0'multi_head_attention_217/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
&multi_head_attention_217/einsum/EinsumEinsum$multi_head_attention_217/key/add:z:0 multi_head_attention_217/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe¡
+multi_head_attention_217/softmax_41/SoftmaxSoftmax/multi_head_attention_217/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
2multi_head_attention_217/dropout_536/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?å
0multi_head_attention_217/dropout_536/dropout/MulMul5multi_head_attention_217/softmax_41/Softmax:softmax:0;multi_head_attention_217/dropout_536/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2multi_head_attention_217/dropout_536/dropout/ShapeShape5multi_head_attention_217/softmax_41/Softmax:softmax:0*
T0*
_output_shapes
:Þ
Imulti_head_attention_217/dropout_536/dropout/random_uniform/RandomUniformRandomUniform;multi_head_attention_217/dropout_536/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
;multi_head_attention_217/dropout_536/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >
9multi_head_attention_217/dropout_536/dropout/GreaterEqualGreaterEqualRmulti_head_attention_217/dropout_536/dropout/random_uniform/RandomUniform:output:0Dmulti_head_attention_217/dropout_536/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
1multi_head_attention_217/dropout_536/dropout/CastCast=multi_head_attention_217/dropout_536/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
2multi_head_attention_217/dropout_536/dropout/Mul_1Mul4multi_head_attention_217/dropout_536/dropout/Mul:z:05multi_head_attention_217/dropout_536/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
(multi_head_attention_217/einsum_1/EinsumEinsum6multi_head_attention_217/dropout_536/dropout/Mul_1:z:0&multi_head_attention_217/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcdÛ
Fmulti_head_attention_217/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpOmulti_head_attention_217_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0 
7multi_head_attention_217/attention_output/einsum/EinsumEinsum1multi_head_attention_217/einsum_1/Einsum:output:0Nmulti_head_attention_217/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe¾
<multi_head_attention_217/attention_output/add/ReadVariableOpReadVariableOpEmulti_head_attention_217_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0ô
-multi_head_attention_217/attention_output/addAddV2@multi_head_attention_217/attention_output/einsum/Einsum:output:0Dmulti_head_attention_217/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_528/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?«
dropout_528/dropout/MulMul1multi_head_attention_217/attention_output/add:z:0"dropout_528/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
dropout_528/dropout/ShapeShape1multi_head_attention_217/attention_output/add:z:0*
T0*
_output_shapes
:¨
0dropout_528/dropout/random_uniform/RandomUniformRandomUniform"dropout_528/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_528/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Î
 dropout_528/dropout/GreaterEqualGreaterEqual9dropout_528/dropout/random_uniform/RandomUniform:output:0+dropout_528/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_528/dropout/CastCast$dropout_528/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_528/dropout/Mul_1Muldropout_528/dropout/Mul:z:0dropout_528/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
tf.__operators__.add_434/AddV2AddV2dropout_528/dropout/Mul_1:z:0"tf.__operators__.add_433/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6layer_normalization_435/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ø
$layer_normalization_435/moments/meanMean"tf.__operators__.add_434/AddV2:z:0?layer_normalization_435/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¡
,layer_normalization_435/moments/StopGradientStopGradient-layer_normalization_435/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
1layer_normalization_435/moments/SquaredDifferenceSquaredDifference"tf.__operators__.add_434/AddV2:z:05layer_normalization_435/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:layer_normalization_435/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_435/moments/varianceMean5layer_normalization_435/moments/SquaredDifference:z:0Clayer_normalization_435/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(l
'layer_normalization_435/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_435/batchnorm/addAddV21layer_normalization_435/moments/variance:output:00layer_normalization_435/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_435/batchnorm/RsqrtRsqrt)layer_normalization_435/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4layer_normalization_435/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_435_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Í
%layer_normalization_435/batchnorm/mulMul+layer_normalization_435/batchnorm/Rsqrt:y:0<layer_normalization_435/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
'layer_normalization_435/batchnorm/mul_1Mul"tf.__operators__.add_434/AddV2:z:0)layer_normalization_435/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_435/batchnorm/mul_2Mul-layer_normalization_435/moments/mean:output:0)layer_normalization_435/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization_435/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_435_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0É
%layer_normalization_435/batchnorm/subSub8layer_normalization_435/batchnorm/ReadVariableOp:value:0+layer_normalization_435/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_435/batchnorm/add_1AddV2+layer_normalization_435/batchnorm/mul_1:z:0)layer_normalization_435/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 conv1d_434/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ¼
conv1d_434/Conv1D/ExpandDims
ExpandDims+layer_normalization_435/batchnorm/add_1:z:0)conv1d_434/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-conv1d_434/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_434_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_434/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_434/Conv1D/ExpandDims_1
ExpandDims5conv1d_434/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_434/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_434/Conv1DConv2D%conv1d_434/Conv1D/ExpandDims:output:0'conv1d_434/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_434/Conv1D/SqueezeSqueezeconv1d_434/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_434/BiasAdd/ReadVariableOpReadVariableOp*conv1d_434_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_434/BiasAddBiasAdd"conv1d_434/Conv1D/Squeeze:output:0)conv1d_434/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv1d_434/ReluReluconv1d_434/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_529/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout_529/dropout/MulMulconv1d_434/Relu:activations:0"dropout_529/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dropout_529/dropout/ShapeShapeconv1d_434/Relu:activations:0*
T0*
_output_shapes
:¨
0dropout_529/dropout/random_uniform/RandomUniformRandomUniform"dropout_529/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_529/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Î
 dropout_529/dropout/GreaterEqualGreaterEqual9dropout_529/dropout/random_uniform/RandomUniform:output:0+dropout_529/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_529/dropout/CastCast$dropout_529/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_529/dropout/Mul_1Muldropout_529/dropout/Mul:z:0dropout_529/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 conv1d_435/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ®
conv1d_435/Conv1D/ExpandDims
ExpandDimsdropout_529/dropout/Mul_1:z:0)conv1d_435/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-conv1d_435/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_435_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_435/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_435/Conv1D/ExpandDims_1
ExpandDims5conv1d_435/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_435/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_435/Conv1DConv2D%conv1d_435/Conv1D/ExpandDims:output:0'conv1d_435/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_435/Conv1D/SqueezeSqueezeconv1d_435/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_435/BiasAdd/ReadVariableOpReadVariableOp*conv1d_435_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_435/BiasAddBiasAdd"conv1d_435/Conv1D/Squeeze:output:0)conv1d_435/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
tf.__operators__.add_435/AddV2AddV2conv1d_435/BiasAdd:output:0"tf.__operators__.add_434/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6layer_normalization_436/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ø
$layer_normalization_436/moments/meanMean"tf.__operators__.add_435/AddV2:z:0?layer_normalization_436/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¡
,layer_normalization_436/moments/StopGradientStopGradient-layer_normalization_436/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
1layer_normalization_436/moments/SquaredDifferenceSquaredDifference"tf.__operators__.add_435/AddV2:z:05layer_normalization_436/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:layer_normalization_436/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_436/moments/varianceMean5layer_normalization_436/moments/SquaredDifference:z:0Clayer_normalization_436/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(l
'layer_normalization_436/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_436/batchnorm/addAddV21layer_normalization_436/moments/variance:output:00layer_normalization_436/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_436/batchnorm/RsqrtRsqrt)layer_normalization_436/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4layer_normalization_436/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_436_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Í
%layer_normalization_436/batchnorm/mulMul+layer_normalization_436/batchnorm/Rsqrt:y:0<layer_normalization_436/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
'layer_normalization_436/batchnorm/mul_1Mul"tf.__operators__.add_435/AddV2:z:0)layer_normalization_436/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_436/batchnorm/mul_2Mul-layer_normalization_436/moments/mean:output:0)layer_normalization_436/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization_436/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_436_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0É
%layer_normalization_436/batchnorm/subSub8layer_normalization_436/batchnorm/ReadVariableOp:value:0+layer_normalization_436/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_436/batchnorm/add_1AddV2+layer_normalization_436/batchnorm/mul_1:z:0)layer_normalization_436/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
;multi_head_attention_218/query/einsum/Einsum/ReadVariableOpReadVariableOpDmulti_head_attention_218_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
,multi_head_attention_218/query/einsum/EinsumEinsum+layer_normalization_436/batchnorm/add_1:z:0Cmulti_head_attention_218/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde­
1multi_head_attention_218/query/add/ReadVariableOpReadVariableOp:multi_head_attention_218_query_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
"multi_head_attention_218/query/addAddV25multi_head_attention_218/query/einsum/Einsum:output:09multi_head_attention_218/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
9multi_head_attention_218/key/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_218_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
*multi_head_attention_218/key/einsum/EinsumEinsum+layer_normalization_436/batchnorm/add_1:z:0Amulti_head_attention_218/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde©
/multi_head_attention_218/key/add/ReadVariableOpReadVariableOp8multi_head_attention_218_key_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ò
 multi_head_attention_218/key/addAddV23multi_head_attention_218/key/einsum/Einsum:output:07multi_head_attention_218/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
;multi_head_attention_218/value/einsum/Einsum/ReadVariableOpReadVariableOpDmulti_head_attention_218_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
,multi_head_attention_218/value/einsum/EinsumEinsum+layer_normalization_436/batchnorm/add_1:z:0Cmulti_head_attention_218/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde­
1multi_head_attention_218/value/add/ReadVariableOpReadVariableOp:multi_head_attention_218_value_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
"multi_head_attention_218/value/addAddV25multi_head_attention_218/value/einsum/Einsum:output:09multi_head_attention_218/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
multi_head_attention_218/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =¯
multi_head_attention_218/MulMul&multi_head_attention_218/query/add:z:0'multi_head_attention_218/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
&multi_head_attention_218/einsum/EinsumEinsum$multi_head_attention_218/key/add:z:0 multi_head_attention_218/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe¡
+multi_head_attention_218/softmax_42/SoftmaxSoftmax/multi_head_attention_218/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
2multi_head_attention_218/dropout_537/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?å
0multi_head_attention_218/dropout_537/dropout/MulMul5multi_head_attention_218/softmax_42/Softmax:softmax:0;multi_head_attention_218/dropout_537/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2multi_head_attention_218/dropout_537/dropout/ShapeShape5multi_head_attention_218/softmax_42/Softmax:softmax:0*
T0*
_output_shapes
:Þ
Imulti_head_attention_218/dropout_537/dropout/random_uniform/RandomUniformRandomUniform;multi_head_attention_218/dropout_537/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
;multi_head_attention_218/dropout_537/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >
9multi_head_attention_218/dropout_537/dropout/GreaterEqualGreaterEqualRmulti_head_attention_218/dropout_537/dropout/random_uniform/RandomUniform:output:0Dmulti_head_attention_218/dropout_537/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
1multi_head_attention_218/dropout_537/dropout/CastCast=multi_head_attention_218/dropout_537/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
2multi_head_attention_218/dropout_537/dropout/Mul_1Mul4multi_head_attention_218/dropout_537/dropout/Mul:z:05multi_head_attention_218/dropout_537/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
(multi_head_attention_218/einsum_1/EinsumEinsum6multi_head_attention_218/dropout_537/dropout/Mul_1:z:0&multi_head_attention_218/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcdÛ
Fmulti_head_attention_218/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpOmulti_head_attention_218_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0 
7multi_head_attention_218/attention_output/einsum/EinsumEinsum1multi_head_attention_218/einsum_1/Einsum:output:0Nmulti_head_attention_218/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe¾
<multi_head_attention_218/attention_output/add/ReadVariableOpReadVariableOpEmulti_head_attention_218_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0ô
-multi_head_attention_218/attention_output/addAddV2@multi_head_attention_218/attention_output/einsum/Einsum:output:0Dmulti_head_attention_218/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_530/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?«
dropout_530/dropout/MulMul1multi_head_attention_218/attention_output/add:z:0"dropout_530/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
dropout_530/dropout/ShapeShape1multi_head_attention_218/attention_output/add:z:0*
T0*
_output_shapes
:¨
0dropout_530/dropout/random_uniform/RandomUniformRandomUniform"dropout_530/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_530/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Î
 dropout_530/dropout/GreaterEqualGreaterEqual9dropout_530/dropout/random_uniform/RandomUniform:output:0+dropout_530/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_530/dropout/CastCast$dropout_530/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_530/dropout/Mul_1Muldropout_530/dropout/Mul:z:0dropout_530/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
tf.__operators__.add_436/AddV2AddV2dropout_530/dropout/Mul_1:z:0"tf.__operators__.add_435/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6layer_normalization_437/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ø
$layer_normalization_437/moments/meanMean"tf.__operators__.add_436/AddV2:z:0?layer_normalization_437/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¡
,layer_normalization_437/moments/StopGradientStopGradient-layer_normalization_437/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
1layer_normalization_437/moments/SquaredDifferenceSquaredDifference"tf.__operators__.add_436/AddV2:z:05layer_normalization_437/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:layer_normalization_437/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_437/moments/varianceMean5layer_normalization_437/moments/SquaredDifference:z:0Clayer_normalization_437/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(l
'layer_normalization_437/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_437/batchnorm/addAddV21layer_normalization_437/moments/variance:output:00layer_normalization_437/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_437/batchnorm/RsqrtRsqrt)layer_normalization_437/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4layer_normalization_437/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_437_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Í
%layer_normalization_437/batchnorm/mulMul+layer_normalization_437/batchnorm/Rsqrt:y:0<layer_normalization_437/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
'layer_normalization_437/batchnorm/mul_1Mul"tf.__operators__.add_436/AddV2:z:0)layer_normalization_437/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_437/batchnorm/mul_2Mul-layer_normalization_437/moments/mean:output:0)layer_normalization_437/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization_437/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_437_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0É
%layer_normalization_437/batchnorm/subSub8layer_normalization_437/batchnorm/ReadVariableOp:value:0+layer_normalization_437/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_437/batchnorm/add_1AddV2+layer_normalization_437/batchnorm/mul_1:z:0)layer_normalization_437/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 conv1d_436/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ¼
conv1d_436/Conv1D/ExpandDims
ExpandDims+layer_normalization_437/batchnorm/add_1:z:0)conv1d_436/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-conv1d_436/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_436_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_436/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_436/Conv1D/ExpandDims_1
ExpandDims5conv1d_436/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_436/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_436/Conv1DConv2D%conv1d_436/Conv1D/ExpandDims:output:0'conv1d_436/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_436/Conv1D/SqueezeSqueezeconv1d_436/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_436/BiasAdd/ReadVariableOpReadVariableOp*conv1d_436_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_436/BiasAddBiasAdd"conv1d_436/Conv1D/Squeeze:output:0)conv1d_436/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv1d_436/ReluReluconv1d_436/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_531/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout_531/dropout/MulMulconv1d_436/Relu:activations:0"dropout_531/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dropout_531/dropout/ShapeShapeconv1d_436/Relu:activations:0*
T0*
_output_shapes
:¨
0dropout_531/dropout/random_uniform/RandomUniformRandomUniform"dropout_531/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_531/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Î
 dropout_531/dropout/GreaterEqualGreaterEqual9dropout_531/dropout/random_uniform/RandomUniform:output:0+dropout_531/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_531/dropout/CastCast$dropout_531/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_531/dropout/Mul_1Muldropout_531/dropout/Mul:z:0dropout_531/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 conv1d_437/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ®
conv1d_437/Conv1D/ExpandDims
ExpandDimsdropout_531/dropout/Mul_1:z:0)conv1d_437/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-conv1d_437/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_437_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_437/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_437/Conv1D/ExpandDims_1
ExpandDims5conv1d_437/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_437/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_437/Conv1DConv2D%conv1d_437/Conv1D/ExpandDims:output:0'conv1d_437/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_437/Conv1D/SqueezeSqueezeconv1d_437/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_437/BiasAdd/ReadVariableOpReadVariableOp*conv1d_437_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_437/BiasAddBiasAdd"conv1d_437/Conv1D/Squeeze:output:0)conv1d_437/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
tf.__operators__.add_437/AddV2AddV2conv1d_437/BiasAdd:output:0"tf.__operators__.add_436/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6layer_normalization_438/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ø
$layer_normalization_438/moments/meanMean"tf.__operators__.add_437/AddV2:z:0?layer_normalization_438/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¡
,layer_normalization_438/moments/StopGradientStopGradient-layer_normalization_438/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
1layer_normalization_438/moments/SquaredDifferenceSquaredDifference"tf.__operators__.add_437/AddV2:z:05layer_normalization_438/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:layer_normalization_438/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_438/moments/varianceMean5layer_normalization_438/moments/SquaredDifference:z:0Clayer_normalization_438/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(l
'layer_normalization_438/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_438/batchnorm/addAddV21layer_normalization_438/moments/variance:output:00layer_normalization_438/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_438/batchnorm/RsqrtRsqrt)layer_normalization_438/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4layer_normalization_438/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_438_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Í
%layer_normalization_438/batchnorm/mulMul+layer_normalization_438/batchnorm/Rsqrt:y:0<layer_normalization_438/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
'layer_normalization_438/batchnorm/mul_1Mul"tf.__operators__.add_437/AddV2:z:0)layer_normalization_438/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_438/batchnorm/mul_2Mul-layer_normalization_438/moments/mean:output:0)layer_normalization_438/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization_438/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_438_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0É
%layer_normalization_438/batchnorm/subSub8layer_normalization_438/batchnorm/ReadVariableOp:value:0+layer_normalization_438/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_438/batchnorm/add_1AddV2+layer_normalization_438/batchnorm/mul_1:z:0)layer_normalization_438/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
;multi_head_attention_219/query/einsum/Einsum/ReadVariableOpReadVariableOpDmulti_head_attention_219_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
,multi_head_attention_219/query/einsum/EinsumEinsum+layer_normalization_438/batchnorm/add_1:z:0Cmulti_head_attention_219/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde­
1multi_head_attention_219/query/add/ReadVariableOpReadVariableOp:multi_head_attention_219_query_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
"multi_head_attention_219/query/addAddV25multi_head_attention_219/query/einsum/Einsum:output:09multi_head_attention_219/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
9multi_head_attention_219/key/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_219_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
*multi_head_attention_219/key/einsum/EinsumEinsum+layer_normalization_438/batchnorm/add_1:z:0Amulti_head_attention_219/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde©
/multi_head_attention_219/key/add/ReadVariableOpReadVariableOp8multi_head_attention_219_key_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ò
 multi_head_attention_219/key/addAddV23multi_head_attention_219/key/einsum/Einsum:output:07multi_head_attention_219/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
;multi_head_attention_219/value/einsum/Einsum/ReadVariableOpReadVariableOpDmulti_head_attention_219_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
,multi_head_attention_219/value/einsum/EinsumEinsum+layer_normalization_438/batchnorm/add_1:z:0Cmulti_head_attention_219/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde­
1multi_head_attention_219/value/add/ReadVariableOpReadVariableOp:multi_head_attention_219_value_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
"multi_head_attention_219/value/addAddV25multi_head_attention_219/value/einsum/Einsum:output:09multi_head_attention_219/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
multi_head_attention_219/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =¯
multi_head_attention_219/MulMul&multi_head_attention_219/query/add:z:0'multi_head_attention_219/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
&multi_head_attention_219/einsum/EinsumEinsum$multi_head_attention_219/key/add:z:0 multi_head_attention_219/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe¡
+multi_head_attention_219/softmax_43/SoftmaxSoftmax/multi_head_attention_219/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
2multi_head_attention_219/dropout_538/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?å
0multi_head_attention_219/dropout_538/dropout/MulMul5multi_head_attention_219/softmax_43/Softmax:softmax:0;multi_head_attention_219/dropout_538/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2multi_head_attention_219/dropout_538/dropout/ShapeShape5multi_head_attention_219/softmax_43/Softmax:softmax:0*
T0*
_output_shapes
:Þ
Imulti_head_attention_219/dropout_538/dropout/random_uniform/RandomUniformRandomUniform;multi_head_attention_219/dropout_538/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0
;multi_head_attention_219/dropout_538/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >
9multi_head_attention_219/dropout_538/dropout/GreaterEqualGreaterEqualRmulti_head_attention_219/dropout_538/dropout/random_uniform/RandomUniform:output:0Dmulti_head_attention_219/dropout_538/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
1multi_head_attention_219/dropout_538/dropout/CastCast=multi_head_attention_219/dropout_538/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
2multi_head_attention_219/dropout_538/dropout/Mul_1Mul4multi_head_attention_219/dropout_538/dropout/Mul:z:05multi_head_attention_219/dropout_538/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
(multi_head_attention_219/einsum_1/EinsumEinsum6multi_head_attention_219/dropout_538/dropout/Mul_1:z:0&multi_head_attention_219/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcdÛ
Fmulti_head_attention_219/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpOmulti_head_attention_219_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0 
7multi_head_attention_219/attention_output/einsum/EinsumEinsum1multi_head_attention_219/einsum_1/Einsum:output:0Nmulti_head_attention_219/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe¾
<multi_head_attention_219/attention_output/add/ReadVariableOpReadVariableOpEmulti_head_attention_219_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0ô
-multi_head_attention_219/attention_output/addAddV2@multi_head_attention_219/attention_output/einsum/Einsum:output:0Dmulti_head_attention_219/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_532/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?«
dropout_532/dropout/MulMul1multi_head_attention_219/attention_output/add:z:0"dropout_532/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
dropout_532/dropout/ShapeShape1multi_head_attention_219/attention_output/add:z:0*
T0*
_output_shapes
:¨
0dropout_532/dropout/random_uniform/RandomUniformRandomUniform"dropout_532/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_532/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Î
 dropout_532/dropout/GreaterEqualGreaterEqual9dropout_532/dropout/random_uniform/RandomUniform:output:0+dropout_532/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_532/dropout/CastCast$dropout_532/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_532/dropout/Mul_1Muldropout_532/dropout/Mul:z:0dropout_532/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
tf.__operators__.add_438/AddV2AddV2dropout_532/dropout/Mul_1:z:0"tf.__operators__.add_437/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6layer_normalization_439/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ø
$layer_normalization_439/moments/meanMean"tf.__operators__.add_438/AddV2:z:0?layer_normalization_439/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¡
,layer_normalization_439/moments/StopGradientStopGradient-layer_normalization_439/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
1layer_normalization_439/moments/SquaredDifferenceSquaredDifference"tf.__operators__.add_438/AddV2:z:05layer_normalization_439/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:layer_normalization_439/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_439/moments/varianceMean5layer_normalization_439/moments/SquaredDifference:z:0Clayer_normalization_439/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(l
'layer_normalization_439/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_439/batchnorm/addAddV21layer_normalization_439/moments/variance:output:00layer_normalization_439/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_439/batchnorm/RsqrtRsqrt)layer_normalization_439/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4layer_normalization_439/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_439_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Í
%layer_normalization_439/batchnorm/mulMul+layer_normalization_439/batchnorm/Rsqrt:y:0<layer_normalization_439/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
'layer_normalization_439/batchnorm/mul_1Mul"tf.__operators__.add_438/AddV2:z:0)layer_normalization_439/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_439/batchnorm/mul_2Mul-layer_normalization_439/moments/mean:output:0)layer_normalization_439/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization_439/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_439_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0É
%layer_normalization_439/batchnorm/subSub8layer_normalization_439/batchnorm/ReadVariableOp:value:0+layer_normalization_439/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_439/batchnorm/add_1AddV2+layer_normalization_439/batchnorm/mul_1:z:0)layer_normalization_439/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 conv1d_438/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ¼
conv1d_438/Conv1D/ExpandDims
ExpandDims+layer_normalization_439/batchnorm/add_1:z:0)conv1d_438/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-conv1d_438/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_438_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_438/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_438/Conv1D/ExpandDims_1
ExpandDims5conv1d_438/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_438/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_438/Conv1DConv2D%conv1d_438/Conv1D/ExpandDims:output:0'conv1d_438/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_438/Conv1D/SqueezeSqueezeconv1d_438/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_438/BiasAdd/ReadVariableOpReadVariableOp*conv1d_438_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_438/BiasAddBiasAdd"conv1d_438/Conv1D/Squeeze:output:0)conv1d_438/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv1d_438/ReluReluconv1d_438/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_533/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout_533/dropout/MulMulconv1d_438/Relu:activations:0"dropout_533/dropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dropout_533/dropout/ShapeShapeconv1d_438/Relu:activations:0*
T0*
_output_shapes
:¨
0dropout_533/dropout/random_uniform/RandomUniformRandomUniform"dropout_533/dropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_533/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Î
 dropout_533/dropout/GreaterEqualGreaterEqual9dropout_533/dropout/random_uniform/RandomUniform:output:0+dropout_533/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_533/dropout/CastCast$dropout_533/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_533/dropout/Mul_1Muldropout_533/dropout/Mul:z:0dropout_533/dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 conv1d_439/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ®
conv1d_439/Conv1D/ExpandDims
ExpandDimsdropout_533/dropout/Mul_1:z:0)conv1d_439/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-conv1d_439/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_439_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_439/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_439/Conv1D/ExpandDims_1
ExpandDims5conv1d_439/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_439/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_439/Conv1DConv2D%conv1d_439/Conv1D/ExpandDims:output:0'conv1d_439/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_439/Conv1D/SqueezeSqueezeconv1d_439/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_439/BiasAdd/ReadVariableOpReadVariableOp*conv1d_439_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_439/BiasAddBiasAdd"conv1d_439/Conv1D/Squeeze:output:0)conv1d_439/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
tf.__operators__.add_439/AddV2AddV2conv1d_439/BiasAdd:output:0"tf.__operators__.add_438/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
2global_average_pooling1d_54/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :»
 global_average_pooling1d_54/MeanMean"tf.__operators__.add_439/AddV2:z:0;global_average_pooling1d_54/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_108/MatMul/ReadVariableOpReadVariableOp(dense_108_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0¡
dense_108/MatMulMatMul)global_average_pooling1d_54/Mean:output:0'dense_108/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_108/BiasAdd/ReadVariableOpReadVariableOp)dense_108_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_108/BiasAddBiasAdddense_108/MatMul:product:0(dense_108/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dense_108/ReluReludense_108/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_534/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
dropout_534/dropout/MulMuldense_108/Relu:activations:0"dropout_534/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dropout_534/dropout/ShapeShapedense_108/Relu:activations:0*
T0*
_output_shapes
:¥
0dropout_534/dropout/random_uniform/RandomUniformRandomUniform"dropout_534/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_534/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ë
 dropout_534/dropout/GreaterEqualGreaterEqual9dropout_534/dropout/random_uniform/RandomUniform:output:0+dropout_534/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_534/dropout/CastCast$dropout_534/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_534/dropout/Mul_1Muldropout_534/dropout/Mul:z:0dropout_534/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_109/MatMul/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_109/MatMulMatMuldropout_534/dropout/Mul_1:z:0'dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_109/BiasAdd/ReadVariableOpReadVariableOp)dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_109/BiasAddBiasAdddense_109/MatMul:product:0(dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_109/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
NoOpNoOp"^conv1d_432/BiasAdd/ReadVariableOp.^conv1d_432/Conv1D/ExpandDims_1/ReadVariableOp"^conv1d_433/BiasAdd/ReadVariableOp.^conv1d_433/Conv1D/ExpandDims_1/ReadVariableOp"^conv1d_434/BiasAdd/ReadVariableOp.^conv1d_434/Conv1D/ExpandDims_1/ReadVariableOp"^conv1d_435/BiasAdd/ReadVariableOp.^conv1d_435/Conv1D/ExpandDims_1/ReadVariableOp"^conv1d_436/BiasAdd/ReadVariableOp.^conv1d_436/Conv1D/ExpandDims_1/ReadVariableOp"^conv1d_437/BiasAdd/ReadVariableOp.^conv1d_437/Conv1D/ExpandDims_1/ReadVariableOp"^conv1d_438/BiasAdd/ReadVariableOp.^conv1d_438/Conv1D/ExpandDims_1/ReadVariableOp"^conv1d_439/BiasAdd/ReadVariableOp.^conv1d_439/Conv1D/ExpandDims_1/ReadVariableOp!^dense_108/BiasAdd/ReadVariableOp ^dense_108/MatMul/ReadVariableOp!^dense_109/BiasAdd/ReadVariableOp ^dense_109/MatMul/ReadVariableOp1^layer_normalization_432/batchnorm/ReadVariableOp5^layer_normalization_432/batchnorm/mul/ReadVariableOp1^layer_normalization_433/batchnorm/ReadVariableOp5^layer_normalization_433/batchnorm/mul/ReadVariableOp1^layer_normalization_434/batchnorm/ReadVariableOp5^layer_normalization_434/batchnorm/mul/ReadVariableOp1^layer_normalization_435/batchnorm/ReadVariableOp5^layer_normalization_435/batchnorm/mul/ReadVariableOp1^layer_normalization_436/batchnorm/ReadVariableOp5^layer_normalization_436/batchnorm/mul/ReadVariableOp1^layer_normalization_437/batchnorm/ReadVariableOp5^layer_normalization_437/batchnorm/mul/ReadVariableOp1^layer_normalization_438/batchnorm/ReadVariableOp5^layer_normalization_438/batchnorm/mul/ReadVariableOp1^layer_normalization_439/batchnorm/ReadVariableOp5^layer_normalization_439/batchnorm/mul/ReadVariableOp=^multi_head_attention_216/attention_output/add/ReadVariableOpG^multi_head_attention_216/attention_output/einsum/Einsum/ReadVariableOp0^multi_head_attention_216/key/add/ReadVariableOp:^multi_head_attention_216/key/einsum/Einsum/ReadVariableOp2^multi_head_attention_216/query/add/ReadVariableOp<^multi_head_attention_216/query/einsum/Einsum/ReadVariableOp2^multi_head_attention_216/value/add/ReadVariableOp<^multi_head_attention_216/value/einsum/Einsum/ReadVariableOp=^multi_head_attention_217/attention_output/add/ReadVariableOpG^multi_head_attention_217/attention_output/einsum/Einsum/ReadVariableOp0^multi_head_attention_217/key/add/ReadVariableOp:^multi_head_attention_217/key/einsum/Einsum/ReadVariableOp2^multi_head_attention_217/query/add/ReadVariableOp<^multi_head_attention_217/query/einsum/Einsum/ReadVariableOp2^multi_head_attention_217/value/add/ReadVariableOp<^multi_head_attention_217/value/einsum/Einsum/ReadVariableOp=^multi_head_attention_218/attention_output/add/ReadVariableOpG^multi_head_attention_218/attention_output/einsum/Einsum/ReadVariableOp0^multi_head_attention_218/key/add/ReadVariableOp:^multi_head_attention_218/key/einsum/Einsum/ReadVariableOp2^multi_head_attention_218/query/add/ReadVariableOp<^multi_head_attention_218/query/einsum/Einsum/ReadVariableOp2^multi_head_attention_218/value/add/ReadVariableOp<^multi_head_attention_218/value/einsum/Einsum/ReadVariableOp=^multi_head_attention_219/attention_output/add/ReadVariableOpG^multi_head_attention_219/attention_output/einsum/Einsum/ReadVariableOp0^multi_head_attention_219/key/add/ReadVariableOp:^multi_head_attention_219/key/einsum/Einsum/ReadVariableOp2^multi_head_attention_219/query/add/ReadVariableOp<^multi_head_attention_219/query/einsum/Einsum/ReadVariableOp2^multi_head_attention_219/value/add/ReadVariableOp<^multi_head_attention_219/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes¢
:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv1d_432/BiasAdd/ReadVariableOp!conv1d_432/BiasAdd/ReadVariableOp2^
-conv1d_432/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_432/Conv1D/ExpandDims_1/ReadVariableOp2F
!conv1d_433/BiasAdd/ReadVariableOp!conv1d_433/BiasAdd/ReadVariableOp2^
-conv1d_433/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_433/Conv1D/ExpandDims_1/ReadVariableOp2F
!conv1d_434/BiasAdd/ReadVariableOp!conv1d_434/BiasAdd/ReadVariableOp2^
-conv1d_434/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_434/Conv1D/ExpandDims_1/ReadVariableOp2F
!conv1d_435/BiasAdd/ReadVariableOp!conv1d_435/BiasAdd/ReadVariableOp2^
-conv1d_435/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_435/Conv1D/ExpandDims_1/ReadVariableOp2F
!conv1d_436/BiasAdd/ReadVariableOp!conv1d_436/BiasAdd/ReadVariableOp2^
-conv1d_436/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_436/Conv1D/ExpandDims_1/ReadVariableOp2F
!conv1d_437/BiasAdd/ReadVariableOp!conv1d_437/BiasAdd/ReadVariableOp2^
-conv1d_437/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_437/Conv1D/ExpandDims_1/ReadVariableOp2F
!conv1d_438/BiasAdd/ReadVariableOp!conv1d_438/BiasAdd/ReadVariableOp2^
-conv1d_438/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_438/Conv1D/ExpandDims_1/ReadVariableOp2F
!conv1d_439/BiasAdd/ReadVariableOp!conv1d_439/BiasAdd/ReadVariableOp2^
-conv1d_439/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_439/Conv1D/ExpandDims_1/ReadVariableOp2D
 dense_108/BiasAdd/ReadVariableOp dense_108/BiasAdd/ReadVariableOp2B
dense_108/MatMul/ReadVariableOpdense_108/MatMul/ReadVariableOp2D
 dense_109/BiasAdd/ReadVariableOp dense_109/BiasAdd/ReadVariableOp2B
dense_109/MatMul/ReadVariableOpdense_109/MatMul/ReadVariableOp2d
0layer_normalization_432/batchnorm/ReadVariableOp0layer_normalization_432/batchnorm/ReadVariableOp2l
4layer_normalization_432/batchnorm/mul/ReadVariableOp4layer_normalization_432/batchnorm/mul/ReadVariableOp2d
0layer_normalization_433/batchnorm/ReadVariableOp0layer_normalization_433/batchnorm/ReadVariableOp2l
4layer_normalization_433/batchnorm/mul/ReadVariableOp4layer_normalization_433/batchnorm/mul/ReadVariableOp2d
0layer_normalization_434/batchnorm/ReadVariableOp0layer_normalization_434/batchnorm/ReadVariableOp2l
4layer_normalization_434/batchnorm/mul/ReadVariableOp4layer_normalization_434/batchnorm/mul/ReadVariableOp2d
0layer_normalization_435/batchnorm/ReadVariableOp0layer_normalization_435/batchnorm/ReadVariableOp2l
4layer_normalization_435/batchnorm/mul/ReadVariableOp4layer_normalization_435/batchnorm/mul/ReadVariableOp2d
0layer_normalization_436/batchnorm/ReadVariableOp0layer_normalization_436/batchnorm/ReadVariableOp2l
4layer_normalization_436/batchnorm/mul/ReadVariableOp4layer_normalization_436/batchnorm/mul/ReadVariableOp2d
0layer_normalization_437/batchnorm/ReadVariableOp0layer_normalization_437/batchnorm/ReadVariableOp2l
4layer_normalization_437/batchnorm/mul/ReadVariableOp4layer_normalization_437/batchnorm/mul/ReadVariableOp2d
0layer_normalization_438/batchnorm/ReadVariableOp0layer_normalization_438/batchnorm/ReadVariableOp2l
4layer_normalization_438/batchnorm/mul/ReadVariableOp4layer_normalization_438/batchnorm/mul/ReadVariableOp2d
0layer_normalization_439/batchnorm/ReadVariableOp0layer_normalization_439/batchnorm/ReadVariableOp2l
4layer_normalization_439/batchnorm/mul/ReadVariableOp4layer_normalization_439/batchnorm/mul/ReadVariableOp2|
<multi_head_attention_216/attention_output/add/ReadVariableOp<multi_head_attention_216/attention_output/add/ReadVariableOp2
Fmulti_head_attention_216/attention_output/einsum/Einsum/ReadVariableOpFmulti_head_attention_216/attention_output/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_216/key/add/ReadVariableOp/multi_head_attention_216/key/add/ReadVariableOp2v
9multi_head_attention_216/key/einsum/Einsum/ReadVariableOp9multi_head_attention_216/key/einsum/Einsum/ReadVariableOp2f
1multi_head_attention_216/query/add/ReadVariableOp1multi_head_attention_216/query/add/ReadVariableOp2z
;multi_head_attention_216/query/einsum/Einsum/ReadVariableOp;multi_head_attention_216/query/einsum/Einsum/ReadVariableOp2f
1multi_head_attention_216/value/add/ReadVariableOp1multi_head_attention_216/value/add/ReadVariableOp2z
;multi_head_attention_216/value/einsum/Einsum/ReadVariableOp;multi_head_attention_216/value/einsum/Einsum/ReadVariableOp2|
<multi_head_attention_217/attention_output/add/ReadVariableOp<multi_head_attention_217/attention_output/add/ReadVariableOp2
Fmulti_head_attention_217/attention_output/einsum/Einsum/ReadVariableOpFmulti_head_attention_217/attention_output/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_217/key/add/ReadVariableOp/multi_head_attention_217/key/add/ReadVariableOp2v
9multi_head_attention_217/key/einsum/Einsum/ReadVariableOp9multi_head_attention_217/key/einsum/Einsum/ReadVariableOp2f
1multi_head_attention_217/query/add/ReadVariableOp1multi_head_attention_217/query/add/ReadVariableOp2z
;multi_head_attention_217/query/einsum/Einsum/ReadVariableOp;multi_head_attention_217/query/einsum/Einsum/ReadVariableOp2f
1multi_head_attention_217/value/add/ReadVariableOp1multi_head_attention_217/value/add/ReadVariableOp2z
;multi_head_attention_217/value/einsum/Einsum/ReadVariableOp;multi_head_attention_217/value/einsum/Einsum/ReadVariableOp2|
<multi_head_attention_218/attention_output/add/ReadVariableOp<multi_head_attention_218/attention_output/add/ReadVariableOp2
Fmulti_head_attention_218/attention_output/einsum/Einsum/ReadVariableOpFmulti_head_attention_218/attention_output/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_218/key/add/ReadVariableOp/multi_head_attention_218/key/add/ReadVariableOp2v
9multi_head_attention_218/key/einsum/Einsum/ReadVariableOp9multi_head_attention_218/key/einsum/Einsum/ReadVariableOp2f
1multi_head_attention_218/query/add/ReadVariableOp1multi_head_attention_218/query/add/ReadVariableOp2z
;multi_head_attention_218/query/einsum/Einsum/ReadVariableOp;multi_head_attention_218/query/einsum/Einsum/ReadVariableOp2f
1multi_head_attention_218/value/add/ReadVariableOp1multi_head_attention_218/value/add/ReadVariableOp2z
;multi_head_attention_218/value/einsum/Einsum/ReadVariableOp;multi_head_attention_218/value/einsum/Einsum/ReadVariableOp2|
<multi_head_attention_219/attention_output/add/ReadVariableOp<multi_head_attention_219/attention_output/add/ReadVariableOp2
Fmulti_head_attention_219/attention_output/einsum/Einsum/ReadVariableOpFmulti_head_attention_219/attention_output/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_219/key/add/ReadVariableOp/multi_head_attention_219/key/add/ReadVariableOp2v
9multi_head_attention_219/key/einsum/Einsum/ReadVariableOp9multi_head_attention_219/key/einsum/Einsum/ReadVariableOp2f
1multi_head_attention_219/query/add/ReadVariableOp1multi_head_attention_219/query/add/ReadVariableOp2z
;multi_head_attention_219/query/einsum/Einsum/ReadVariableOp;multi_head_attention_219/query/einsum/Einsum/ReadVariableOp2f
1multi_head_attention_219/value/add/ReadVariableOp1multi_head_attention_219/value/add/ReadVariableOp2z
;multi_head_attention_219/value/einsum/Einsum/ReadVariableOp;multi_head_attention_219/value/einsum/Einsum/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß

,__inference_conv1d_437_layer_call_fn_1688832

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_437_layer_call_and_return_conditional_losses_1684635s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
f
H__inference_dropout_529_layer_call_and_return_conditional_losses_1684450

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


g
H__inference_dropout_531_layer_call_and_return_conditional_losses_1685237

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


g
H__inference_dropout_530_layer_call_and_return_conditional_losses_1685280

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ
F
E__inference_model_54_layer_call_and_return_conditional_losses_1687506

inputsK
=layer_normalization_432_batchnorm_mul_readvariableop_resource:G
9layer_normalization_432_batchnorm_readvariableop_resource:[
Dmulti_head_attention_216_query_einsum_einsum_readvariableop_resource:M
:multi_head_attention_216_query_add_readvariableop_resource:	Y
Bmulti_head_attention_216_key_einsum_einsum_readvariableop_resource:K
8multi_head_attention_216_key_add_readvariableop_resource:	[
Dmulti_head_attention_216_value_einsum_einsum_readvariableop_resource:M
:multi_head_attention_216_value_add_readvariableop_resource:	f
Omulti_head_attention_216_attention_output_einsum_einsum_readvariableop_resource:S
Emulti_head_attention_216_attention_output_add_readvariableop_resource:K
=layer_normalization_433_batchnorm_mul_readvariableop_resource:G
9layer_normalization_433_batchnorm_readvariableop_resource:L
6conv1d_432_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_432_biasadd_readvariableop_resource:L
6conv1d_433_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_433_biasadd_readvariableop_resource:K
=layer_normalization_434_batchnorm_mul_readvariableop_resource:G
9layer_normalization_434_batchnorm_readvariableop_resource:[
Dmulti_head_attention_217_query_einsum_einsum_readvariableop_resource:M
:multi_head_attention_217_query_add_readvariableop_resource:	Y
Bmulti_head_attention_217_key_einsum_einsum_readvariableop_resource:K
8multi_head_attention_217_key_add_readvariableop_resource:	[
Dmulti_head_attention_217_value_einsum_einsum_readvariableop_resource:M
:multi_head_attention_217_value_add_readvariableop_resource:	f
Omulti_head_attention_217_attention_output_einsum_einsum_readvariableop_resource:S
Emulti_head_attention_217_attention_output_add_readvariableop_resource:K
=layer_normalization_435_batchnorm_mul_readvariableop_resource:G
9layer_normalization_435_batchnorm_readvariableop_resource:L
6conv1d_434_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_434_biasadd_readvariableop_resource:L
6conv1d_435_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_435_biasadd_readvariableop_resource:K
=layer_normalization_436_batchnorm_mul_readvariableop_resource:G
9layer_normalization_436_batchnorm_readvariableop_resource:[
Dmulti_head_attention_218_query_einsum_einsum_readvariableop_resource:M
:multi_head_attention_218_query_add_readvariableop_resource:	Y
Bmulti_head_attention_218_key_einsum_einsum_readvariableop_resource:K
8multi_head_attention_218_key_add_readvariableop_resource:	[
Dmulti_head_attention_218_value_einsum_einsum_readvariableop_resource:M
:multi_head_attention_218_value_add_readvariableop_resource:	f
Omulti_head_attention_218_attention_output_einsum_einsum_readvariableop_resource:S
Emulti_head_attention_218_attention_output_add_readvariableop_resource:K
=layer_normalization_437_batchnorm_mul_readvariableop_resource:G
9layer_normalization_437_batchnorm_readvariableop_resource:L
6conv1d_436_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_436_biasadd_readvariableop_resource:L
6conv1d_437_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_437_biasadd_readvariableop_resource:K
=layer_normalization_438_batchnorm_mul_readvariableop_resource:G
9layer_normalization_438_batchnorm_readvariableop_resource:[
Dmulti_head_attention_219_query_einsum_einsum_readvariableop_resource:M
:multi_head_attention_219_query_add_readvariableop_resource:	Y
Bmulti_head_attention_219_key_einsum_einsum_readvariableop_resource:K
8multi_head_attention_219_key_add_readvariableop_resource:	[
Dmulti_head_attention_219_value_einsum_einsum_readvariableop_resource:M
:multi_head_attention_219_value_add_readvariableop_resource:	f
Omulti_head_attention_219_attention_output_einsum_einsum_readvariableop_resource:S
Emulti_head_attention_219_attention_output_add_readvariableop_resource:K
=layer_normalization_439_batchnorm_mul_readvariableop_resource:G
9layer_normalization_439_batchnorm_readvariableop_resource:L
6conv1d_438_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_438_biasadd_readvariableop_resource:L
6conv1d_439_conv1d_expanddims_1_readvariableop_resource:8
*conv1d_439_biasadd_readvariableop_resource:;
(dense_108_matmul_readvariableop_resource:	8
)dense_108_biasadd_readvariableop_resource:	;
(dense_109_matmul_readvariableop_resource:	7
)dense_109_biasadd_readvariableop_resource:
identity¢!conv1d_432/BiasAdd/ReadVariableOp¢-conv1d_432/Conv1D/ExpandDims_1/ReadVariableOp¢!conv1d_433/BiasAdd/ReadVariableOp¢-conv1d_433/Conv1D/ExpandDims_1/ReadVariableOp¢!conv1d_434/BiasAdd/ReadVariableOp¢-conv1d_434/Conv1D/ExpandDims_1/ReadVariableOp¢!conv1d_435/BiasAdd/ReadVariableOp¢-conv1d_435/Conv1D/ExpandDims_1/ReadVariableOp¢!conv1d_436/BiasAdd/ReadVariableOp¢-conv1d_436/Conv1D/ExpandDims_1/ReadVariableOp¢!conv1d_437/BiasAdd/ReadVariableOp¢-conv1d_437/Conv1D/ExpandDims_1/ReadVariableOp¢!conv1d_438/BiasAdd/ReadVariableOp¢-conv1d_438/Conv1D/ExpandDims_1/ReadVariableOp¢!conv1d_439/BiasAdd/ReadVariableOp¢-conv1d_439/Conv1D/ExpandDims_1/ReadVariableOp¢ dense_108/BiasAdd/ReadVariableOp¢dense_108/MatMul/ReadVariableOp¢ dense_109/BiasAdd/ReadVariableOp¢dense_109/MatMul/ReadVariableOp¢0layer_normalization_432/batchnorm/ReadVariableOp¢4layer_normalization_432/batchnorm/mul/ReadVariableOp¢0layer_normalization_433/batchnorm/ReadVariableOp¢4layer_normalization_433/batchnorm/mul/ReadVariableOp¢0layer_normalization_434/batchnorm/ReadVariableOp¢4layer_normalization_434/batchnorm/mul/ReadVariableOp¢0layer_normalization_435/batchnorm/ReadVariableOp¢4layer_normalization_435/batchnorm/mul/ReadVariableOp¢0layer_normalization_436/batchnorm/ReadVariableOp¢4layer_normalization_436/batchnorm/mul/ReadVariableOp¢0layer_normalization_437/batchnorm/ReadVariableOp¢4layer_normalization_437/batchnorm/mul/ReadVariableOp¢0layer_normalization_438/batchnorm/ReadVariableOp¢4layer_normalization_438/batchnorm/mul/ReadVariableOp¢0layer_normalization_439/batchnorm/ReadVariableOp¢4layer_normalization_439/batchnorm/mul/ReadVariableOp¢<multi_head_attention_216/attention_output/add/ReadVariableOp¢Fmulti_head_attention_216/attention_output/einsum/Einsum/ReadVariableOp¢/multi_head_attention_216/key/add/ReadVariableOp¢9multi_head_attention_216/key/einsum/Einsum/ReadVariableOp¢1multi_head_attention_216/query/add/ReadVariableOp¢;multi_head_attention_216/query/einsum/Einsum/ReadVariableOp¢1multi_head_attention_216/value/add/ReadVariableOp¢;multi_head_attention_216/value/einsum/Einsum/ReadVariableOp¢<multi_head_attention_217/attention_output/add/ReadVariableOp¢Fmulti_head_attention_217/attention_output/einsum/Einsum/ReadVariableOp¢/multi_head_attention_217/key/add/ReadVariableOp¢9multi_head_attention_217/key/einsum/Einsum/ReadVariableOp¢1multi_head_attention_217/query/add/ReadVariableOp¢;multi_head_attention_217/query/einsum/Einsum/ReadVariableOp¢1multi_head_attention_217/value/add/ReadVariableOp¢;multi_head_attention_217/value/einsum/Einsum/ReadVariableOp¢<multi_head_attention_218/attention_output/add/ReadVariableOp¢Fmulti_head_attention_218/attention_output/einsum/Einsum/ReadVariableOp¢/multi_head_attention_218/key/add/ReadVariableOp¢9multi_head_attention_218/key/einsum/Einsum/ReadVariableOp¢1multi_head_attention_218/query/add/ReadVariableOp¢;multi_head_attention_218/query/einsum/Einsum/ReadVariableOp¢1multi_head_attention_218/value/add/ReadVariableOp¢;multi_head_attention_218/value/einsum/Einsum/ReadVariableOp¢<multi_head_attention_219/attention_output/add/ReadVariableOp¢Fmulti_head_attention_219/attention_output/einsum/Einsum/ReadVariableOp¢/multi_head_attention_219/key/add/ReadVariableOp¢9multi_head_attention_219/key/einsum/Einsum/ReadVariableOp¢1multi_head_attention_219/query/add/ReadVariableOp¢;multi_head_attention_219/query/einsum/Einsum/ReadVariableOp¢1multi_head_attention_219/value/add/ReadVariableOp¢;multi_head_attention_219/value/einsum/Einsum/ReadVariableOp
6layer_normalization_432/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¼
$layer_normalization_432/moments/meanMeaninputs?layer_normalization_432/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¡
,layer_normalization_432/moments/StopGradientStopGradient-layer_normalization_432/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
1layer_normalization_432/moments/SquaredDifferenceSquaredDifferenceinputs5layer_normalization_432/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:layer_normalization_432/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_432/moments/varianceMean5layer_normalization_432/moments/SquaredDifference:z:0Clayer_normalization_432/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(l
'layer_normalization_432/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_432/batchnorm/addAddV21layer_normalization_432/moments/variance:output:00layer_normalization_432/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_432/batchnorm/RsqrtRsqrt)layer_normalization_432/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4layer_normalization_432/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_432_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Í
%layer_normalization_432/batchnorm/mulMul+layer_normalization_432/batchnorm/Rsqrt:y:0<layer_normalization_432/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_432/batchnorm/mul_1Mulinputs)layer_normalization_432/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_432/batchnorm/mul_2Mul-layer_normalization_432/moments/mean:output:0)layer_normalization_432/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization_432/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_432_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0É
%layer_normalization_432/batchnorm/subSub8layer_normalization_432/batchnorm/ReadVariableOp:value:0+layer_normalization_432/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_432/batchnorm/add_1AddV2+layer_normalization_432/batchnorm/mul_1:z:0)layer_normalization_432/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
;multi_head_attention_216/query/einsum/Einsum/ReadVariableOpReadVariableOpDmulti_head_attention_216_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
,multi_head_attention_216/query/einsum/EinsumEinsum+layer_normalization_432/batchnorm/add_1:z:0Cmulti_head_attention_216/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde­
1multi_head_attention_216/query/add/ReadVariableOpReadVariableOp:multi_head_attention_216_query_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
"multi_head_attention_216/query/addAddV25multi_head_attention_216/query/einsum/Einsum:output:09multi_head_attention_216/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
9multi_head_attention_216/key/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_216_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
*multi_head_attention_216/key/einsum/EinsumEinsum+layer_normalization_432/batchnorm/add_1:z:0Amulti_head_attention_216/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde©
/multi_head_attention_216/key/add/ReadVariableOpReadVariableOp8multi_head_attention_216_key_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ò
 multi_head_attention_216/key/addAddV23multi_head_attention_216/key/einsum/Einsum:output:07multi_head_attention_216/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
;multi_head_attention_216/value/einsum/Einsum/ReadVariableOpReadVariableOpDmulti_head_attention_216_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
,multi_head_attention_216/value/einsum/EinsumEinsum+layer_normalization_432/batchnorm/add_1:z:0Cmulti_head_attention_216/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde­
1multi_head_attention_216/value/add/ReadVariableOpReadVariableOp:multi_head_attention_216_value_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
"multi_head_attention_216/value/addAddV25multi_head_attention_216/value/einsum/Einsum:output:09multi_head_attention_216/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
multi_head_attention_216/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =¯
multi_head_attention_216/MulMul&multi_head_attention_216/query/add:z:0'multi_head_attention_216/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
&multi_head_attention_216/einsum/EinsumEinsum$multi_head_attention_216/key/add:z:0 multi_head_attention_216/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe¡
+multi_head_attention_216/softmax_40/SoftmaxSoftmax/multi_head_attention_216/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
-multi_head_attention_216/dropout_535/IdentityIdentity5multi_head_attention_216/softmax_40/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
(multi_head_attention_216/einsum_1/EinsumEinsum6multi_head_attention_216/dropout_535/Identity:output:0&multi_head_attention_216/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcdÛ
Fmulti_head_attention_216/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpOmulti_head_attention_216_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0 
7multi_head_attention_216/attention_output/einsum/EinsumEinsum1multi_head_attention_216/einsum_1/Einsum:output:0Nmulti_head_attention_216/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe¾
<multi_head_attention_216/attention_output/add/ReadVariableOpReadVariableOpEmulti_head_attention_216_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0ô
-multi_head_attention_216/attention_output/addAddV2@multi_head_attention_216/attention_output/einsum/Einsum:output:0Dmulti_head_attention_216/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_526/IdentityIdentity1multi_head_attention_216/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
tf.__operators__.add_432/AddV2AddV2dropout_526/Identity:output:0inputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6layer_normalization_433/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ø
$layer_normalization_433/moments/meanMean"tf.__operators__.add_432/AddV2:z:0?layer_normalization_433/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¡
,layer_normalization_433/moments/StopGradientStopGradient-layer_normalization_433/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
1layer_normalization_433/moments/SquaredDifferenceSquaredDifference"tf.__operators__.add_432/AddV2:z:05layer_normalization_433/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:layer_normalization_433/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_433/moments/varianceMean5layer_normalization_433/moments/SquaredDifference:z:0Clayer_normalization_433/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(l
'layer_normalization_433/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_433/batchnorm/addAddV21layer_normalization_433/moments/variance:output:00layer_normalization_433/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_433/batchnorm/RsqrtRsqrt)layer_normalization_433/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4layer_normalization_433/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_433_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Í
%layer_normalization_433/batchnorm/mulMul+layer_normalization_433/batchnorm/Rsqrt:y:0<layer_normalization_433/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
'layer_normalization_433/batchnorm/mul_1Mul"tf.__operators__.add_432/AddV2:z:0)layer_normalization_433/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_433/batchnorm/mul_2Mul-layer_normalization_433/moments/mean:output:0)layer_normalization_433/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization_433/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_433_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0É
%layer_normalization_433/batchnorm/subSub8layer_normalization_433/batchnorm/ReadVariableOp:value:0+layer_normalization_433/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_433/batchnorm/add_1AddV2+layer_normalization_433/batchnorm/mul_1:z:0)layer_normalization_433/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 conv1d_432/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ¼
conv1d_432/Conv1D/ExpandDims
ExpandDims+layer_normalization_433/batchnorm/add_1:z:0)conv1d_432/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-conv1d_432/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_432_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_432/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_432/Conv1D/ExpandDims_1
ExpandDims5conv1d_432/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_432/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_432/Conv1DConv2D%conv1d_432/Conv1D/ExpandDims:output:0'conv1d_432/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_432/Conv1D/SqueezeSqueezeconv1d_432/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_432/BiasAdd/ReadVariableOpReadVariableOp*conv1d_432_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_432/BiasAddBiasAdd"conv1d_432/Conv1D/Squeeze:output:0)conv1d_432/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv1d_432/ReluReluconv1d_432/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
dropout_527/IdentityIdentityconv1d_432/Relu:activations:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 conv1d_433/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ®
conv1d_433/Conv1D/ExpandDims
ExpandDimsdropout_527/Identity:output:0)conv1d_433/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-conv1d_433/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_433_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_433/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_433/Conv1D/ExpandDims_1
ExpandDims5conv1d_433/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_433/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_433/Conv1DConv2D%conv1d_433/Conv1D/ExpandDims:output:0'conv1d_433/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_433/Conv1D/SqueezeSqueezeconv1d_433/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_433/BiasAdd/ReadVariableOpReadVariableOp*conv1d_433_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_433/BiasAddBiasAdd"conv1d_433/Conv1D/Squeeze:output:0)conv1d_433/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
tf.__operators__.add_433/AddV2AddV2conv1d_433/BiasAdd:output:0"tf.__operators__.add_432/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6layer_normalization_434/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ø
$layer_normalization_434/moments/meanMean"tf.__operators__.add_433/AddV2:z:0?layer_normalization_434/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¡
,layer_normalization_434/moments/StopGradientStopGradient-layer_normalization_434/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
1layer_normalization_434/moments/SquaredDifferenceSquaredDifference"tf.__operators__.add_433/AddV2:z:05layer_normalization_434/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:layer_normalization_434/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_434/moments/varianceMean5layer_normalization_434/moments/SquaredDifference:z:0Clayer_normalization_434/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(l
'layer_normalization_434/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_434/batchnorm/addAddV21layer_normalization_434/moments/variance:output:00layer_normalization_434/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_434/batchnorm/RsqrtRsqrt)layer_normalization_434/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4layer_normalization_434/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_434_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Í
%layer_normalization_434/batchnorm/mulMul+layer_normalization_434/batchnorm/Rsqrt:y:0<layer_normalization_434/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
'layer_normalization_434/batchnorm/mul_1Mul"tf.__operators__.add_433/AddV2:z:0)layer_normalization_434/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_434/batchnorm/mul_2Mul-layer_normalization_434/moments/mean:output:0)layer_normalization_434/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization_434/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_434_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0É
%layer_normalization_434/batchnorm/subSub8layer_normalization_434/batchnorm/ReadVariableOp:value:0+layer_normalization_434/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_434/batchnorm/add_1AddV2+layer_normalization_434/batchnorm/mul_1:z:0)layer_normalization_434/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
;multi_head_attention_217/query/einsum/Einsum/ReadVariableOpReadVariableOpDmulti_head_attention_217_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
,multi_head_attention_217/query/einsum/EinsumEinsum+layer_normalization_434/batchnorm/add_1:z:0Cmulti_head_attention_217/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde­
1multi_head_attention_217/query/add/ReadVariableOpReadVariableOp:multi_head_attention_217_query_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
"multi_head_attention_217/query/addAddV25multi_head_attention_217/query/einsum/Einsum:output:09multi_head_attention_217/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
9multi_head_attention_217/key/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_217_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
*multi_head_attention_217/key/einsum/EinsumEinsum+layer_normalization_434/batchnorm/add_1:z:0Amulti_head_attention_217/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde©
/multi_head_attention_217/key/add/ReadVariableOpReadVariableOp8multi_head_attention_217_key_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ò
 multi_head_attention_217/key/addAddV23multi_head_attention_217/key/einsum/Einsum:output:07multi_head_attention_217/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
;multi_head_attention_217/value/einsum/Einsum/ReadVariableOpReadVariableOpDmulti_head_attention_217_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
,multi_head_attention_217/value/einsum/EinsumEinsum+layer_normalization_434/batchnorm/add_1:z:0Cmulti_head_attention_217/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde­
1multi_head_attention_217/value/add/ReadVariableOpReadVariableOp:multi_head_attention_217_value_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
"multi_head_attention_217/value/addAddV25multi_head_attention_217/value/einsum/Einsum:output:09multi_head_attention_217/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
multi_head_attention_217/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =¯
multi_head_attention_217/MulMul&multi_head_attention_217/query/add:z:0'multi_head_attention_217/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
&multi_head_attention_217/einsum/EinsumEinsum$multi_head_attention_217/key/add:z:0 multi_head_attention_217/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe¡
+multi_head_attention_217/softmax_41/SoftmaxSoftmax/multi_head_attention_217/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
-multi_head_attention_217/dropout_536/IdentityIdentity5multi_head_attention_217/softmax_41/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
(multi_head_attention_217/einsum_1/EinsumEinsum6multi_head_attention_217/dropout_536/Identity:output:0&multi_head_attention_217/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcdÛ
Fmulti_head_attention_217/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpOmulti_head_attention_217_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0 
7multi_head_attention_217/attention_output/einsum/EinsumEinsum1multi_head_attention_217/einsum_1/Einsum:output:0Nmulti_head_attention_217/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe¾
<multi_head_attention_217/attention_output/add/ReadVariableOpReadVariableOpEmulti_head_attention_217_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0ô
-multi_head_attention_217/attention_output/addAddV2@multi_head_attention_217/attention_output/einsum/Einsum:output:0Dmulti_head_attention_217/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_528/IdentityIdentity1multi_head_attention_217/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
tf.__operators__.add_434/AddV2AddV2dropout_528/Identity:output:0"tf.__operators__.add_433/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6layer_normalization_435/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ø
$layer_normalization_435/moments/meanMean"tf.__operators__.add_434/AddV2:z:0?layer_normalization_435/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¡
,layer_normalization_435/moments/StopGradientStopGradient-layer_normalization_435/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
1layer_normalization_435/moments/SquaredDifferenceSquaredDifference"tf.__operators__.add_434/AddV2:z:05layer_normalization_435/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:layer_normalization_435/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_435/moments/varianceMean5layer_normalization_435/moments/SquaredDifference:z:0Clayer_normalization_435/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(l
'layer_normalization_435/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_435/batchnorm/addAddV21layer_normalization_435/moments/variance:output:00layer_normalization_435/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_435/batchnorm/RsqrtRsqrt)layer_normalization_435/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4layer_normalization_435/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_435_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Í
%layer_normalization_435/batchnorm/mulMul+layer_normalization_435/batchnorm/Rsqrt:y:0<layer_normalization_435/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
'layer_normalization_435/batchnorm/mul_1Mul"tf.__operators__.add_434/AddV2:z:0)layer_normalization_435/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_435/batchnorm/mul_2Mul-layer_normalization_435/moments/mean:output:0)layer_normalization_435/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization_435/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_435_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0É
%layer_normalization_435/batchnorm/subSub8layer_normalization_435/batchnorm/ReadVariableOp:value:0+layer_normalization_435/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_435/batchnorm/add_1AddV2+layer_normalization_435/batchnorm/mul_1:z:0)layer_normalization_435/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 conv1d_434/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ¼
conv1d_434/Conv1D/ExpandDims
ExpandDims+layer_normalization_435/batchnorm/add_1:z:0)conv1d_434/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-conv1d_434/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_434_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_434/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_434/Conv1D/ExpandDims_1
ExpandDims5conv1d_434/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_434/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_434/Conv1DConv2D%conv1d_434/Conv1D/ExpandDims:output:0'conv1d_434/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_434/Conv1D/SqueezeSqueezeconv1d_434/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_434/BiasAdd/ReadVariableOpReadVariableOp*conv1d_434_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_434/BiasAddBiasAdd"conv1d_434/Conv1D/Squeeze:output:0)conv1d_434/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv1d_434/ReluReluconv1d_434/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
dropout_529/IdentityIdentityconv1d_434/Relu:activations:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 conv1d_435/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ®
conv1d_435/Conv1D/ExpandDims
ExpandDimsdropout_529/Identity:output:0)conv1d_435/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-conv1d_435/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_435_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_435/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_435/Conv1D/ExpandDims_1
ExpandDims5conv1d_435/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_435/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_435/Conv1DConv2D%conv1d_435/Conv1D/ExpandDims:output:0'conv1d_435/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_435/Conv1D/SqueezeSqueezeconv1d_435/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_435/BiasAdd/ReadVariableOpReadVariableOp*conv1d_435_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_435/BiasAddBiasAdd"conv1d_435/Conv1D/Squeeze:output:0)conv1d_435/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
tf.__operators__.add_435/AddV2AddV2conv1d_435/BiasAdd:output:0"tf.__operators__.add_434/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6layer_normalization_436/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ø
$layer_normalization_436/moments/meanMean"tf.__operators__.add_435/AddV2:z:0?layer_normalization_436/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¡
,layer_normalization_436/moments/StopGradientStopGradient-layer_normalization_436/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
1layer_normalization_436/moments/SquaredDifferenceSquaredDifference"tf.__operators__.add_435/AddV2:z:05layer_normalization_436/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:layer_normalization_436/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_436/moments/varianceMean5layer_normalization_436/moments/SquaredDifference:z:0Clayer_normalization_436/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(l
'layer_normalization_436/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_436/batchnorm/addAddV21layer_normalization_436/moments/variance:output:00layer_normalization_436/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_436/batchnorm/RsqrtRsqrt)layer_normalization_436/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4layer_normalization_436/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_436_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Í
%layer_normalization_436/batchnorm/mulMul+layer_normalization_436/batchnorm/Rsqrt:y:0<layer_normalization_436/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
'layer_normalization_436/batchnorm/mul_1Mul"tf.__operators__.add_435/AddV2:z:0)layer_normalization_436/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_436/batchnorm/mul_2Mul-layer_normalization_436/moments/mean:output:0)layer_normalization_436/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization_436/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_436_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0É
%layer_normalization_436/batchnorm/subSub8layer_normalization_436/batchnorm/ReadVariableOp:value:0+layer_normalization_436/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_436/batchnorm/add_1AddV2+layer_normalization_436/batchnorm/mul_1:z:0)layer_normalization_436/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
;multi_head_attention_218/query/einsum/Einsum/ReadVariableOpReadVariableOpDmulti_head_attention_218_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
,multi_head_attention_218/query/einsum/EinsumEinsum+layer_normalization_436/batchnorm/add_1:z:0Cmulti_head_attention_218/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde­
1multi_head_attention_218/query/add/ReadVariableOpReadVariableOp:multi_head_attention_218_query_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
"multi_head_attention_218/query/addAddV25multi_head_attention_218/query/einsum/Einsum:output:09multi_head_attention_218/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
9multi_head_attention_218/key/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_218_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
*multi_head_attention_218/key/einsum/EinsumEinsum+layer_normalization_436/batchnorm/add_1:z:0Amulti_head_attention_218/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde©
/multi_head_attention_218/key/add/ReadVariableOpReadVariableOp8multi_head_attention_218_key_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ò
 multi_head_attention_218/key/addAddV23multi_head_attention_218/key/einsum/Einsum:output:07multi_head_attention_218/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
;multi_head_attention_218/value/einsum/Einsum/ReadVariableOpReadVariableOpDmulti_head_attention_218_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
,multi_head_attention_218/value/einsum/EinsumEinsum+layer_normalization_436/batchnorm/add_1:z:0Cmulti_head_attention_218/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde­
1multi_head_attention_218/value/add/ReadVariableOpReadVariableOp:multi_head_attention_218_value_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
"multi_head_attention_218/value/addAddV25multi_head_attention_218/value/einsum/Einsum:output:09multi_head_attention_218/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
multi_head_attention_218/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =¯
multi_head_attention_218/MulMul&multi_head_attention_218/query/add:z:0'multi_head_attention_218/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
&multi_head_attention_218/einsum/EinsumEinsum$multi_head_attention_218/key/add:z:0 multi_head_attention_218/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe¡
+multi_head_attention_218/softmax_42/SoftmaxSoftmax/multi_head_attention_218/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
-multi_head_attention_218/dropout_537/IdentityIdentity5multi_head_attention_218/softmax_42/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
(multi_head_attention_218/einsum_1/EinsumEinsum6multi_head_attention_218/dropout_537/Identity:output:0&multi_head_attention_218/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcdÛ
Fmulti_head_attention_218/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpOmulti_head_attention_218_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0 
7multi_head_attention_218/attention_output/einsum/EinsumEinsum1multi_head_attention_218/einsum_1/Einsum:output:0Nmulti_head_attention_218/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe¾
<multi_head_attention_218/attention_output/add/ReadVariableOpReadVariableOpEmulti_head_attention_218_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0ô
-multi_head_attention_218/attention_output/addAddV2@multi_head_attention_218/attention_output/einsum/Einsum:output:0Dmulti_head_attention_218/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_530/IdentityIdentity1multi_head_attention_218/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
tf.__operators__.add_436/AddV2AddV2dropout_530/Identity:output:0"tf.__operators__.add_435/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6layer_normalization_437/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ø
$layer_normalization_437/moments/meanMean"tf.__operators__.add_436/AddV2:z:0?layer_normalization_437/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¡
,layer_normalization_437/moments/StopGradientStopGradient-layer_normalization_437/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
1layer_normalization_437/moments/SquaredDifferenceSquaredDifference"tf.__operators__.add_436/AddV2:z:05layer_normalization_437/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:layer_normalization_437/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_437/moments/varianceMean5layer_normalization_437/moments/SquaredDifference:z:0Clayer_normalization_437/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(l
'layer_normalization_437/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_437/batchnorm/addAddV21layer_normalization_437/moments/variance:output:00layer_normalization_437/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_437/batchnorm/RsqrtRsqrt)layer_normalization_437/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4layer_normalization_437/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_437_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Í
%layer_normalization_437/batchnorm/mulMul+layer_normalization_437/batchnorm/Rsqrt:y:0<layer_normalization_437/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
'layer_normalization_437/batchnorm/mul_1Mul"tf.__operators__.add_436/AddV2:z:0)layer_normalization_437/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_437/batchnorm/mul_2Mul-layer_normalization_437/moments/mean:output:0)layer_normalization_437/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization_437/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_437_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0É
%layer_normalization_437/batchnorm/subSub8layer_normalization_437/batchnorm/ReadVariableOp:value:0+layer_normalization_437/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_437/batchnorm/add_1AddV2+layer_normalization_437/batchnorm/mul_1:z:0)layer_normalization_437/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 conv1d_436/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ¼
conv1d_436/Conv1D/ExpandDims
ExpandDims+layer_normalization_437/batchnorm/add_1:z:0)conv1d_436/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-conv1d_436/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_436_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_436/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_436/Conv1D/ExpandDims_1
ExpandDims5conv1d_436/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_436/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_436/Conv1DConv2D%conv1d_436/Conv1D/ExpandDims:output:0'conv1d_436/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_436/Conv1D/SqueezeSqueezeconv1d_436/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_436/BiasAdd/ReadVariableOpReadVariableOp*conv1d_436_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_436/BiasAddBiasAdd"conv1d_436/Conv1D/Squeeze:output:0)conv1d_436/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv1d_436/ReluReluconv1d_436/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
dropout_531/IdentityIdentityconv1d_436/Relu:activations:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 conv1d_437/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ®
conv1d_437/Conv1D/ExpandDims
ExpandDimsdropout_531/Identity:output:0)conv1d_437/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-conv1d_437/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_437_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_437/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_437/Conv1D/ExpandDims_1
ExpandDims5conv1d_437/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_437/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_437/Conv1DConv2D%conv1d_437/Conv1D/ExpandDims:output:0'conv1d_437/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_437/Conv1D/SqueezeSqueezeconv1d_437/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_437/BiasAdd/ReadVariableOpReadVariableOp*conv1d_437_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_437/BiasAddBiasAdd"conv1d_437/Conv1D/Squeeze:output:0)conv1d_437/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
tf.__operators__.add_437/AddV2AddV2conv1d_437/BiasAdd:output:0"tf.__operators__.add_436/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6layer_normalization_438/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ø
$layer_normalization_438/moments/meanMean"tf.__operators__.add_437/AddV2:z:0?layer_normalization_438/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¡
,layer_normalization_438/moments/StopGradientStopGradient-layer_normalization_438/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
1layer_normalization_438/moments/SquaredDifferenceSquaredDifference"tf.__operators__.add_437/AddV2:z:05layer_normalization_438/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:layer_normalization_438/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_438/moments/varianceMean5layer_normalization_438/moments/SquaredDifference:z:0Clayer_normalization_438/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(l
'layer_normalization_438/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_438/batchnorm/addAddV21layer_normalization_438/moments/variance:output:00layer_normalization_438/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_438/batchnorm/RsqrtRsqrt)layer_normalization_438/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4layer_normalization_438/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_438_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Í
%layer_normalization_438/batchnorm/mulMul+layer_normalization_438/batchnorm/Rsqrt:y:0<layer_normalization_438/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
'layer_normalization_438/batchnorm/mul_1Mul"tf.__operators__.add_437/AddV2:z:0)layer_normalization_438/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_438/batchnorm/mul_2Mul-layer_normalization_438/moments/mean:output:0)layer_normalization_438/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization_438/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_438_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0É
%layer_normalization_438/batchnorm/subSub8layer_normalization_438/batchnorm/ReadVariableOp:value:0+layer_normalization_438/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_438/batchnorm/add_1AddV2+layer_normalization_438/batchnorm/mul_1:z:0)layer_normalization_438/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
;multi_head_attention_219/query/einsum/Einsum/ReadVariableOpReadVariableOpDmulti_head_attention_219_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
,multi_head_attention_219/query/einsum/EinsumEinsum+layer_normalization_438/batchnorm/add_1:z:0Cmulti_head_attention_219/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde­
1multi_head_attention_219/query/add/ReadVariableOpReadVariableOp:multi_head_attention_219_query_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
"multi_head_attention_219/query/addAddV25multi_head_attention_219/query/einsum/Einsum:output:09multi_head_attention_219/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
9multi_head_attention_219/key/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_219_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
*multi_head_attention_219/key/einsum/EinsumEinsum+layer_normalization_438/batchnorm/add_1:z:0Amulti_head_attention_219/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde©
/multi_head_attention_219/key/add/ReadVariableOpReadVariableOp8multi_head_attention_219_key_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ò
 multi_head_attention_219/key/addAddV23multi_head_attention_219/key/einsum/Einsum:output:07multi_head_attention_219/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
;multi_head_attention_219/value/einsum/Einsum/ReadVariableOpReadVariableOpDmulti_head_attention_219_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0
,multi_head_attention_219/value/einsum/EinsumEinsum+layer_normalization_438/batchnorm/add_1:z:0Cmulti_head_attention_219/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde­
1multi_head_attention_219/value/add/ReadVariableOpReadVariableOp:multi_head_attention_219_value_add_readvariableop_resource*
_output_shapes
:	*
dtype0Ø
"multi_head_attention_219/value/addAddV25multi_head_attention_219/value/einsum/Einsum:output:09multi_head_attention_219/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
multi_head_attention_219/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =¯
multi_head_attention_219/MulMul&multi_head_attention_219/query/add:z:0'multi_head_attention_219/Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
&multi_head_attention_219/einsum/EinsumEinsum$multi_head_attention_219/key/add:z:0 multi_head_attention_219/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe¡
+multi_head_attention_219/softmax_43/SoftmaxSoftmax/multi_head_attention_219/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
-multi_head_attention_219/dropout_538/IdentityIdentity5multi_head_attention_219/softmax_43/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
(multi_head_attention_219/einsum_1/EinsumEinsum6multi_head_attention_219/dropout_538/Identity:output:0&multi_head_attention_219/value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcdÛ
Fmulti_head_attention_219/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpOmulti_head_attention_219_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0 
7multi_head_attention_219/attention_output/einsum/EinsumEinsum1multi_head_attention_219/einsum_1/Einsum:output:0Nmulti_head_attention_219/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe¾
<multi_head_attention_219/attention_output/add/ReadVariableOpReadVariableOpEmulti_head_attention_219_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0ô
-multi_head_attention_219/attention_output/addAddV2@multi_head_attention_219/attention_output/einsum/Einsum:output:0Dmulti_head_attention_219/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_532/IdentityIdentity1multi_head_attention_219/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
tf.__operators__.add_438/AddV2AddV2dropout_532/Identity:output:0"tf.__operators__.add_437/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6layer_normalization_439/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ø
$layer_normalization_439/moments/meanMean"tf.__operators__.add_438/AddV2:z:0?layer_normalization_439/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¡
,layer_normalization_439/moments/StopGradientStopGradient-layer_normalization_439/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ×
1layer_normalization_439/moments/SquaredDifferenceSquaredDifference"tf.__operators__.add_438/AddV2:z:05layer_normalization_439/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:layer_normalization_439/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ó
(layer_normalization_439/moments/varianceMean5layer_normalization_439/moments/SquaredDifference:z:0Clayer_normalization_439/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(l
'layer_normalization_439/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75É
%layer_normalization_439/batchnorm/addAddV21layer_normalization_439/moments/variance:output:00layer_normalization_439/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'layer_normalization_439/batchnorm/RsqrtRsqrt)layer_normalization_439/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
4layer_normalization_439/batchnorm/mul/ReadVariableOpReadVariableOp=layer_normalization_439_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Í
%layer_normalization_439/batchnorm/mulMul+layer_normalization_439/batchnorm/Rsqrt:y:0<layer_normalization_439/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
'layer_normalization_439/batchnorm/mul_1Mul"tf.__operators__.add_438/AddV2:z:0)layer_normalization_439/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_439/batchnorm/mul_2Mul-layer_normalization_439/moments/mean:output:0)layer_normalization_439/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization_439/batchnorm/ReadVariableOpReadVariableOp9layer_normalization_439_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0É
%layer_normalization_439/batchnorm/subSub8layer_normalization_439/batchnorm/ReadVariableOp:value:0+layer_normalization_439/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'layer_normalization_439/batchnorm/add_1AddV2+layer_normalization_439/batchnorm/mul_1:z:0)layer_normalization_439/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 conv1d_438/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ¼
conv1d_438/Conv1D/ExpandDims
ExpandDims+layer_normalization_439/batchnorm/add_1:z:0)conv1d_438/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-conv1d_438/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_438_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_438/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_438/Conv1D/ExpandDims_1
ExpandDims5conv1d_438/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_438/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_438/Conv1DConv2D%conv1d_438/Conv1D/ExpandDims:output:0'conv1d_438/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_438/Conv1D/SqueezeSqueezeconv1d_438/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_438/BiasAdd/ReadVariableOpReadVariableOp*conv1d_438_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_438/BiasAddBiasAdd"conv1d_438/Conv1D/Squeeze:output:0)conv1d_438/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
conv1d_438/ReluReluconv1d_438/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
dropout_533/IdentityIdentityconv1d_438/Relu:activations:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 conv1d_439/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ®
conv1d_439/Conv1D/ExpandDims
ExpandDimsdropout_533/Identity:output:0)conv1d_439/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
-conv1d_439/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp6conv1d_439_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0d
"conv1d_439/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
conv1d_439/Conv1D/ExpandDims_1
ExpandDims5conv1d_439/Conv1D/ExpandDims_1/ReadVariableOp:value:0+conv1d_439/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Î
conv1d_439/Conv1DConv2D%conv1d_439/Conv1D/ExpandDims:output:0'conv1d_439/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_439/Conv1D/SqueezeSqueezeconv1d_439/Conv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
!conv1d_439/BiasAdd/ReadVariableOpReadVariableOp*conv1d_439_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¢
conv1d_439/BiasAddBiasAdd"conv1d_439/Conv1D/Squeeze:output:0)conv1d_439/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
tf.__operators__.add_439/AddV2AddV2conv1d_439/BiasAdd:output:0"tf.__operators__.add_438/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
2global_average_pooling1d_54/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :»
 global_average_pooling1d_54/MeanMean"tf.__operators__.add_439/AddV2:z:0;global_average_pooling1d_54/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_108/MatMul/ReadVariableOpReadVariableOp(dense_108_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0¡
dense_108/MatMulMatMul)global_average_pooling1d_54/Mean:output:0'dense_108/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_108/BiasAdd/ReadVariableOpReadVariableOp)dense_108_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_108/BiasAddBiasAdddense_108/MatMul:product:0(dense_108/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dense_108/ReluReludense_108/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
dropout_534/IdentityIdentitydense_108/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_109/MatMul/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_109/MatMulMatMuldropout_534/Identity:output:0'dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_109/BiasAdd/ReadVariableOpReadVariableOp)dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_109/BiasAddBiasAdddense_109/MatMul:product:0(dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_109/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
NoOpNoOp"^conv1d_432/BiasAdd/ReadVariableOp.^conv1d_432/Conv1D/ExpandDims_1/ReadVariableOp"^conv1d_433/BiasAdd/ReadVariableOp.^conv1d_433/Conv1D/ExpandDims_1/ReadVariableOp"^conv1d_434/BiasAdd/ReadVariableOp.^conv1d_434/Conv1D/ExpandDims_1/ReadVariableOp"^conv1d_435/BiasAdd/ReadVariableOp.^conv1d_435/Conv1D/ExpandDims_1/ReadVariableOp"^conv1d_436/BiasAdd/ReadVariableOp.^conv1d_436/Conv1D/ExpandDims_1/ReadVariableOp"^conv1d_437/BiasAdd/ReadVariableOp.^conv1d_437/Conv1D/ExpandDims_1/ReadVariableOp"^conv1d_438/BiasAdd/ReadVariableOp.^conv1d_438/Conv1D/ExpandDims_1/ReadVariableOp"^conv1d_439/BiasAdd/ReadVariableOp.^conv1d_439/Conv1D/ExpandDims_1/ReadVariableOp!^dense_108/BiasAdd/ReadVariableOp ^dense_108/MatMul/ReadVariableOp!^dense_109/BiasAdd/ReadVariableOp ^dense_109/MatMul/ReadVariableOp1^layer_normalization_432/batchnorm/ReadVariableOp5^layer_normalization_432/batchnorm/mul/ReadVariableOp1^layer_normalization_433/batchnorm/ReadVariableOp5^layer_normalization_433/batchnorm/mul/ReadVariableOp1^layer_normalization_434/batchnorm/ReadVariableOp5^layer_normalization_434/batchnorm/mul/ReadVariableOp1^layer_normalization_435/batchnorm/ReadVariableOp5^layer_normalization_435/batchnorm/mul/ReadVariableOp1^layer_normalization_436/batchnorm/ReadVariableOp5^layer_normalization_436/batchnorm/mul/ReadVariableOp1^layer_normalization_437/batchnorm/ReadVariableOp5^layer_normalization_437/batchnorm/mul/ReadVariableOp1^layer_normalization_438/batchnorm/ReadVariableOp5^layer_normalization_438/batchnorm/mul/ReadVariableOp1^layer_normalization_439/batchnorm/ReadVariableOp5^layer_normalization_439/batchnorm/mul/ReadVariableOp=^multi_head_attention_216/attention_output/add/ReadVariableOpG^multi_head_attention_216/attention_output/einsum/Einsum/ReadVariableOp0^multi_head_attention_216/key/add/ReadVariableOp:^multi_head_attention_216/key/einsum/Einsum/ReadVariableOp2^multi_head_attention_216/query/add/ReadVariableOp<^multi_head_attention_216/query/einsum/Einsum/ReadVariableOp2^multi_head_attention_216/value/add/ReadVariableOp<^multi_head_attention_216/value/einsum/Einsum/ReadVariableOp=^multi_head_attention_217/attention_output/add/ReadVariableOpG^multi_head_attention_217/attention_output/einsum/Einsum/ReadVariableOp0^multi_head_attention_217/key/add/ReadVariableOp:^multi_head_attention_217/key/einsum/Einsum/ReadVariableOp2^multi_head_attention_217/query/add/ReadVariableOp<^multi_head_attention_217/query/einsum/Einsum/ReadVariableOp2^multi_head_attention_217/value/add/ReadVariableOp<^multi_head_attention_217/value/einsum/Einsum/ReadVariableOp=^multi_head_attention_218/attention_output/add/ReadVariableOpG^multi_head_attention_218/attention_output/einsum/Einsum/ReadVariableOp0^multi_head_attention_218/key/add/ReadVariableOp:^multi_head_attention_218/key/einsum/Einsum/ReadVariableOp2^multi_head_attention_218/query/add/ReadVariableOp<^multi_head_attention_218/query/einsum/Einsum/ReadVariableOp2^multi_head_attention_218/value/add/ReadVariableOp<^multi_head_attention_218/value/einsum/Einsum/ReadVariableOp=^multi_head_attention_219/attention_output/add/ReadVariableOpG^multi_head_attention_219/attention_output/einsum/Einsum/ReadVariableOp0^multi_head_attention_219/key/add/ReadVariableOp:^multi_head_attention_219/key/einsum/Einsum/ReadVariableOp2^multi_head_attention_219/query/add/ReadVariableOp<^multi_head_attention_219/query/einsum/Einsum/ReadVariableOp2^multi_head_attention_219/value/add/ReadVariableOp<^multi_head_attention_219/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes¢
:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!conv1d_432/BiasAdd/ReadVariableOp!conv1d_432/BiasAdd/ReadVariableOp2^
-conv1d_432/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_432/Conv1D/ExpandDims_1/ReadVariableOp2F
!conv1d_433/BiasAdd/ReadVariableOp!conv1d_433/BiasAdd/ReadVariableOp2^
-conv1d_433/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_433/Conv1D/ExpandDims_1/ReadVariableOp2F
!conv1d_434/BiasAdd/ReadVariableOp!conv1d_434/BiasAdd/ReadVariableOp2^
-conv1d_434/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_434/Conv1D/ExpandDims_1/ReadVariableOp2F
!conv1d_435/BiasAdd/ReadVariableOp!conv1d_435/BiasAdd/ReadVariableOp2^
-conv1d_435/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_435/Conv1D/ExpandDims_1/ReadVariableOp2F
!conv1d_436/BiasAdd/ReadVariableOp!conv1d_436/BiasAdd/ReadVariableOp2^
-conv1d_436/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_436/Conv1D/ExpandDims_1/ReadVariableOp2F
!conv1d_437/BiasAdd/ReadVariableOp!conv1d_437/BiasAdd/ReadVariableOp2^
-conv1d_437/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_437/Conv1D/ExpandDims_1/ReadVariableOp2F
!conv1d_438/BiasAdd/ReadVariableOp!conv1d_438/BiasAdd/ReadVariableOp2^
-conv1d_438/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_438/Conv1D/ExpandDims_1/ReadVariableOp2F
!conv1d_439/BiasAdd/ReadVariableOp!conv1d_439/BiasAdd/ReadVariableOp2^
-conv1d_439/Conv1D/ExpandDims_1/ReadVariableOp-conv1d_439/Conv1D/ExpandDims_1/ReadVariableOp2D
 dense_108/BiasAdd/ReadVariableOp dense_108/BiasAdd/ReadVariableOp2B
dense_108/MatMul/ReadVariableOpdense_108/MatMul/ReadVariableOp2D
 dense_109/BiasAdd/ReadVariableOp dense_109/BiasAdd/ReadVariableOp2B
dense_109/MatMul/ReadVariableOpdense_109/MatMul/ReadVariableOp2d
0layer_normalization_432/batchnorm/ReadVariableOp0layer_normalization_432/batchnorm/ReadVariableOp2l
4layer_normalization_432/batchnorm/mul/ReadVariableOp4layer_normalization_432/batchnorm/mul/ReadVariableOp2d
0layer_normalization_433/batchnorm/ReadVariableOp0layer_normalization_433/batchnorm/ReadVariableOp2l
4layer_normalization_433/batchnorm/mul/ReadVariableOp4layer_normalization_433/batchnorm/mul/ReadVariableOp2d
0layer_normalization_434/batchnorm/ReadVariableOp0layer_normalization_434/batchnorm/ReadVariableOp2l
4layer_normalization_434/batchnorm/mul/ReadVariableOp4layer_normalization_434/batchnorm/mul/ReadVariableOp2d
0layer_normalization_435/batchnorm/ReadVariableOp0layer_normalization_435/batchnorm/ReadVariableOp2l
4layer_normalization_435/batchnorm/mul/ReadVariableOp4layer_normalization_435/batchnorm/mul/ReadVariableOp2d
0layer_normalization_436/batchnorm/ReadVariableOp0layer_normalization_436/batchnorm/ReadVariableOp2l
4layer_normalization_436/batchnorm/mul/ReadVariableOp4layer_normalization_436/batchnorm/mul/ReadVariableOp2d
0layer_normalization_437/batchnorm/ReadVariableOp0layer_normalization_437/batchnorm/ReadVariableOp2l
4layer_normalization_437/batchnorm/mul/ReadVariableOp4layer_normalization_437/batchnorm/mul/ReadVariableOp2d
0layer_normalization_438/batchnorm/ReadVariableOp0layer_normalization_438/batchnorm/ReadVariableOp2l
4layer_normalization_438/batchnorm/mul/ReadVariableOp4layer_normalization_438/batchnorm/mul/ReadVariableOp2d
0layer_normalization_439/batchnorm/ReadVariableOp0layer_normalization_439/batchnorm/ReadVariableOp2l
4layer_normalization_439/batchnorm/mul/ReadVariableOp4layer_normalization_439/batchnorm/mul/ReadVariableOp2|
<multi_head_attention_216/attention_output/add/ReadVariableOp<multi_head_attention_216/attention_output/add/ReadVariableOp2
Fmulti_head_attention_216/attention_output/einsum/Einsum/ReadVariableOpFmulti_head_attention_216/attention_output/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_216/key/add/ReadVariableOp/multi_head_attention_216/key/add/ReadVariableOp2v
9multi_head_attention_216/key/einsum/Einsum/ReadVariableOp9multi_head_attention_216/key/einsum/Einsum/ReadVariableOp2f
1multi_head_attention_216/query/add/ReadVariableOp1multi_head_attention_216/query/add/ReadVariableOp2z
;multi_head_attention_216/query/einsum/Einsum/ReadVariableOp;multi_head_attention_216/query/einsum/Einsum/ReadVariableOp2f
1multi_head_attention_216/value/add/ReadVariableOp1multi_head_attention_216/value/add/ReadVariableOp2z
;multi_head_attention_216/value/einsum/Einsum/ReadVariableOp;multi_head_attention_216/value/einsum/Einsum/ReadVariableOp2|
<multi_head_attention_217/attention_output/add/ReadVariableOp<multi_head_attention_217/attention_output/add/ReadVariableOp2
Fmulti_head_attention_217/attention_output/einsum/Einsum/ReadVariableOpFmulti_head_attention_217/attention_output/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_217/key/add/ReadVariableOp/multi_head_attention_217/key/add/ReadVariableOp2v
9multi_head_attention_217/key/einsum/Einsum/ReadVariableOp9multi_head_attention_217/key/einsum/Einsum/ReadVariableOp2f
1multi_head_attention_217/query/add/ReadVariableOp1multi_head_attention_217/query/add/ReadVariableOp2z
;multi_head_attention_217/query/einsum/Einsum/ReadVariableOp;multi_head_attention_217/query/einsum/Einsum/ReadVariableOp2f
1multi_head_attention_217/value/add/ReadVariableOp1multi_head_attention_217/value/add/ReadVariableOp2z
;multi_head_attention_217/value/einsum/Einsum/ReadVariableOp;multi_head_attention_217/value/einsum/Einsum/ReadVariableOp2|
<multi_head_attention_218/attention_output/add/ReadVariableOp<multi_head_attention_218/attention_output/add/ReadVariableOp2
Fmulti_head_attention_218/attention_output/einsum/Einsum/ReadVariableOpFmulti_head_attention_218/attention_output/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_218/key/add/ReadVariableOp/multi_head_attention_218/key/add/ReadVariableOp2v
9multi_head_attention_218/key/einsum/Einsum/ReadVariableOp9multi_head_attention_218/key/einsum/Einsum/ReadVariableOp2f
1multi_head_attention_218/query/add/ReadVariableOp1multi_head_attention_218/query/add/ReadVariableOp2z
;multi_head_attention_218/query/einsum/Einsum/ReadVariableOp;multi_head_attention_218/query/einsum/Einsum/ReadVariableOp2f
1multi_head_attention_218/value/add/ReadVariableOp1multi_head_attention_218/value/add/ReadVariableOp2z
;multi_head_attention_218/value/einsum/Einsum/ReadVariableOp;multi_head_attention_218/value/einsum/Einsum/ReadVariableOp2|
<multi_head_attention_219/attention_output/add/ReadVariableOp<multi_head_attention_219/attention_output/add/ReadVariableOp2
Fmulti_head_attention_219/attention_output/einsum/Einsum/ReadVariableOpFmulti_head_attention_219/attention_output/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_219/key/add/ReadVariableOp/multi_head_attention_219/key/add/ReadVariableOp2v
9multi_head_attention_219/key/einsum/Einsum/ReadVariableOp9multi_head_attention_219/key/einsum/Einsum/ReadVariableOp2f
1multi_head_attention_219/query/add/ReadVariableOp1multi_head_attention_219/query/add/ReadVariableOp2z
;multi_head_attention_219/query/einsum/Einsum/ReadVariableOp;multi_head_attention_219/query/einsum/Einsum/ReadVariableOp2f
1multi_head_attention_219/value/add/ReadVariableOp1multi_head_attention_219/value/add/ReadVariableOp2z
;multi_head_attention_219/value/einsum/Einsum/ReadVariableOp;multi_head_attention_219/value/einsum/Einsum/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß
f
H__inference_dropout_534_layer_call_and_return_conditional_losses_1689179

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
I
-__inference_dropout_529_layer_call_fn_1688515

inputs
identityº
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_529_layer_call_and_return_conditional_losses_1684450d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß

,__inference_conv1d_436_layer_call_fn_1688780

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_436_layer_call_and_return_conditional_losses_1684607s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë

G__inference_conv1d_432_layer_call_and_return_conditional_losses_1688224

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
-__inference_dropout_531_layer_call_fn_1688806

inputs
identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_531_layer_call_and_return_conditional_losses_1685237s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ
¢
9__inference_layer_normalization_438_layer_call_fn_1688856

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallð
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_438_layer_call_and_return_conditional_losses_1684664s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ
f
-__inference_dropout_534_layer_call_fn_1689174

inputs
identity¢StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_534_layer_call_and_return_conditional_losses_1685021p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

T__inference_layer_normalization_439_layer_call_and_return_conditional_losses_1689057

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í

+__inference_dense_108_layer_call_fn_1689153

inputs
unknown:	
	unknown_0:	
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_108_layer_call_and_return_conditional_losses_1684822p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ö
:__inference_multi_head_attention_217_layer_call_fn_1688350	
query	
value
unknown:
	unknown_0:	 
	unknown_1:
	unknown_2:	 
	unknown_3:
	unknown_4:	 
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_217_layer_call_and_return_conditional_losses_1685524s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue


g
H__inference_dropout_529_layer_call_and_return_conditional_losses_1688537

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

T__inference_layer_normalization_437_layer_call_and_return_conditional_losses_1688771

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ö
:__inference_multi_head_attention_217_layer_call_fn_1688328	
query	
value
unknown:
	unknown_0:	 
	unknown_1:
	unknown_2:	 
	unknown_3:
	unknown_4:	 
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_217_layer_call_and_return_conditional_losses_1684369s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue


g
H__inference_dropout_532_layer_call_and_return_conditional_losses_1689026

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
f
H__inference_dropout_532_layer_call_and_return_conditional_losses_1684728

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­
×
*__inference_model_54_layer_call_fn_1686329
input_55
unknown:
	unknown_0: 
	unknown_1:
	unknown_2:	 
	unknown_3:
	unknown_4:	 
	unknown_5:
	unknown_6:	 
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10: 

unknown_11:

unknown_12: 

unknown_13:

unknown_14:

unknown_15:

unknown_16:!

unknown_17:

unknown_18:	!

unknown_19:

unknown_20:	!

unknown_21:

unknown_22:	!

unknown_23:

unknown_24:

unknown_25:

unknown_26: 

unknown_27:

unknown_28: 

unknown_29:

unknown_30:

unknown_31:

unknown_32:!

unknown_33:

unknown_34:	!

unknown_35:

unknown_36:	!

unknown_37:

unknown_38:	!

unknown_39:

unknown_40:

unknown_41:

unknown_42: 

unknown_43:

unknown_44: 

unknown_45:

unknown_46:

unknown_47:

unknown_48:!

unknown_49:

unknown_50:	!

unknown_51:

unknown_52:	!

unknown_53:

unknown_54:	!

unknown_55:

unknown_56:

unknown_57:

unknown_58: 

unknown_59:

unknown_60: 

unknown_61:

unknown_62:

unknown_63:	

unknown_64:	

unknown_65:	

unknown_66:
identity¢StatefulPartitionedCallò	
StatefulPartitionedCallStatefulPartitionedCallinput_55unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*f
_read_only_resource_inputsH
FD	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCD*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_model_54_layer_call_and_return_conditional_losses_1686049o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes¢
:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_55
ó

T__inference_layer_normalization_438_layer_call_and_return_conditional_losses_1688878

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ò
%__inference_signature_wrapper_1686832
input_55
unknown:
	unknown_0: 
	unknown_1:
	unknown_2:	 
	unknown_3:
	unknown_4:	 
	unknown_5:
	unknown_6:	 
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10: 

unknown_11:

unknown_12: 

unknown_13:

unknown_14:

unknown_15:

unknown_16:!

unknown_17:

unknown_18:	!

unknown_19:

unknown_20:	!

unknown_21:

unknown_22:	!

unknown_23:

unknown_24:

unknown_25:

unknown_26: 

unknown_27:

unknown_28: 

unknown_29:

unknown_30:

unknown_31:

unknown_32:!

unknown_33:

unknown_34:	!

unknown_35:

unknown_36:	!

unknown_37:

unknown_38:	!

unknown_39:

unknown_40:

unknown_41:

unknown_42: 

unknown_43:

unknown_44: 

unknown_45:

unknown_46:

unknown_47:

unknown_48:!

unknown_49:

unknown_50:	!

unknown_51:

unknown_52:	!

unknown_53:

unknown_54:	!

unknown_55:

unknown_56:

unknown_57:

unknown_58: 

unknown_59:

unknown_60: 

unknown_61:

unknown_62:

unknown_63:	

unknown_64:	

unknown_65:	

unknown_66:
identity¢StatefulPartitionedCallÏ	
StatefulPartitionedCallStatefulPartitionedCallinput_55unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*f
_read_only_resource_inputsH
FD	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCD*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_1684118o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes¢
:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_55
Ç2

U__inference_multi_head_attention_219_layer_call_and_return_conditional_losses_1685178	
query	
valueB
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	@
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	B
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	M
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbeo
softmax_43/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_538/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout_538/dropout/MulMulsoftmax_43/Softmax:softmax:0"dropout_538/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dropout_538/dropout/ShapeShapesoftmax_43/Softmax:softmax:0*
T0*
_output_shapes
:¬
0dropout_538/dropout/random_uniform/RandomUniformRandomUniform"dropout_538/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_538/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ò
 dropout_538/dropout/GreaterEqualGreaterEqual9dropout_538/dropout/random_uniform/RandomUniform:output:0+dropout_538/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_538/dropout/CastCast$dropout_538/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_538/dropout/Mul_1Muldropout_538/dropout/Mul:z:0dropout_538/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
einsum_1/EinsumEinsumdropout_538/dropout/Mul_1:z:0value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcd©
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
ß

,__inference_conv1d_433_layer_call_fn_1688260

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_433_layer_call_and_return_conditional_losses_1684299s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ*

U__inference_multi_head_attention_218_layer_call_and_return_conditional_losses_1688671	
query	
valueB
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	@
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	B
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	M
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbeo
softmax_42/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
dropout_537/IdentityIdentitysoftmax_42/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
einsum_1/EinsumEinsumdropout_537/Identity:output:0value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcd©
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
ë
f
H__inference_dropout_531_layer_call_and_return_conditional_losses_1684618

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
f
H__inference_dropout_526_layer_call_and_return_conditional_losses_1688156

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
f
H__inference_dropout_527_layer_call_and_return_conditional_losses_1684282

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
f
H__inference_dropout_532_layer_call_and_return_conditional_losses_1689014

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§
Õ
*__inference_model_54_layer_call_fn_1686973

inputs
unknown:
	unknown_0: 
	unknown_1:
	unknown_2:	 
	unknown_3:
	unknown_4:	 
	unknown_5:
	unknown_6:	 
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10: 

unknown_11:

unknown_12: 

unknown_13:

unknown_14:

unknown_15:

unknown_16:!

unknown_17:

unknown_18:	!

unknown_19:

unknown_20:	!

unknown_21:

unknown_22:	!

unknown_23:

unknown_24:

unknown_25:

unknown_26: 

unknown_27:

unknown_28: 

unknown_29:

unknown_30:

unknown_31:

unknown_32:!

unknown_33:

unknown_34:	!

unknown_35:

unknown_36:	!

unknown_37:

unknown_38:	!

unknown_39:

unknown_40:

unknown_41:

unknown_42: 

unknown_43:

unknown_44: 

unknown_45:

unknown_46:

unknown_47:

unknown_48:!

unknown_49:

unknown_50:	!

unknown_51:

unknown_52:	!

unknown_53:

unknown_54:	!

unknown_55:

unknown_56:

unknown_57:

unknown_58: 

unknown_59:

unknown_60: 

unknown_61:

unknown_62:

unknown_63:	

unknown_64:	

unknown_65:	

unknown_66:
identity¢StatefulPartitionedCallð	
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*f
_read_only_resource_inputsH
FD	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCD*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_model_54_layer_call_and_return_conditional_losses_1684852o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes¢
:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
I
-__inference_dropout_531_layer_call_fn_1688801

inputs
identityº
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_531_layer_call_and_return_conditional_losses_1684618d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ*

U__inference_multi_head_attention_219_layer_call_and_return_conditional_losses_1688957	
query	
valueB
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	@
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	B
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	M
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbeo
softmax_43/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
dropout_538/IdentityIdentitysoftmax_43/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
einsum_1/EinsumEinsumdropout_538/Identity:output:0value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcd©
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
Æ*

U__inference_multi_head_attention_219_layer_call_and_return_conditional_losses_1684705	
query	
valueB
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	@
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	B
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	M
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbeo
softmax_43/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
dropout_538/IdentityIdentitysoftmax_43/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
einsum_1/EinsumEinsumdropout_538/Identity:output:0value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcd©
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
þ	
g
H__inference_dropout_534_layer_call_and_return_conditional_losses_1685021

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
-__inference_dropout_532_layer_call_fn_1689009

inputs
identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_532_layer_call_and_return_conditional_losses_1685107s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
I
-__inference_dropout_527_layer_call_fn_1688229

inputs
identityº
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_527_layer_call_and_return_conditional_losses_1684282d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
I
-__inference_dropout_528_layer_call_fn_1688432

inputs
identityº
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_528_layer_call_and_return_conditional_losses_1684392d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥

ù
F__inference_dense_108_layer_call_and_return_conditional_losses_1684822

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ö
:__inference_multi_head_attention_218_layer_call_fn_1688636	
query	
value
unknown:
	unknown_0:	 
	unknown_1:
	unknown_2:	 
	unknown_3:
	unknown_4:	 
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_218_layer_call_and_return_conditional_losses_1685351s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
ë
f
H__inference_dropout_526_layer_call_and_return_conditional_losses_1684224

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç2

U__inference_multi_head_attention_218_layer_call_and_return_conditional_losses_1688713	
query	
valueB
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	@
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	B
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	M
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbeo
softmax_42/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_537/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout_537/dropout/MulMulsoftmax_42/Softmax:softmax:0"dropout_537/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dropout_537/dropout/ShapeShapesoftmax_42/Softmax:softmax:0*
T0*
_output_shapes
:¬
0dropout_537/dropout/random_uniform/RandomUniformRandomUniform"dropout_537/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_537/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ò
 dropout_537/dropout/GreaterEqualGreaterEqual9dropout_537/dropout/random_uniform/RandomUniform:output:0+dropout_537/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_537/dropout/CastCast$dropout_537/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_537/dropout/Mul_1Muldropout_537/dropout/Mul:z:0dropout_537/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
einsum_1/EinsumEinsumdropout_537/dropout/Mul_1:z:0value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcd©
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
Ç2

U__inference_multi_head_attention_216_layer_call_and_return_conditional_losses_1688141	
query	
valueB
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	@
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	B
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	M
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbeo
softmax_40/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_535/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout_535/dropout/MulMulsoftmax_40/Softmax:softmax:0"dropout_535/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dropout_535/dropout/ShapeShapesoftmax_40/Softmax:softmax:0*
T0*
_output_shapes
:¬
0dropout_535/dropout/random_uniform/RandomUniformRandomUniform"dropout_535/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_535/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ò
 dropout_535/dropout/GreaterEqualGreaterEqual9dropout_535/dropout/random_uniform/RandomUniform:output:0+dropout_535/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_535/dropout/CastCast$dropout_535/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_535/dropout/Mul_1Muldropout_535/dropout/Mul:z:0dropout_535/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
einsum_1/EinsumEinsumdropout_535/dropout/Mul_1:z:0value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcd©
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
Ë

G__inference_conv1d_436_layer_call_and_return_conditional_losses_1688796

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
-__inference_dropout_529_layer_call_fn_1688520

inputs
identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_529_layer_call_and_return_conditional_losses_1685410s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


g
H__inference_dropout_529_layer_call_and_return_conditional_losses_1685410

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ
¢
9__inference_layer_normalization_432_layer_call_fn_1687998

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallð
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_432_layer_call_and_return_conditional_losses_1684160s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç2

U__inference_multi_head_attention_217_layer_call_and_return_conditional_losses_1688427	
query	
valueB
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	@
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	B
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	M
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbeo
softmax_41/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_536/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout_536/dropout/MulMulsoftmax_41/Softmax:softmax:0"dropout_536/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dropout_536/dropout/ShapeShapesoftmax_41/Softmax:softmax:0*
T0*
_output_shapes
:¬
0dropout_536/dropout/random_uniform/RandomUniformRandomUniform"dropout_536/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_536/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ò
 dropout_536/dropout/GreaterEqualGreaterEqual9dropout_536/dropout/random_uniform/RandomUniform:output:0+dropout_536/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_536/dropout/CastCast$dropout_536/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_536/dropout/Mul_1Muldropout_536/dropout/Mul:z:0dropout_536/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
einsum_1/EinsumEinsumdropout_536/dropout/Mul_1:z:0value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcd©
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
ñ
¢
9__inference_layer_normalization_437_layer_call_fn_1688749

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallð
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_437_layer_call_and_return_conditional_losses_1684585s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥

ù
F__inference_dense_108_layer_call_and_return_conditional_losses_1689164

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

G__inference_conv1d_437_layer_call_and_return_conditional_losses_1688847

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ*

U__inference_multi_head_attention_217_layer_call_and_return_conditional_losses_1688385	
query	
valueB
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	@
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	B
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	M
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbeo
softmax_41/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
dropout_536/IdentityIdentitysoftmax_41/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
einsum_1/EinsumEinsumdropout_536/Identity:output:0value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcd©
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
Ô
ó1
#__inference__traced_restore_1689663
file_prefix<
.assignvariableop_layer_normalization_432_gamma:=
/assignvariableop_1_layer_normalization_432_beta:>
0assignvariableop_2_layer_normalization_433_gamma:=
/assignvariableop_3_layer_normalization_433_beta::
$assignvariableop_4_conv1d_432_kernel:0
"assignvariableop_5_conv1d_432_bias::
$assignvariableop_6_conv1d_433_kernel:0
"assignvariableop_7_conv1d_433_bias:>
0assignvariableop_8_layer_normalization_434_gamma:=
/assignvariableop_9_layer_normalization_434_beta:?
1assignvariableop_10_layer_normalization_435_gamma:>
0assignvariableop_11_layer_normalization_435_beta:;
%assignvariableop_12_conv1d_434_kernel:1
#assignvariableop_13_conv1d_434_bias:;
%assignvariableop_14_conv1d_435_kernel:1
#assignvariableop_15_conv1d_435_bias:?
1assignvariableop_16_layer_normalization_436_gamma:>
0assignvariableop_17_layer_normalization_436_beta:?
1assignvariableop_18_layer_normalization_437_gamma:>
0assignvariableop_19_layer_normalization_437_beta:;
%assignvariableop_20_conv1d_436_kernel:1
#assignvariableop_21_conv1d_436_bias:;
%assignvariableop_22_conv1d_437_kernel:1
#assignvariableop_23_conv1d_437_bias:?
1assignvariableop_24_layer_normalization_438_gamma:>
0assignvariableop_25_layer_normalization_438_beta:?
1assignvariableop_26_layer_normalization_439_gamma:>
0assignvariableop_27_layer_normalization_439_beta:;
%assignvariableop_28_conv1d_438_kernel:1
#assignvariableop_29_conv1d_438_bias:;
%assignvariableop_30_conv1d_439_kernel:1
#assignvariableop_31_conv1d_439_bias:7
$assignvariableop_32_dense_108_kernel:	1
"assignvariableop_33_dense_108_bias:	7
$assignvariableop_34_dense_109_kernel:	0
"assignvariableop_35_dense_109_bias:P
9assignvariableop_36_multi_head_attention_216_query_kernel:J
7assignvariableop_37_multi_head_attention_216_query_bias:	N
7assignvariableop_38_multi_head_attention_216_key_kernel:H
5assignvariableop_39_multi_head_attention_216_key_bias:	P
9assignvariableop_40_multi_head_attention_216_value_kernel:J
7assignvariableop_41_multi_head_attention_216_value_bias:	[
Dassignvariableop_42_multi_head_attention_216_attention_output_kernel:P
Bassignvariableop_43_multi_head_attention_216_attention_output_bias:P
9assignvariableop_44_multi_head_attention_217_query_kernel:J
7assignvariableop_45_multi_head_attention_217_query_bias:	N
7assignvariableop_46_multi_head_attention_217_key_kernel:H
5assignvariableop_47_multi_head_attention_217_key_bias:	P
9assignvariableop_48_multi_head_attention_217_value_kernel:J
7assignvariableop_49_multi_head_attention_217_value_bias:	[
Dassignvariableop_50_multi_head_attention_217_attention_output_kernel:P
Bassignvariableop_51_multi_head_attention_217_attention_output_bias:P
9assignvariableop_52_multi_head_attention_218_query_kernel:J
7assignvariableop_53_multi_head_attention_218_query_bias:	N
7assignvariableop_54_multi_head_attention_218_key_kernel:H
5assignvariableop_55_multi_head_attention_218_key_bias:	P
9assignvariableop_56_multi_head_attention_218_value_kernel:J
7assignvariableop_57_multi_head_attention_218_value_bias:	[
Dassignvariableop_58_multi_head_attention_218_attention_output_kernel:P
Bassignvariableop_59_multi_head_attention_218_attention_output_bias:P
9assignvariableop_60_multi_head_attention_219_query_kernel:J
7assignvariableop_61_multi_head_attention_219_query_bias:	N
7assignvariableop_62_multi_head_attention_219_key_kernel:H
5assignvariableop_63_multi_head_attention_219_key_bias:	P
9assignvariableop_64_multi_head_attention_219_value_kernel:J
7assignvariableop_65_multi_head_attention_219_value_bias:	[
Dassignvariableop_66_multi_head_attention_219_attention_output_kernel:P
Bassignvariableop_67_multi_head_attention_219_attention_output_bias:#
assignvariableop_68_total: #
assignvariableop_69_count: 
identity_71¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ù
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:G*
dtype0*ÿ
valueõBòGB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-12/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/50/.ATTRIBUTES/VARIABLE_VALUEB'variables/51/.ATTRIBUTES/VARIABLE_VALUEB'variables/52/.ATTRIBUTES/VARIABLE_VALUEB'variables/53/.ATTRIBUTES/VARIABLE_VALUEB'variables/54/.ATTRIBUTES/VARIABLE_VALUEB'variables/55/.ATTRIBUTES/VARIABLE_VALUEB'variables/56/.ATTRIBUTES/VARIABLE_VALUEB'variables/57/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:G*
dtype0*£
valueBGB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*²
_output_shapes
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*U
dtypesK
I2G[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp.assignvariableop_layer_normalization_432_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp/assignvariableop_1_layer_normalization_432_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp0assignvariableop_2_layer_normalization_433_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp/assignvariableop_3_layer_normalization_433_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv1d_432_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv1d_432_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv1d_433_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv1d_433_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp0assignvariableop_8_layer_normalization_434_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp/assignvariableop_9_layer_normalization_434_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_10AssignVariableOp1assignvariableop_10_layer_normalization_435_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_11AssignVariableOp0assignvariableop_11_layer_normalization_435_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv1d_434_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv1d_434_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp%assignvariableop_14_conv1d_435_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp#assignvariableop_15_conv1d_435_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_16AssignVariableOp1assignvariableop_16_layer_normalization_436_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_17AssignVariableOp0assignvariableop_17_layer_normalization_436_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_18AssignVariableOp1assignvariableop_18_layer_normalization_437_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_19AssignVariableOp0assignvariableop_19_layer_normalization_437_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp%assignvariableop_20_conv1d_436_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp#assignvariableop_21_conv1d_436_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp%assignvariableop_22_conv1d_437_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp#assignvariableop_23_conv1d_437_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_24AssignVariableOp1assignvariableop_24_layer_normalization_438_gammaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_25AssignVariableOp0assignvariableop_25_layer_normalization_438_betaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_26AssignVariableOp1assignvariableop_26_layer_normalization_439_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_27AssignVariableOp0assignvariableop_27_layer_normalization_439_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp%assignvariableop_28_conv1d_438_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp#assignvariableop_29_conv1d_438_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp%assignvariableop_30_conv1d_439_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp#assignvariableop_31_conv1d_439_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp$assignvariableop_32_dense_108_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp"assignvariableop_33_dense_108_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp$assignvariableop_34_dense_109_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp"assignvariableop_35_dense_109_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_36AssignVariableOp9assignvariableop_36_multi_head_attention_216_query_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_37AssignVariableOp7assignvariableop_37_multi_head_attention_216_query_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_38AssignVariableOp7assignvariableop_38_multi_head_attention_216_key_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_39AssignVariableOp5assignvariableop_39_multi_head_attention_216_key_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_40AssignVariableOp9assignvariableop_40_multi_head_attention_216_value_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_41AssignVariableOp7assignvariableop_41_multi_head_attention_216_value_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_42AssignVariableOpDassignvariableop_42_multi_head_attention_216_attention_output_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_43AssignVariableOpBassignvariableop_43_multi_head_attention_216_attention_output_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_44AssignVariableOp9assignvariableop_44_multi_head_attention_217_query_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_45AssignVariableOp7assignvariableop_45_multi_head_attention_217_query_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_46AssignVariableOp7assignvariableop_46_multi_head_attention_217_key_kernelIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_47AssignVariableOp5assignvariableop_47_multi_head_attention_217_key_biasIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_48AssignVariableOp9assignvariableop_48_multi_head_attention_217_value_kernelIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_49AssignVariableOp7assignvariableop_49_multi_head_attention_217_value_biasIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_50AssignVariableOpDassignvariableop_50_multi_head_attention_217_attention_output_kernelIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_51AssignVariableOpBassignvariableop_51_multi_head_attention_217_attention_output_biasIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_52AssignVariableOp9assignvariableop_52_multi_head_attention_218_query_kernelIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_53AssignVariableOp7assignvariableop_53_multi_head_attention_218_query_biasIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_54AssignVariableOp7assignvariableop_54_multi_head_attention_218_key_kernelIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_55AssignVariableOp5assignvariableop_55_multi_head_attention_218_key_biasIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_56AssignVariableOp9assignvariableop_56_multi_head_attention_218_value_kernelIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_57AssignVariableOp7assignvariableop_57_multi_head_attention_218_value_biasIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_58AssignVariableOpDassignvariableop_58_multi_head_attention_218_attention_output_kernelIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_59AssignVariableOpBassignvariableop_59_multi_head_attention_218_attention_output_biasIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_60AssignVariableOp9assignvariableop_60_multi_head_attention_219_query_kernelIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_61AssignVariableOp7assignvariableop_61_multi_head_attention_219_query_biasIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_62AssignVariableOp7assignvariableop_62_multi_head_attention_219_key_kernelIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_63AssignVariableOp5assignvariableop_63_multi_head_attention_219_key_biasIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_64AssignVariableOp9assignvariableop_64_multi_head_attention_219_value_kernelIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_65AssignVariableOp7assignvariableop_65_multi_head_attention_219_value_biasIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_66AssignVariableOpDassignvariableop_66_multi_head_attention_219_attention_output_kernelIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_67AssignVariableOpBassignvariableop_67_multi_head_attention_219_attention_output_biasIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_68AssignVariableOpassignvariableop_68_totalIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_69AssignVariableOpassignvariableop_69_countIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ó
Identity_70Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_71IdentityIdentity_70:output:0^NoOp_1*
T0*
_output_shapes
: À
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_71Identity_71:output:0*£
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ç2

U__inference_multi_head_attention_218_layer_call_and_return_conditional_losses_1685351	
query	
valueB
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	@
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	B
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	M
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbeo
softmax_42/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_537/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout_537/dropout/MulMulsoftmax_42/Softmax:softmax:0"dropout_537/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dropout_537/dropout/ShapeShapesoftmax_42/Softmax:softmax:0*
T0*
_output_shapes
:¬
0dropout_537/dropout/random_uniform/RandomUniformRandomUniform"dropout_537/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_537/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ò
 dropout_537/dropout/GreaterEqualGreaterEqual9dropout_537/dropout/random_uniform/RandomUniform:output:0+dropout_537/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_537/dropout/CastCast$dropout_537/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_537/dropout/Mul_1Muldropout_537/dropout/Mul:z:0dropout_537/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
einsum_1/EinsumEinsumdropout_537/dropout/Mul_1:z:0value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcd©
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue

f
-__inference_dropout_526_layer_call_fn_1688151

inputs
identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_526_layer_call_and_return_conditional_losses_1685626s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

G__inference_conv1d_439_layer_call_and_return_conditional_losses_1684803

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
f
H__inference_dropout_531_layer_call_and_return_conditional_losses_1688811

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
f
H__inference_dropout_530_layer_call_and_return_conditional_losses_1688728

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
I
-__inference_dropout_532_layer_call_fn_1689004

inputs
identityº
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_532_layer_call_and_return_conditional_losses_1684728d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß

,__inference_conv1d_439_layer_call_fn_1689118

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_439_layer_call_and_return_conditional_losses_1684803s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Y
=__inference_global_average_pooling1d_54_layer_call_fn_1689138

inputs
identityÏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *a
f\RZ
X__inference_global_average_pooling1d_54_layer_call_and_return_conditional_losses_1684128i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
-__inference_dropout_533_layer_call_fn_1689092

inputs
identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_533_layer_call_and_return_conditional_losses_1685064s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

T__inference_layer_normalization_436_layer_call_and_return_conditional_losses_1688592

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß

,__inference_conv1d_432_layer_call_fn_1688208

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_432_layer_call_and_return_conditional_losses_1684271s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

T__inference_layer_normalization_436_layer_call_and_return_conditional_losses_1684496

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


g
H__inference_dropout_526_layer_call_and_return_conditional_losses_1688168

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß
f
H__inference_dropout_534_layer_call_and_return_conditional_losses_1684833

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


g
H__inference_dropout_533_layer_call_and_return_conditional_losses_1689109

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í	
ø
F__inference_dense_109_layer_call_and_return_conditional_losses_1684845

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
-__inference_dropout_527_layer_call_fn_1688234

inputs
identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_527_layer_call_and_return_conditional_losses_1685583s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë

G__inference_conv1d_434_layer_call_and_return_conditional_losses_1684439

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
f
H__inference_dropout_533_layer_call_and_return_conditional_losses_1689097

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
-__inference_dropout_528_layer_call_fn_1688437

inputs
identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_528_layer_call_and_return_conditional_losses_1685453s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ö
:__inference_multi_head_attention_216_layer_call_fn_1688042	
query	
value
unknown:
	unknown_0:	 
	unknown_1:
	unknown_2:	 
	unknown_3:
	unknown_4:	 
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_216_layer_call_and_return_conditional_losses_1684201s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
ó

T__inference_layer_normalization_432_layer_call_and_return_conditional_losses_1684160

inputs3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


g
H__inference_dropout_527_layer_call_and_return_conditional_losses_1688251

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ*

U__inference_multi_head_attention_216_layer_call_and_return_conditional_losses_1688099	
query	
valueB
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	@
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	B
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	M
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbeo
softmax_40/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
dropout_535/IdentityIdentitysoftmax_40/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
einsum_1/EinsumEinsumdropout_535/Identity:output:0value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcd©
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
ñ
¢
9__inference_layer_normalization_433_layer_call_fn_1688177

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallð
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_433_layer_call_and_return_conditional_losses_1684249s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó

G__inference_conv1d_439_layer_call_and_return_conditional_losses_1689133

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß

,__inference_conv1d_438_layer_call_fn_1689066

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_438_layer_call_and_return_conditional_losses_1684775s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


g
H__inference_dropout_531_layer_call_and_return_conditional_losses_1688823

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸
I
-__inference_dropout_526_layer_call_fn_1688146

inputs
identityº
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_526_layer_call_and_return_conditional_losses_1684224d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

t
X__inference_global_average_pooling1d_54_layer_call_and_return_conditional_losses_1689144

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


g
H__inference_dropout_532_layer_call_and_return_conditional_losses_1685107

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ	
g
H__inference_dropout_534_layer_call_and_return_conditional_losses_1689191

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
áÉ
±$
E__inference_model_54_layer_call_and_return_conditional_losses_1686049

inputs-
layer_normalization_432_1685872:-
layer_normalization_432_1685874:7
 multi_head_attention_216_1685877:3
 multi_head_attention_216_1685879:	7
 multi_head_attention_216_1685881:3
 multi_head_attention_216_1685883:	7
 multi_head_attention_216_1685885:3
 multi_head_attention_216_1685887:	7
 multi_head_attention_216_1685889:.
 multi_head_attention_216_1685891:-
layer_normalization_433_1685896:-
layer_normalization_433_1685898:(
conv1d_432_1685901: 
conv1d_432_1685903:(
conv1d_433_1685907: 
conv1d_433_1685909:-
layer_normalization_434_1685913:-
layer_normalization_434_1685915:7
 multi_head_attention_217_1685918:3
 multi_head_attention_217_1685920:	7
 multi_head_attention_217_1685922:3
 multi_head_attention_217_1685924:	7
 multi_head_attention_217_1685926:3
 multi_head_attention_217_1685928:	7
 multi_head_attention_217_1685930:.
 multi_head_attention_217_1685932:-
layer_normalization_435_1685937:-
layer_normalization_435_1685939:(
conv1d_434_1685942: 
conv1d_434_1685944:(
conv1d_435_1685948: 
conv1d_435_1685950:-
layer_normalization_436_1685954:-
layer_normalization_436_1685956:7
 multi_head_attention_218_1685959:3
 multi_head_attention_218_1685961:	7
 multi_head_attention_218_1685963:3
 multi_head_attention_218_1685965:	7
 multi_head_attention_218_1685967:3
 multi_head_attention_218_1685969:	7
 multi_head_attention_218_1685971:.
 multi_head_attention_218_1685973:-
layer_normalization_437_1685978:-
layer_normalization_437_1685980:(
conv1d_436_1685983: 
conv1d_436_1685985:(
conv1d_437_1685989: 
conv1d_437_1685991:-
layer_normalization_438_1685995:-
layer_normalization_438_1685997:7
 multi_head_attention_219_1686000:3
 multi_head_attention_219_1686002:	7
 multi_head_attention_219_1686004:3
 multi_head_attention_219_1686006:	7
 multi_head_attention_219_1686008:3
 multi_head_attention_219_1686010:	7
 multi_head_attention_219_1686012:.
 multi_head_attention_219_1686014:-
layer_normalization_439_1686019:-
layer_normalization_439_1686021:(
conv1d_438_1686024: 
conv1d_438_1686026:(
conv1d_439_1686030: 
conv1d_439_1686032:$
dense_108_1686037:	 
dense_108_1686039:	$
dense_109_1686043:	
dense_109_1686045:
identity¢"conv1d_432/StatefulPartitionedCall¢"conv1d_433/StatefulPartitionedCall¢"conv1d_434/StatefulPartitionedCall¢"conv1d_435/StatefulPartitionedCall¢"conv1d_436/StatefulPartitionedCall¢"conv1d_437/StatefulPartitionedCall¢"conv1d_438/StatefulPartitionedCall¢"conv1d_439/StatefulPartitionedCall¢!dense_108/StatefulPartitionedCall¢!dense_109/StatefulPartitionedCall¢#dropout_526/StatefulPartitionedCall¢#dropout_527/StatefulPartitionedCall¢#dropout_528/StatefulPartitionedCall¢#dropout_529/StatefulPartitionedCall¢#dropout_530/StatefulPartitionedCall¢#dropout_531/StatefulPartitionedCall¢#dropout_532/StatefulPartitionedCall¢#dropout_533/StatefulPartitionedCall¢#dropout_534/StatefulPartitionedCall¢/layer_normalization_432/StatefulPartitionedCall¢/layer_normalization_433/StatefulPartitionedCall¢/layer_normalization_434/StatefulPartitionedCall¢/layer_normalization_435/StatefulPartitionedCall¢/layer_normalization_436/StatefulPartitionedCall¢/layer_normalization_437/StatefulPartitionedCall¢/layer_normalization_438/StatefulPartitionedCall¢/layer_normalization_439/StatefulPartitionedCall¢0multi_head_attention_216/StatefulPartitionedCall¢0multi_head_attention_217/StatefulPartitionedCall¢0multi_head_attention_218/StatefulPartitionedCall¢0multi_head_attention_219/StatefulPartitionedCall¶
/layer_normalization_432/StatefulPartitionedCallStatefulPartitionedCallinputslayer_normalization_432_1685872layer_normalization_432_1685874*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_432_layer_call_and_return_conditional_losses_1684160ÿ
0multi_head_attention_216/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_432/StatefulPartitionedCall:output:08layer_normalization_432/StatefulPartitionedCall:output:0 multi_head_attention_216_1685877 multi_head_attention_216_1685879 multi_head_attention_216_1685881 multi_head_attention_216_1685883 multi_head_attention_216_1685885 multi_head_attention_216_1685887 multi_head_attention_216_1685889 multi_head_attention_216_1685891*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_216_layer_call_and_return_conditional_losses_1685697
#dropout_526/StatefulPartitionedCallStatefulPartitionedCall9multi_head_attention_216/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_526_layer_call_and_return_conditional_losses_1685626
tf.__operators__.add_432/AddV2AddV2,dropout_526/StatefulPartitionedCall:output:0inputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_433/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_432/AddV2:z:0layer_normalization_433_1685896layer_normalization_433_1685898*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_433_layer_call_and_return_conditional_losses_1684249´
"conv1d_432/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_433/StatefulPartitionedCall:output:0conv1d_432_1685901conv1d_432_1685903*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_432_layer_call_and_return_conditional_losses_1684271¡
#dropout_527/StatefulPartitionedCallStatefulPartitionedCall+conv1d_432/StatefulPartitionedCall:output:0$^dropout_526/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_527_layer_call_and_return_conditional_losses_1685583¨
"conv1d_433/StatefulPartitionedCallStatefulPartitionedCall,dropout_527/StatefulPartitionedCall:output:0conv1d_433_1685907conv1d_433_1685909*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_433_layer_call_and_return_conditional_losses_1684299®
tf.__operators__.add_433/AddV2AddV2+conv1d_433/StatefulPartitionedCall:output:0"tf.__operators__.add_432/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_434/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_433/AddV2:z:0layer_normalization_434_1685913layer_normalization_434_1685915*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_434_layer_call_and_return_conditional_losses_1684328ÿ
0multi_head_attention_217/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_434/StatefulPartitionedCall:output:08layer_normalization_434/StatefulPartitionedCall:output:0 multi_head_attention_217_1685918 multi_head_attention_217_1685920 multi_head_attention_217_1685922 multi_head_attention_217_1685924 multi_head_attention_217_1685926 multi_head_attention_217_1685928 multi_head_attention_217_1685930 multi_head_attention_217_1685932*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_217_layer_call_and_return_conditional_losses_1685524¯
#dropout_528/StatefulPartitionedCallStatefulPartitionedCall9multi_head_attention_217/StatefulPartitionedCall:output:0$^dropout_527/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_528_layer_call_and_return_conditional_losses_1685453¯
tf.__operators__.add_434/AddV2AddV2,dropout_528/StatefulPartitionedCall:output:0"tf.__operators__.add_433/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_435/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_434/AddV2:z:0layer_normalization_435_1685937layer_normalization_435_1685939*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_435_layer_call_and_return_conditional_losses_1684417´
"conv1d_434/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_435/StatefulPartitionedCall:output:0conv1d_434_1685942conv1d_434_1685944*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_434_layer_call_and_return_conditional_losses_1684439¡
#dropout_529/StatefulPartitionedCallStatefulPartitionedCall+conv1d_434/StatefulPartitionedCall:output:0$^dropout_528/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_529_layer_call_and_return_conditional_losses_1685410¨
"conv1d_435/StatefulPartitionedCallStatefulPartitionedCall,dropout_529/StatefulPartitionedCall:output:0conv1d_435_1685948conv1d_435_1685950*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_435_layer_call_and_return_conditional_losses_1684467®
tf.__operators__.add_435/AddV2AddV2+conv1d_435/StatefulPartitionedCall:output:0"tf.__operators__.add_434/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_436/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_435/AddV2:z:0layer_normalization_436_1685954layer_normalization_436_1685956*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_436_layer_call_and_return_conditional_losses_1684496ÿ
0multi_head_attention_218/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_436/StatefulPartitionedCall:output:08layer_normalization_436/StatefulPartitionedCall:output:0 multi_head_attention_218_1685959 multi_head_attention_218_1685961 multi_head_attention_218_1685963 multi_head_attention_218_1685965 multi_head_attention_218_1685967 multi_head_attention_218_1685969 multi_head_attention_218_1685971 multi_head_attention_218_1685973*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_218_layer_call_and_return_conditional_losses_1685351¯
#dropout_530/StatefulPartitionedCallStatefulPartitionedCall9multi_head_attention_218/StatefulPartitionedCall:output:0$^dropout_529/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_530_layer_call_and_return_conditional_losses_1685280¯
tf.__operators__.add_436/AddV2AddV2,dropout_530/StatefulPartitionedCall:output:0"tf.__operators__.add_435/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_437/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_436/AddV2:z:0layer_normalization_437_1685978layer_normalization_437_1685980*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_437_layer_call_and_return_conditional_losses_1684585´
"conv1d_436/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_437/StatefulPartitionedCall:output:0conv1d_436_1685983conv1d_436_1685985*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_436_layer_call_and_return_conditional_losses_1684607¡
#dropout_531/StatefulPartitionedCallStatefulPartitionedCall+conv1d_436/StatefulPartitionedCall:output:0$^dropout_530/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_531_layer_call_and_return_conditional_losses_1685237¨
"conv1d_437/StatefulPartitionedCallStatefulPartitionedCall,dropout_531/StatefulPartitionedCall:output:0conv1d_437_1685989conv1d_437_1685991*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_437_layer_call_and_return_conditional_losses_1684635®
tf.__operators__.add_437/AddV2AddV2+conv1d_437/StatefulPartitionedCall:output:0"tf.__operators__.add_436/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_438/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_437/AddV2:z:0layer_normalization_438_1685995layer_normalization_438_1685997*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_438_layer_call_and_return_conditional_losses_1684664ÿ
0multi_head_attention_219/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_438/StatefulPartitionedCall:output:08layer_normalization_438/StatefulPartitionedCall:output:0 multi_head_attention_219_1686000 multi_head_attention_219_1686002 multi_head_attention_219_1686004 multi_head_attention_219_1686006 multi_head_attention_219_1686008 multi_head_attention_219_1686010 multi_head_attention_219_1686012 multi_head_attention_219_1686014*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_219_layer_call_and_return_conditional_losses_1685178¯
#dropout_532/StatefulPartitionedCallStatefulPartitionedCall9multi_head_attention_219/StatefulPartitionedCall:output:0$^dropout_531/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_532_layer_call_and_return_conditional_losses_1685107¯
tf.__operators__.add_438/AddV2AddV2,dropout_532/StatefulPartitionedCall:output:0"tf.__operators__.add_437/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_439/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_438/AddV2:z:0layer_normalization_439_1686019layer_normalization_439_1686021*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_439_layer_call_and_return_conditional_losses_1684753´
"conv1d_438/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_439/StatefulPartitionedCall:output:0conv1d_438_1686024conv1d_438_1686026*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_438_layer_call_and_return_conditional_losses_1684775¡
#dropout_533/StatefulPartitionedCallStatefulPartitionedCall+conv1d_438/StatefulPartitionedCall:output:0$^dropout_532/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_533_layer_call_and_return_conditional_losses_1685064¨
"conv1d_439/StatefulPartitionedCallStatefulPartitionedCall,dropout_533/StatefulPartitionedCall:output:0conv1d_439_1686030conv1d_439_1686032*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_439_layer_call_and_return_conditional_losses_1684803®
tf.__operators__.add_439/AddV2AddV2+conv1d_439/StatefulPartitionedCall:output:0"tf.__operators__.add_438/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
+global_average_pooling1d_54/PartitionedCallPartitionedCall"tf.__operators__.add_439/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *a
f\RZ
X__inference_global_average_pooling1d_54_layer_call_and_return_conditional_losses_1684128©
!dense_108/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling1d_54/PartitionedCall:output:0dense_108_1686037dense_108_1686039*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_108_layer_call_and_return_conditional_losses_1684822
#dropout_534/StatefulPartitionedCallStatefulPartitionedCall*dense_108/StatefulPartitionedCall:output:0$^dropout_533/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_534_layer_call_and_return_conditional_losses_1685021 
!dense_109/StatefulPartitionedCallStatefulPartitionedCall,dropout_534/StatefulPartitionedCall:output:0dense_109_1686043dense_109_1686045*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_109_layer_call_and_return_conditional_losses_1684845y
IdentityIdentity*dense_109/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿè

NoOpNoOp#^conv1d_432/StatefulPartitionedCall#^conv1d_433/StatefulPartitionedCall#^conv1d_434/StatefulPartitionedCall#^conv1d_435/StatefulPartitionedCall#^conv1d_436/StatefulPartitionedCall#^conv1d_437/StatefulPartitionedCall#^conv1d_438/StatefulPartitionedCall#^conv1d_439/StatefulPartitionedCall"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall$^dropout_526/StatefulPartitionedCall$^dropout_527/StatefulPartitionedCall$^dropout_528/StatefulPartitionedCall$^dropout_529/StatefulPartitionedCall$^dropout_530/StatefulPartitionedCall$^dropout_531/StatefulPartitionedCall$^dropout_532/StatefulPartitionedCall$^dropout_533/StatefulPartitionedCall$^dropout_534/StatefulPartitionedCall0^layer_normalization_432/StatefulPartitionedCall0^layer_normalization_433/StatefulPartitionedCall0^layer_normalization_434/StatefulPartitionedCall0^layer_normalization_435/StatefulPartitionedCall0^layer_normalization_436/StatefulPartitionedCall0^layer_normalization_437/StatefulPartitionedCall0^layer_normalization_438/StatefulPartitionedCall0^layer_normalization_439/StatefulPartitionedCall1^multi_head_attention_216/StatefulPartitionedCall1^multi_head_attention_217/StatefulPartitionedCall1^multi_head_attention_218/StatefulPartitionedCall1^multi_head_attention_219/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes¢
:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv1d_432/StatefulPartitionedCall"conv1d_432/StatefulPartitionedCall2H
"conv1d_433/StatefulPartitionedCall"conv1d_433/StatefulPartitionedCall2H
"conv1d_434/StatefulPartitionedCall"conv1d_434/StatefulPartitionedCall2H
"conv1d_435/StatefulPartitionedCall"conv1d_435/StatefulPartitionedCall2H
"conv1d_436/StatefulPartitionedCall"conv1d_436/StatefulPartitionedCall2H
"conv1d_437/StatefulPartitionedCall"conv1d_437/StatefulPartitionedCall2H
"conv1d_438/StatefulPartitionedCall"conv1d_438/StatefulPartitionedCall2H
"conv1d_439/StatefulPartitionedCall"conv1d_439/StatefulPartitionedCall2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2J
#dropout_526/StatefulPartitionedCall#dropout_526/StatefulPartitionedCall2J
#dropout_527/StatefulPartitionedCall#dropout_527/StatefulPartitionedCall2J
#dropout_528/StatefulPartitionedCall#dropout_528/StatefulPartitionedCall2J
#dropout_529/StatefulPartitionedCall#dropout_529/StatefulPartitionedCall2J
#dropout_530/StatefulPartitionedCall#dropout_530/StatefulPartitionedCall2J
#dropout_531/StatefulPartitionedCall#dropout_531/StatefulPartitionedCall2J
#dropout_532/StatefulPartitionedCall#dropout_532/StatefulPartitionedCall2J
#dropout_533/StatefulPartitionedCall#dropout_533/StatefulPartitionedCall2J
#dropout_534/StatefulPartitionedCall#dropout_534/StatefulPartitionedCall2b
/layer_normalization_432/StatefulPartitionedCall/layer_normalization_432/StatefulPartitionedCall2b
/layer_normalization_433/StatefulPartitionedCall/layer_normalization_433/StatefulPartitionedCall2b
/layer_normalization_434/StatefulPartitionedCall/layer_normalization_434/StatefulPartitionedCall2b
/layer_normalization_435/StatefulPartitionedCall/layer_normalization_435/StatefulPartitionedCall2b
/layer_normalization_436/StatefulPartitionedCall/layer_normalization_436/StatefulPartitionedCall2b
/layer_normalization_437/StatefulPartitionedCall/layer_normalization_437/StatefulPartitionedCall2b
/layer_normalization_438/StatefulPartitionedCall/layer_normalization_438/StatefulPartitionedCall2b
/layer_normalization_439/StatefulPartitionedCall/layer_normalization_439/StatefulPartitionedCall2d
0multi_head_attention_216/StatefulPartitionedCall0multi_head_attention_216/StatefulPartitionedCall2d
0multi_head_attention_217/StatefulPartitionedCall0multi_head_attention_217/StatefulPartitionedCall2d
0multi_head_attention_218/StatefulPartitionedCall0multi_head_attention_218/StatefulPartitionedCall2d
0multi_head_attention_219/StatefulPartitionedCall0multi_head_attention_219/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­
×
*__inference_model_54_layer_call_fn_1684991
input_55
unknown:
	unknown_0: 
	unknown_1:
	unknown_2:	 
	unknown_3:
	unknown_4:	 
	unknown_5:
	unknown_6:	 
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10: 

unknown_11:

unknown_12: 

unknown_13:

unknown_14:

unknown_15:

unknown_16:!

unknown_17:

unknown_18:	!

unknown_19:

unknown_20:	!

unknown_21:

unknown_22:	!

unknown_23:

unknown_24:

unknown_25:

unknown_26: 

unknown_27:

unknown_28: 

unknown_29:

unknown_30:

unknown_31:

unknown_32:!

unknown_33:

unknown_34:	!

unknown_35:

unknown_36:	!

unknown_37:

unknown_38:	!

unknown_39:

unknown_40:

unknown_41:

unknown_42: 

unknown_43:

unknown_44: 

unknown_45:

unknown_46:

unknown_47:

unknown_48:!

unknown_49:

unknown_50:	!

unknown_51:

unknown_52:	!

unknown_53:

unknown_54:	!

unknown_55:

unknown_56:

unknown_57:

unknown_58: 

unknown_59:

unknown_60: 

unknown_61:

unknown_62:

unknown_63:	

unknown_64:	

unknown_65:	

unknown_66:
identity¢StatefulPartitionedCallò	
StatefulPartitionedCallStatefulPartitionedCallinput_55unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*f
_read_only_resource_inputsH
FD	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCD*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_model_54_layer_call_and_return_conditional_losses_1684852o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes¢
:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_55


g
H__inference_dropout_527_layer_call_and_return_conditional_losses_1685583

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ö
:__inference_multi_head_attention_216_layer_call_fn_1688064	
query	
value
unknown:
	unknown_0:	 
	unknown_1:
	unknown_2:	 
	unknown_3:
	unknown_4:	 
	unknown_5:
	unknown_6:
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_216_layer_call_and_return_conditional_losses_1685697s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
ó

G__inference_conv1d_437_layer_call_and_return_conditional_losses_1684635

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç2

U__inference_multi_head_attention_219_layer_call_and_return_conditional_losses_1688999	
query	
valueB
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	@
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	B
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	M
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbeo
softmax_43/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dropout_538/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout_538/dropout/MulMulsoftmax_43/Softmax:softmax:0"dropout_538/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
dropout_538/dropout/ShapeShapesoftmax_43/Softmax:softmax:0*
T0*
_output_shapes
:¬
0dropout_538/dropout/random_uniform/RandomUniformRandomUniform"dropout_538/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"dropout_538/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ò
 dropout_538/dropout/GreaterEqualGreaterEqual9dropout_538/dropout/random_uniform/RandomUniform:output:0+dropout_538/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_538/dropout/CastCast$dropout_538/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_538/dropout/Mul_1Muldropout_538/dropout/Mul:z:0dropout_538/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
einsum_1/EinsumEinsumdropout_538/dropout/Mul_1:z:0value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcd©
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue


g
H__inference_dropout_533_layer_call_and_return_conditional_losses_1685064

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >ª
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
éÉ
³$
E__inference_model_54_layer_call_and_return_conditional_losses_1686689
input_55-
layer_normalization_432_1686512:-
layer_normalization_432_1686514:7
 multi_head_attention_216_1686517:3
 multi_head_attention_216_1686519:	7
 multi_head_attention_216_1686521:3
 multi_head_attention_216_1686523:	7
 multi_head_attention_216_1686525:3
 multi_head_attention_216_1686527:	7
 multi_head_attention_216_1686529:.
 multi_head_attention_216_1686531:-
layer_normalization_433_1686536:-
layer_normalization_433_1686538:(
conv1d_432_1686541: 
conv1d_432_1686543:(
conv1d_433_1686547: 
conv1d_433_1686549:-
layer_normalization_434_1686553:-
layer_normalization_434_1686555:7
 multi_head_attention_217_1686558:3
 multi_head_attention_217_1686560:	7
 multi_head_attention_217_1686562:3
 multi_head_attention_217_1686564:	7
 multi_head_attention_217_1686566:3
 multi_head_attention_217_1686568:	7
 multi_head_attention_217_1686570:.
 multi_head_attention_217_1686572:-
layer_normalization_435_1686577:-
layer_normalization_435_1686579:(
conv1d_434_1686582: 
conv1d_434_1686584:(
conv1d_435_1686588: 
conv1d_435_1686590:-
layer_normalization_436_1686594:-
layer_normalization_436_1686596:7
 multi_head_attention_218_1686599:3
 multi_head_attention_218_1686601:	7
 multi_head_attention_218_1686603:3
 multi_head_attention_218_1686605:	7
 multi_head_attention_218_1686607:3
 multi_head_attention_218_1686609:	7
 multi_head_attention_218_1686611:.
 multi_head_attention_218_1686613:-
layer_normalization_437_1686618:-
layer_normalization_437_1686620:(
conv1d_436_1686623: 
conv1d_436_1686625:(
conv1d_437_1686629: 
conv1d_437_1686631:-
layer_normalization_438_1686635:-
layer_normalization_438_1686637:7
 multi_head_attention_219_1686640:3
 multi_head_attention_219_1686642:	7
 multi_head_attention_219_1686644:3
 multi_head_attention_219_1686646:	7
 multi_head_attention_219_1686648:3
 multi_head_attention_219_1686650:	7
 multi_head_attention_219_1686652:.
 multi_head_attention_219_1686654:-
layer_normalization_439_1686659:-
layer_normalization_439_1686661:(
conv1d_438_1686664: 
conv1d_438_1686666:(
conv1d_439_1686670: 
conv1d_439_1686672:$
dense_108_1686677:	 
dense_108_1686679:	$
dense_109_1686683:	
dense_109_1686685:
identity¢"conv1d_432/StatefulPartitionedCall¢"conv1d_433/StatefulPartitionedCall¢"conv1d_434/StatefulPartitionedCall¢"conv1d_435/StatefulPartitionedCall¢"conv1d_436/StatefulPartitionedCall¢"conv1d_437/StatefulPartitionedCall¢"conv1d_438/StatefulPartitionedCall¢"conv1d_439/StatefulPartitionedCall¢!dense_108/StatefulPartitionedCall¢!dense_109/StatefulPartitionedCall¢#dropout_526/StatefulPartitionedCall¢#dropout_527/StatefulPartitionedCall¢#dropout_528/StatefulPartitionedCall¢#dropout_529/StatefulPartitionedCall¢#dropout_530/StatefulPartitionedCall¢#dropout_531/StatefulPartitionedCall¢#dropout_532/StatefulPartitionedCall¢#dropout_533/StatefulPartitionedCall¢#dropout_534/StatefulPartitionedCall¢/layer_normalization_432/StatefulPartitionedCall¢/layer_normalization_433/StatefulPartitionedCall¢/layer_normalization_434/StatefulPartitionedCall¢/layer_normalization_435/StatefulPartitionedCall¢/layer_normalization_436/StatefulPartitionedCall¢/layer_normalization_437/StatefulPartitionedCall¢/layer_normalization_438/StatefulPartitionedCall¢/layer_normalization_439/StatefulPartitionedCall¢0multi_head_attention_216/StatefulPartitionedCall¢0multi_head_attention_217/StatefulPartitionedCall¢0multi_head_attention_218/StatefulPartitionedCall¢0multi_head_attention_219/StatefulPartitionedCall¸
/layer_normalization_432/StatefulPartitionedCallStatefulPartitionedCallinput_55layer_normalization_432_1686512layer_normalization_432_1686514*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_432_layer_call_and_return_conditional_losses_1684160ÿ
0multi_head_attention_216/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_432/StatefulPartitionedCall:output:08layer_normalization_432/StatefulPartitionedCall:output:0 multi_head_attention_216_1686517 multi_head_attention_216_1686519 multi_head_attention_216_1686521 multi_head_attention_216_1686523 multi_head_attention_216_1686525 multi_head_attention_216_1686527 multi_head_attention_216_1686529 multi_head_attention_216_1686531*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_216_layer_call_and_return_conditional_losses_1685697
#dropout_526/StatefulPartitionedCallStatefulPartitionedCall9multi_head_attention_216/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_526_layer_call_and_return_conditional_losses_1685626
tf.__operators__.add_432/AddV2AddV2,dropout_526/StatefulPartitionedCall:output:0input_55*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_433/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_432/AddV2:z:0layer_normalization_433_1686536layer_normalization_433_1686538*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_433_layer_call_and_return_conditional_losses_1684249´
"conv1d_432/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_433/StatefulPartitionedCall:output:0conv1d_432_1686541conv1d_432_1686543*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_432_layer_call_and_return_conditional_losses_1684271¡
#dropout_527/StatefulPartitionedCallStatefulPartitionedCall+conv1d_432/StatefulPartitionedCall:output:0$^dropout_526/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_527_layer_call_and_return_conditional_losses_1685583¨
"conv1d_433/StatefulPartitionedCallStatefulPartitionedCall,dropout_527/StatefulPartitionedCall:output:0conv1d_433_1686547conv1d_433_1686549*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_433_layer_call_and_return_conditional_losses_1684299®
tf.__operators__.add_433/AddV2AddV2+conv1d_433/StatefulPartitionedCall:output:0"tf.__operators__.add_432/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_434/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_433/AddV2:z:0layer_normalization_434_1686553layer_normalization_434_1686555*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_434_layer_call_and_return_conditional_losses_1684328ÿ
0multi_head_attention_217/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_434/StatefulPartitionedCall:output:08layer_normalization_434/StatefulPartitionedCall:output:0 multi_head_attention_217_1686558 multi_head_attention_217_1686560 multi_head_attention_217_1686562 multi_head_attention_217_1686564 multi_head_attention_217_1686566 multi_head_attention_217_1686568 multi_head_attention_217_1686570 multi_head_attention_217_1686572*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_217_layer_call_and_return_conditional_losses_1685524¯
#dropout_528/StatefulPartitionedCallStatefulPartitionedCall9multi_head_attention_217/StatefulPartitionedCall:output:0$^dropout_527/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_528_layer_call_and_return_conditional_losses_1685453¯
tf.__operators__.add_434/AddV2AddV2,dropout_528/StatefulPartitionedCall:output:0"tf.__operators__.add_433/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_435/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_434/AddV2:z:0layer_normalization_435_1686577layer_normalization_435_1686579*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_435_layer_call_and_return_conditional_losses_1684417´
"conv1d_434/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_435/StatefulPartitionedCall:output:0conv1d_434_1686582conv1d_434_1686584*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_434_layer_call_and_return_conditional_losses_1684439¡
#dropout_529/StatefulPartitionedCallStatefulPartitionedCall+conv1d_434/StatefulPartitionedCall:output:0$^dropout_528/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_529_layer_call_and_return_conditional_losses_1685410¨
"conv1d_435/StatefulPartitionedCallStatefulPartitionedCall,dropout_529/StatefulPartitionedCall:output:0conv1d_435_1686588conv1d_435_1686590*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_435_layer_call_and_return_conditional_losses_1684467®
tf.__operators__.add_435/AddV2AddV2+conv1d_435/StatefulPartitionedCall:output:0"tf.__operators__.add_434/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_436/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_435/AddV2:z:0layer_normalization_436_1686594layer_normalization_436_1686596*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_436_layer_call_and_return_conditional_losses_1684496ÿ
0multi_head_attention_218/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_436/StatefulPartitionedCall:output:08layer_normalization_436/StatefulPartitionedCall:output:0 multi_head_attention_218_1686599 multi_head_attention_218_1686601 multi_head_attention_218_1686603 multi_head_attention_218_1686605 multi_head_attention_218_1686607 multi_head_attention_218_1686609 multi_head_attention_218_1686611 multi_head_attention_218_1686613*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_218_layer_call_and_return_conditional_losses_1685351¯
#dropout_530/StatefulPartitionedCallStatefulPartitionedCall9multi_head_attention_218/StatefulPartitionedCall:output:0$^dropout_529/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_530_layer_call_and_return_conditional_losses_1685280¯
tf.__operators__.add_436/AddV2AddV2,dropout_530/StatefulPartitionedCall:output:0"tf.__operators__.add_435/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_437/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_436/AddV2:z:0layer_normalization_437_1686618layer_normalization_437_1686620*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_437_layer_call_and_return_conditional_losses_1684585´
"conv1d_436/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_437/StatefulPartitionedCall:output:0conv1d_436_1686623conv1d_436_1686625*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_436_layer_call_and_return_conditional_losses_1684607¡
#dropout_531/StatefulPartitionedCallStatefulPartitionedCall+conv1d_436/StatefulPartitionedCall:output:0$^dropout_530/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_531_layer_call_and_return_conditional_losses_1685237¨
"conv1d_437/StatefulPartitionedCallStatefulPartitionedCall,dropout_531/StatefulPartitionedCall:output:0conv1d_437_1686629conv1d_437_1686631*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_437_layer_call_and_return_conditional_losses_1684635®
tf.__operators__.add_437/AddV2AddV2+conv1d_437/StatefulPartitionedCall:output:0"tf.__operators__.add_436/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_438/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_437/AddV2:z:0layer_normalization_438_1686635layer_normalization_438_1686637*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_438_layer_call_and_return_conditional_losses_1684664ÿ
0multi_head_attention_219/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_438/StatefulPartitionedCall:output:08layer_normalization_438/StatefulPartitionedCall:output:0 multi_head_attention_219_1686640 multi_head_attention_219_1686642 multi_head_attention_219_1686644 multi_head_attention_219_1686646 multi_head_attention_219_1686648 multi_head_attention_219_1686650 multi_head_attention_219_1686652 multi_head_attention_219_1686654*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *^
fYRW
U__inference_multi_head_attention_219_layer_call_and_return_conditional_losses_1685178¯
#dropout_532/StatefulPartitionedCallStatefulPartitionedCall9multi_head_attention_219/StatefulPartitionedCall:output:0$^dropout_531/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_532_layer_call_and_return_conditional_losses_1685107¯
tf.__operators__.add_438/AddV2AddV2,dropout_532/StatefulPartitionedCall:output:0"tf.__operators__.add_437/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
/layer_normalization_439/StatefulPartitionedCallStatefulPartitionedCall"tf.__operators__.add_438/AddV2:z:0layer_normalization_439_1686659layer_normalization_439_1686661*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_layer_normalization_439_layer_call_and_return_conditional_losses_1684753´
"conv1d_438/StatefulPartitionedCallStatefulPartitionedCall8layer_normalization_439/StatefulPartitionedCall:output:0conv1d_438_1686664conv1d_438_1686666*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_438_layer_call_and_return_conditional_losses_1684775¡
#dropout_533/StatefulPartitionedCallStatefulPartitionedCall+conv1d_438/StatefulPartitionedCall:output:0$^dropout_532/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_533_layer_call_and_return_conditional_losses_1685064¨
"conv1d_439/StatefulPartitionedCallStatefulPartitionedCall,dropout_533/StatefulPartitionedCall:output:0conv1d_439_1686670conv1d_439_1686672*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv1d_439_layer_call_and_return_conditional_losses_1684803®
tf.__operators__.add_439/AddV2AddV2+conv1d_439/StatefulPartitionedCall:output:0"tf.__operators__.add_438/AddV2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
+global_average_pooling1d_54/PartitionedCallPartitionedCall"tf.__operators__.add_439/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *a
f\RZ
X__inference_global_average_pooling1d_54_layer_call_and_return_conditional_losses_1684128©
!dense_108/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling1d_54/PartitionedCall:output:0dense_108_1686677dense_108_1686679*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_108_layer_call_and_return_conditional_losses_1684822
#dropout_534/StatefulPartitionedCallStatefulPartitionedCall*dense_108/StatefulPartitionedCall:output:0$^dropout_533/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_534_layer_call_and_return_conditional_losses_1685021 
!dense_109/StatefulPartitionedCallStatefulPartitionedCall,dropout_534/StatefulPartitionedCall:output:0dense_109_1686683dense_109_1686685*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_109_layer_call_and_return_conditional_losses_1684845y
IdentityIdentity*dense_109/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿè

NoOpNoOp#^conv1d_432/StatefulPartitionedCall#^conv1d_433/StatefulPartitionedCall#^conv1d_434/StatefulPartitionedCall#^conv1d_435/StatefulPartitionedCall#^conv1d_436/StatefulPartitionedCall#^conv1d_437/StatefulPartitionedCall#^conv1d_438/StatefulPartitionedCall#^conv1d_439/StatefulPartitionedCall"^dense_108/StatefulPartitionedCall"^dense_109/StatefulPartitionedCall$^dropout_526/StatefulPartitionedCall$^dropout_527/StatefulPartitionedCall$^dropout_528/StatefulPartitionedCall$^dropout_529/StatefulPartitionedCall$^dropout_530/StatefulPartitionedCall$^dropout_531/StatefulPartitionedCall$^dropout_532/StatefulPartitionedCall$^dropout_533/StatefulPartitionedCall$^dropout_534/StatefulPartitionedCall0^layer_normalization_432/StatefulPartitionedCall0^layer_normalization_433/StatefulPartitionedCall0^layer_normalization_434/StatefulPartitionedCall0^layer_normalization_435/StatefulPartitionedCall0^layer_normalization_436/StatefulPartitionedCall0^layer_normalization_437/StatefulPartitionedCall0^layer_normalization_438/StatefulPartitionedCall0^layer_normalization_439/StatefulPartitionedCall1^multi_head_attention_216/StatefulPartitionedCall1^multi_head_attention_217/StatefulPartitionedCall1^multi_head_attention_218/StatefulPartitionedCall1^multi_head_attention_219/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes¢
:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"conv1d_432/StatefulPartitionedCall"conv1d_432/StatefulPartitionedCall2H
"conv1d_433/StatefulPartitionedCall"conv1d_433/StatefulPartitionedCall2H
"conv1d_434/StatefulPartitionedCall"conv1d_434/StatefulPartitionedCall2H
"conv1d_435/StatefulPartitionedCall"conv1d_435/StatefulPartitionedCall2H
"conv1d_436/StatefulPartitionedCall"conv1d_436/StatefulPartitionedCall2H
"conv1d_437/StatefulPartitionedCall"conv1d_437/StatefulPartitionedCall2H
"conv1d_438/StatefulPartitionedCall"conv1d_438/StatefulPartitionedCall2H
"conv1d_439/StatefulPartitionedCall"conv1d_439/StatefulPartitionedCall2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2J
#dropout_526/StatefulPartitionedCall#dropout_526/StatefulPartitionedCall2J
#dropout_527/StatefulPartitionedCall#dropout_527/StatefulPartitionedCall2J
#dropout_528/StatefulPartitionedCall#dropout_528/StatefulPartitionedCall2J
#dropout_529/StatefulPartitionedCall#dropout_529/StatefulPartitionedCall2J
#dropout_530/StatefulPartitionedCall#dropout_530/StatefulPartitionedCall2J
#dropout_531/StatefulPartitionedCall#dropout_531/StatefulPartitionedCall2J
#dropout_532/StatefulPartitionedCall#dropout_532/StatefulPartitionedCall2J
#dropout_533/StatefulPartitionedCall#dropout_533/StatefulPartitionedCall2J
#dropout_534/StatefulPartitionedCall#dropout_534/StatefulPartitionedCall2b
/layer_normalization_432/StatefulPartitionedCall/layer_normalization_432/StatefulPartitionedCall2b
/layer_normalization_433/StatefulPartitionedCall/layer_normalization_433/StatefulPartitionedCall2b
/layer_normalization_434/StatefulPartitionedCall/layer_normalization_434/StatefulPartitionedCall2b
/layer_normalization_435/StatefulPartitionedCall/layer_normalization_435/StatefulPartitionedCall2b
/layer_normalization_436/StatefulPartitionedCall/layer_normalization_436/StatefulPartitionedCall2b
/layer_normalization_437/StatefulPartitionedCall/layer_normalization_437/StatefulPartitionedCall2b
/layer_normalization_438/StatefulPartitionedCall/layer_normalization_438/StatefulPartitionedCall2b
/layer_normalization_439/StatefulPartitionedCall/layer_normalization_439/StatefulPartitionedCall2d
0multi_head_attention_216/StatefulPartitionedCall0multi_head_attention_216/StatefulPartitionedCall2d
0multi_head_attention_217/StatefulPartitionedCall0multi_head_attention_217/StatefulPartitionedCall2d
0multi_head_attention_218/StatefulPartitionedCall0multi_head_attention_218/StatefulPartitionedCall2d
0multi_head_attention_219/StatefulPartitionedCall0multi_head_attention_219/StatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_55
Æ*

U__inference_multi_head_attention_216_layer_call_and_return_conditional_losses_1684201	
query	
valueB
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	@
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	B
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	M
6attention_output_einsum_einsum_readvariableop_resource::
,attention_output_add_readvariableop_resource:
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0­
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0±
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  =d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbeo
softmax_40/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
dropout_535/IdentityIdentitysoftmax_40/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
einsum_1/EinsumEinsumdropout_535/Identity:output:0value/add:z:0*
N*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationacbe,aecd->abcd©
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
:*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namevalue
ë
f
H__inference_dropout_530_layer_call_and_return_conditional_losses_1684560

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*²
serving_default
A
input_555
serving_default_input_55:0ÿÿÿÿÿÿÿÿÿ=
	dense_1090
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¹

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer-12
layer-13
layer_with_weights-7
layer-14
layer_with_weights-8
layer-15
layer-16
layer_with_weights-9
layer-17
layer-18
layer_with_weights-10
layer-19
layer_with_weights-11
layer-20
layer-21
layer-22
layer_with_weights-12
layer-23
layer_with_weights-13
layer-24
layer-25
layer_with_weights-14
layer-26
layer-27
layer_with_weights-15
layer-28
layer_with_weights-16
layer-29
layer-30
 layer-31
!layer_with_weights-17
!layer-32
"layer_with_weights-18
"layer-33
#layer-34
$layer_with_weights-19
$layer-35
%layer-36
&layer-37
'layer_with_weights-20
'layer-38
(layer-39
)layer_with_weights-21
)layer-40
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_default_save_signature
1	optimizer
2
signatures
#3_self_saveable_object_factories"
_tf_keras_network
D
#4_self_saveable_object_factories"
_tf_keras_input_layer
é
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;axis
	<gamma
=beta
#>_self_saveable_object_factories"
_tf_keras_layer
³
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
E_query_dense
F
_key_dense
G_value_dense
H_softmax
I_dropout_layer
J_output_dense
#K_self_saveable_object_factories"
_tf_keras_layer
á
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses
R_random_generator
#S_self_saveable_object_factories"
_tf_keras_layer
M
T	keras_api
#U_self_saveable_object_factories"
_tf_keras_layer
é
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\axis
	]gamma
^beta
#__self_saveable_object_factories"
_tf_keras_layer

`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses

fkernel
gbias
#h_self_saveable_object_factories
 i_jit_compiled_convolution_op"
_tf_keras_layer
á
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
p_random_generator
#q_self_saveable_object_factories"
_tf_keras_layer

r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses

xkernel
ybias
#z_self_saveable_object_factories
 {_jit_compiled_convolution_op"
_tf_keras_layer
M
|	keras_api
#}_self_saveable_object_factories"
_tf_keras_layer
ñ
~	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis

gamma
	beta
$_self_saveable_object_factories"
_tf_keras_layer
À
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_query_dense

_key_dense
_value_dense
_softmax
_dropout_layer
_output_dense
$_self_saveable_object_factories"
_tf_keras_layer
é
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator
$_self_saveable_object_factories"
_tf_keras_layer
O
	keras_api
$_self_saveable_object_factories"
_tf_keras_layer
ó
	variables
 trainable_variables
¡regularization_losses
¢	keras_api
£__call__
+¤&call_and_return_all_conditional_losses
	¥axis

¦gamma
	§beta
$¨_self_saveable_object_factories"
_tf_keras_layer

©	variables
ªtrainable_variables
«regularization_losses
¬	keras_api
­__call__
+®&call_and_return_all_conditional_losses
¯kernel
	°bias
$±_self_saveable_object_factories
!²_jit_compiled_convolution_op"
_tf_keras_layer
é
³	variables
´trainable_variables
µregularization_losses
¶	keras_api
·__call__
+¸&call_and_return_all_conditional_losses
¹_random_generator
$º_self_saveable_object_factories"
_tf_keras_layer

»	variables
¼trainable_variables
½regularization_losses
¾	keras_api
¿__call__
+À&call_and_return_all_conditional_losses
Ákernel
	Âbias
$Ã_self_saveable_object_factories
!Ä_jit_compiled_convolution_op"
_tf_keras_layer
O
Å	keras_api
$Æ_self_saveable_object_factories"
_tf_keras_layer
ó
Ç	variables
Ètrainable_variables
Éregularization_losses
Ê	keras_api
Ë__call__
+Ì&call_and_return_all_conditional_losses
	Íaxis

Îgamma
	Ïbeta
$Ð_self_saveable_object_factories"
_tf_keras_layer
À
Ñ	variables
Òtrainable_variables
Óregularization_losses
Ô	keras_api
Õ__call__
+Ö&call_and_return_all_conditional_losses
×_query_dense
Ø
_key_dense
Ù_value_dense
Ú_softmax
Û_dropout_layer
Ü_output_dense
$Ý_self_saveable_object_factories"
_tf_keras_layer
é
Þ	variables
ßtrainable_variables
àregularization_losses
á	keras_api
â__call__
+ã&call_and_return_all_conditional_losses
ä_random_generator
$å_self_saveable_object_factories"
_tf_keras_layer
O
æ	keras_api
$ç_self_saveable_object_factories"
_tf_keras_layer
ó
è	variables
étrainable_variables
êregularization_losses
ë	keras_api
ì__call__
+í&call_and_return_all_conditional_losses
	îaxis

ïgamma
	ðbeta
$ñ_self_saveable_object_factories"
_tf_keras_layer

ò	variables
ótrainable_variables
ôregularization_losses
õ	keras_api
ö__call__
+÷&call_and_return_all_conditional_losses
økernel
	ùbias
$ú_self_saveable_object_factories
!û_jit_compiled_convolution_op"
_tf_keras_layer
é
ü	variables
ýtrainable_variables
þregularization_losses
ÿ	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator
$_self_saveable_object_factories"
_tf_keras_layer

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
$_self_saveable_object_factories
!_jit_compiled_convolution_op"
_tf_keras_layer
O
	keras_api
$_self_saveable_object_factories"
_tf_keras_layer
ó
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis

gamma
	beta
$_self_saveable_object_factories"
_tf_keras_layer
À
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
 _query_dense
¡
_key_dense
¢_value_dense
£_softmax
¤_dropout_layer
¥_output_dense
$¦_self_saveable_object_factories"
_tf_keras_layer
é
§	variables
¨trainable_variables
©regularization_losses
ª	keras_api
«__call__
+¬&call_and_return_all_conditional_losses
­_random_generator
$®_self_saveable_object_factories"
_tf_keras_layer
O
¯	keras_api
$°_self_saveable_object_factories"
_tf_keras_layer
ó
±	variables
²trainable_variables
³regularization_losses
´	keras_api
µ__call__
+¶&call_and_return_all_conditional_losses
	·axis

¸gamma
	¹beta
$º_self_saveable_object_factories"
_tf_keras_layer

»	variables
¼trainable_variables
½regularization_losses
¾	keras_api
¿__call__
+À&call_and_return_all_conditional_losses
Ákernel
	Âbias
$Ã_self_saveable_object_factories
!Ä_jit_compiled_convolution_op"
_tf_keras_layer
é
Å	variables
Ætrainable_variables
Çregularization_losses
È	keras_api
É__call__
+Ê&call_and_return_all_conditional_losses
Ë_random_generator
$Ì_self_saveable_object_factories"
_tf_keras_layer

Í	variables
Îtrainable_variables
Ïregularization_losses
Ð	keras_api
Ñ__call__
+Ò&call_and_return_all_conditional_losses
Ókernel
	Ôbias
$Õ_self_saveable_object_factories
!Ö_jit_compiled_convolution_op"
_tf_keras_layer
O
×	keras_api
$Ø_self_saveable_object_factories"
_tf_keras_layer
Ñ
Ù	variables
Útrainable_variables
Ûregularization_losses
Ü	keras_api
Ý__call__
+Þ&call_and_return_all_conditional_losses
$ß_self_saveable_object_factories"
_tf_keras_layer
é
à	variables
átrainable_variables
âregularization_losses
ã	keras_api
ä__call__
+å&call_and_return_all_conditional_losses
ækernel
	çbias
$è_self_saveable_object_factories"
_tf_keras_layer
é
é	variables
êtrainable_variables
ëregularization_losses
ì	keras_api
í__call__
+î&call_and_return_all_conditional_losses
ï_random_generator
$ð_self_saveable_object_factories"
_tf_keras_layer
é
ñ	variables
òtrainable_variables
óregularization_losses
ô	keras_api
õ__call__
+ö&call_and_return_all_conditional_losses
÷kernel
	øbias
$ù_self_saveable_object_factories"
_tf_keras_layer
ò
<0
=1
ú2
û3
ü4
ý5
þ6
ÿ7
8
9
]10
^11
f12
g13
x14
y15
16
17
18
19
20
21
22
23
24
25
¦26
§27
¯28
°29
Á30
Â31
Î32
Ï33
34
35
36
37
38
39
40
41
ï42
ð43
ø44
ù45
46
47
48
49
50
51
52
53
54
55
56
57
¸58
¹59
Á60
Â61
Ó62
Ô63
æ64
ç65
÷66
ø67"
trackable_list_wrapper
ò
<0
=1
ú2
û3
ü4
ý5
þ6
ÿ7
8
9
]10
^11
f12
g13
x14
y15
16
17
18
19
20
21
22
23
24
25
¦26
§27
¯28
°29
Á30
Â31
Î32
Ï33
34
35
36
37
38
39
40
41
ï42
ð43
ø44
ù45
46
47
48
49
50
51
52
53
54
55
56
57
¸58
¹59
Á60
Â61
Ó62
Ô63
æ64
ç65
÷66
ø67"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
0_default_save_signature
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
æ
trace_0
 trace_1
¡trace_2
¢trace_32ó
*__inference_model_54_layer_call_fn_1684991
*__inference_model_54_layer_call_fn_1686973
*__inference_model_54_layer_call_fn_1687114
*__inference_model_54_layer_call_fn_1686329À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0z trace_1z¡trace_2z¢trace_3
Ò
£trace_0
¤trace_1
¥trace_2
¦trace_32ß
E__inference_model_54_layer_call_and_return_conditional_losses_1687506
E__inference_model_54_layer_call_and_return_conditional_losses_1687989
E__inference_model_54_layer_call_and_return_conditional_losses_1686509
E__inference_model_54_layer_call_and_return_conditional_losses_1686689À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z£trace_0z¤trace_1z¥trace_2z¦trace_3
ÎBË
"__inference__wrapped_model_1684118input_55"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
"
	optimizer
-
§serving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
ÿ
­trace_02à
9__inference_layer_normalization_432_layer_call_fn_1687998¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z­trace_0

®trace_02û
T__inference_layer_normalization_432_layer_call_and_return_conditional_losses_1688020¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z®trace_0
 "
trackable_list_wrapper
+:)2layer_normalization_432/gamma
*:(2layer_normalization_432/beta
 "
trackable_dict_wrapper
`
ú0
û1
ü2
ý3
þ4
ÿ5
6
7"
trackable_list_wrapper
`
ú0
û1
ü2
ý3
þ4
ÿ5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¯non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
²
´trace_0
µtrace_12÷
:__inference_multi_head_attention_216_layer_call_fn_1688042
:__inference_multi_head_attention_216_layer_call_fn_1688064ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z´trace_0zµtrace_1
è
¶trace_0
·trace_12­
U__inference_multi_head_attention_216_layer_call_and_return_conditional_losses_1688099
U__inference_multi_head_attention_216_layer_call_and_return_conditional_losses_1688141ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z¶trace_0z·trace_1

¸	variables
¹trainable_variables
ºregularization_losses
»	keras_api
¼__call__
+½&call_and_return_all_conditional_losses
¾partial_output_shape
¿full_output_shape
úkernel
	ûbias
$À_self_saveable_object_factories"
_tf_keras_layer

Á	variables
Âtrainable_variables
Ãregularization_losses
Ä	keras_api
Å__call__
+Æ&call_and_return_all_conditional_losses
Çpartial_output_shape
Èfull_output_shape
ükernel
	ýbias
$É_self_saveable_object_factories"
_tf_keras_layer

Ê	variables
Ëtrainable_variables
Ìregularization_losses
Í	keras_api
Î__call__
+Ï&call_and_return_all_conditional_losses
Ðpartial_output_shape
Ñfull_output_shape
þkernel
	ÿbias
$Ò_self_saveable_object_factories"
_tf_keras_layer
Ñ
Ó	variables
Ôtrainable_variables
Õregularization_losses
Ö	keras_api
×__call__
+Ø&call_and_return_all_conditional_losses
$Ù_self_saveable_object_factories"
_tf_keras_layer
é
Ú	variables
Ûtrainable_variables
Üregularization_losses
Ý	keras_api
Þ__call__
+ß&call_and_return_all_conditional_losses
à_random_generator
$á_self_saveable_object_factories"
_tf_keras_layer

â	variables
ãtrainable_variables
äregularization_losses
å	keras_api
æ__call__
+ç&call_and_return_all_conditional_losses
èpartial_output_shape
éfull_output_shape
kernel
	bias
$ê_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ënon_trainable_variables
ìlayers
ímetrics
 îlayer_regularization_losses
ïlayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
Ð
ðtrace_0
ñtrace_12
-__inference_dropout_526_layer_call_fn_1688146
-__inference_dropout_526_layer_call_fn_1688151´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zðtrace_0zñtrace_1

òtrace_0
ótrace_12Ë
H__inference_dropout_526_layer_call_and_return_conditional_losses_1688156
H__inference_dropout_526_layer_call_and_return_conditional_losses_1688168´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zòtrace_0zótrace_1
"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ônon_trainable_variables
õlayers
ömetrics
 ÷layer_regularization_losses
ølayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
ÿ
ùtrace_02à
9__inference_layer_normalization_433_layer_call_fn_1688177¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zùtrace_0

útrace_02û
T__inference_layer_normalization_433_layer_call_and_return_conditional_losses_1688199¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zútrace_0
 "
trackable_list_wrapper
+:)2layer_normalization_433/gamma
*:(2layer_normalization_433/beta
 "
trackable_dict_wrapper
.
f0
g1"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ûnon_trainable_variables
ülayers
ýmetrics
 þlayer_regularization_losses
ÿlayer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
ò
trace_02Ó
,__inference_conv1d_432_layer_call_fn_1688208¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02î
G__inference_conv1d_432_layer_call_and_return_conditional_losses_1688224¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
':%2conv1d_432/kernel
:2conv1d_432/bias
 "
trackable_dict_wrapper
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
Ð
trace_0
trace_12
-__inference_dropout_527_layer_call_fn_1688229
-__inference_dropout_527_layer_call_fn_1688234´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1

trace_0
trace_12Ë
H__inference_dropout_527_layer_call_and_return_conditional_losses_1688239
H__inference_dropout_527_layer_call_and_return_conditional_losses_1688251´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1
"
_generic_user_object
 "
trackable_dict_wrapper
.
x0
y1"
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
ò
trace_02Ó
,__inference_conv1d_433_layer_call_fn_1688260¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02î
G__inference_conv1d_433_layer_call_and_return_conditional_losses_1688275¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
':%2conv1d_433/kernel
:2conv1d_433/bias
 "
trackable_dict_wrapper
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
"
_generic_user_object
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¶
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
~	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ÿ
trace_02à
9__inference_layer_normalization_434_layer_call_fn_1688284¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02û
T__inference_layer_normalization_434_layer_call_and_return_conditional_losses_1688306¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
 "
trackable_list_wrapper
+:)2layer_normalization_434/gamma
*:(2layer_normalization_434/beta
 "
trackable_dict_wrapper
`
0
1
2
3
4
5
6
7"
trackable_list_wrapper
`
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
²
trace_0
trace_12÷
:__inference_multi_head_attention_217_layer_call_fn_1688328
:__inference_multi_head_attention_217_layer_call_fn_1688350ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1
è
 trace_0
¡trace_12­
U__inference_multi_head_attention_217_layer_call_and_return_conditional_losses_1688385
U__inference_multi_head_attention_217_layer_call_and_return_conditional_losses_1688427ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z trace_0z¡trace_1

¢	variables
£trainable_variables
¤regularization_losses
¥	keras_api
¦__call__
+§&call_and_return_all_conditional_losses
¨partial_output_shape
©full_output_shape
kernel
	bias
$ª_self_saveable_object_factories"
_tf_keras_layer

«	variables
¬trainable_variables
­regularization_losses
®	keras_api
¯__call__
+°&call_and_return_all_conditional_losses
±partial_output_shape
²full_output_shape
kernel
	bias
$³_self_saveable_object_factories"
_tf_keras_layer

´	variables
µtrainable_variables
¶regularization_losses
·	keras_api
¸__call__
+¹&call_and_return_all_conditional_losses
ºpartial_output_shape
»full_output_shape
kernel
	bias
$¼_self_saveable_object_factories"
_tf_keras_layer
Ñ
½	variables
¾trainable_variables
¿regularization_losses
À	keras_api
Á__call__
+Â&call_and_return_all_conditional_losses
$Ã_self_saveable_object_factories"
_tf_keras_layer
é
Ä	variables
Åtrainable_variables
Æregularization_losses
Ç	keras_api
È__call__
+É&call_and_return_all_conditional_losses
Ê_random_generator
$Ë_self_saveable_object_factories"
_tf_keras_layer

Ì	variables
Ítrainable_variables
Îregularization_losses
Ï	keras_api
Ð__call__
+Ñ&call_and_return_all_conditional_losses
Òpartial_output_shape
Ófull_output_shape
kernel
	bias
$Ô_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Õnon_trainable_variables
Ölayers
×metrics
 Ølayer_regularization_losses
Ùlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ð
Útrace_0
Ûtrace_12
-__inference_dropout_528_layer_call_fn_1688432
-__inference_dropout_528_layer_call_fn_1688437´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÚtrace_0zÛtrace_1

Ütrace_0
Ýtrace_12Ë
H__inference_dropout_528_layer_call_and_return_conditional_losses_1688442
H__inference_dropout_528_layer_call_and_return_conditional_losses_1688454´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÜtrace_0zÝtrace_1
"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
0
¦0
§1"
trackable_list_wrapper
0
¦0
§1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Þnon_trainable_variables
ßlayers
àmetrics
 álayer_regularization_losses
âlayer_metrics
	variables
 trainable_variables
¡regularization_losses
£__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
ÿ
ãtrace_02à
9__inference_layer_normalization_435_layer_call_fn_1688463¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zãtrace_0

ätrace_02û
T__inference_layer_normalization_435_layer_call_and_return_conditional_losses_1688485¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zätrace_0
 "
trackable_list_wrapper
+:)2layer_normalization_435/gamma
*:(2layer_normalization_435/beta
 "
trackable_dict_wrapper
0
¯0
°1"
trackable_list_wrapper
0
¯0
°1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ånon_trainable_variables
ælayers
çmetrics
 èlayer_regularization_losses
élayer_metrics
©	variables
ªtrainable_variables
«regularization_losses
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
ò
êtrace_02Ó
,__inference_conv1d_434_layer_call_fn_1688494¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zêtrace_0

ëtrace_02î
G__inference_conv1d_434_layer_call_and_return_conditional_losses_1688510¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zëtrace_0
':%2conv1d_434/kernel
:2conv1d_434/bias
 "
trackable_dict_wrapper
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ìnon_trainable_variables
ílayers
îmetrics
 ïlayer_regularization_losses
ðlayer_metrics
³	variables
´trainable_variables
µregularization_losses
·__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses"
_generic_user_object
Ð
ñtrace_0
òtrace_12
-__inference_dropout_529_layer_call_fn_1688515
-__inference_dropout_529_layer_call_fn_1688520´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zñtrace_0zòtrace_1

ótrace_0
ôtrace_12Ë
H__inference_dropout_529_layer_call_and_return_conditional_losses_1688525
H__inference_dropout_529_layer_call_and_return_conditional_losses_1688537´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zótrace_0zôtrace_1
"
_generic_user_object
 "
trackable_dict_wrapper
0
Á0
Â1"
trackable_list_wrapper
0
Á0
Â1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
õnon_trainable_variables
ölayers
÷metrics
 ølayer_regularization_losses
ùlayer_metrics
»	variables
¼trainable_variables
½regularization_losses
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses"
_generic_user_object
ò
útrace_02Ó
,__inference_conv1d_435_layer_call_fn_1688546¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zútrace_0

ûtrace_02î
G__inference_conv1d_435_layer_call_and_return_conditional_losses_1688561¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zûtrace_0
':%2conv1d_435/kernel
:2conv1d_435/bias
 "
trackable_dict_wrapper
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
"
_generic_user_object
 "
trackable_dict_wrapper
0
Î0
Ï1"
trackable_list_wrapper
0
Î0
Ï1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ünon_trainable_variables
ýlayers
þmetrics
 ÿlayer_regularization_losses
layer_metrics
Ç	variables
Ètrainable_variables
Éregularization_losses
Ë__call__
+Ì&call_and_return_all_conditional_losses
'Ì"call_and_return_conditional_losses"
_generic_user_object
ÿ
trace_02à
9__inference_layer_normalization_436_layer_call_fn_1688570¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02û
T__inference_layer_normalization_436_layer_call_and_return_conditional_losses_1688592¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
 "
trackable_list_wrapper
+:)2layer_normalization_436/gamma
*:(2layer_normalization_436/beta
 "
trackable_dict_wrapper
`
0
1
2
3
4
5
6
7"
trackable_list_wrapper
`
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ñ	variables
Òtrainable_variables
Óregularization_losses
Õ__call__
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses"
_generic_user_object
²
trace_0
trace_12÷
:__inference_multi_head_attention_218_layer_call_fn_1688614
:__inference_multi_head_attention_218_layer_call_fn_1688636ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1
è
trace_0
trace_12­
U__inference_multi_head_attention_218_layer_call_and_return_conditional_losses_1688671
U__inference_multi_head_attention_218_layer_call_and_return_conditional_losses_1688713ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape
kernel
	bias
$_self_saveable_object_factories"
_tf_keras_layer

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape
kernel
	bias
$_self_saveable_object_factories"
_tf_keras_layer

	variables
trainable_variables
 regularization_losses
¡	keras_api
¢__call__
+£&call_and_return_all_conditional_losses
¤partial_output_shape
¥full_output_shape
kernel
	bias
$¦_self_saveable_object_factories"
_tf_keras_layer
Ñ
§	variables
¨trainable_variables
©regularization_losses
ª	keras_api
«__call__
+¬&call_and_return_all_conditional_losses
$­_self_saveable_object_factories"
_tf_keras_layer
é
®	variables
¯trainable_variables
°regularization_losses
±	keras_api
²__call__
+³&call_and_return_all_conditional_losses
´_random_generator
$µ_self_saveable_object_factories"
_tf_keras_layer

¶	variables
·trainable_variables
¸regularization_losses
¹	keras_api
º__call__
+»&call_and_return_all_conditional_losses
¼partial_output_shape
½full_output_shape
kernel
	bias
$¾_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
Þ	variables
ßtrainable_variables
àregularization_losses
â__call__
+ã&call_and_return_all_conditional_losses
'ã"call_and_return_conditional_losses"
_generic_user_object
Ð
Ätrace_0
Åtrace_12
-__inference_dropout_530_layer_call_fn_1688718
-__inference_dropout_530_layer_call_fn_1688723´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÄtrace_0zÅtrace_1

Ætrace_0
Çtrace_12Ë
H__inference_dropout_530_layer_call_and_return_conditional_losses_1688728
H__inference_dropout_530_layer_call_and_return_conditional_losses_1688740´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÆtrace_0zÇtrace_1
"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
0
ï0
ð1"
trackable_list_wrapper
0
ï0
ð1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ènon_trainable_variables
Élayers
Êmetrics
 Ëlayer_regularization_losses
Ìlayer_metrics
è	variables
étrainable_variables
êregularization_losses
ì__call__
+í&call_and_return_all_conditional_losses
'í"call_and_return_conditional_losses"
_generic_user_object
ÿ
Ítrace_02à
9__inference_layer_normalization_437_layer_call_fn_1688749¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÍtrace_0

Îtrace_02û
T__inference_layer_normalization_437_layer_call_and_return_conditional_losses_1688771¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÎtrace_0
 "
trackable_list_wrapper
+:)2layer_normalization_437/gamma
*:(2layer_normalization_437/beta
 "
trackable_dict_wrapper
0
ø0
ù1"
trackable_list_wrapper
0
ø0
ù1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ïnon_trainable_variables
Ðlayers
Ñmetrics
 Òlayer_regularization_losses
Ólayer_metrics
ò	variables
ótrainable_variables
ôregularization_losses
ö__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses"
_generic_user_object
ò
Ôtrace_02Ó
,__inference_conv1d_436_layer_call_fn_1688780¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÔtrace_0

Õtrace_02î
G__inference_conv1d_436_layer_call_and_return_conditional_losses_1688796¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÕtrace_0
':%2conv1d_436/kernel
:2conv1d_436/bias
 "
trackable_dict_wrapper
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Önon_trainable_variables
×layers
Ømetrics
 Ùlayer_regularization_losses
Úlayer_metrics
ü	variables
ýtrainable_variables
þregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ð
Ûtrace_0
Ütrace_12
-__inference_dropout_531_layer_call_fn_1688801
-__inference_dropout_531_layer_call_fn_1688806´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÛtrace_0zÜtrace_1

Ýtrace_0
Þtrace_12Ë
H__inference_dropout_531_layer_call_and_return_conditional_losses_1688811
H__inference_dropout_531_layer_call_and_return_conditional_losses_1688823´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÝtrace_0zÞtrace_1
"
_generic_user_object
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ßnon_trainable_variables
àlayers
ámetrics
 âlayer_regularization_losses
ãlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ò
ätrace_02Ó
,__inference_conv1d_437_layer_call_fn_1688832¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zätrace_0

åtrace_02î
G__inference_conv1d_437_layer_call_and_return_conditional_losses_1688847¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zåtrace_0
':%2conv1d_437/kernel
:2conv1d_437/bias
 "
trackable_dict_wrapper
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
"
_generic_user_object
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ænon_trainable_variables
çlayers
èmetrics
 élayer_regularization_losses
êlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ÿ
ëtrace_02à
9__inference_layer_normalization_438_layer_call_fn_1688856¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zëtrace_0

ìtrace_02û
T__inference_layer_normalization_438_layer_call_and_return_conditional_losses_1688878¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zìtrace_0
 "
trackable_list_wrapper
+:)2layer_normalization_438/gamma
*:(2layer_normalization_438/beta
 "
trackable_dict_wrapper
`
0
1
2
3
4
5
6
7"
trackable_list_wrapper
`
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ínon_trainable_variables
îlayers
ïmetrics
 ðlayer_regularization_losses
ñlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
²
òtrace_0
ótrace_12÷
:__inference_multi_head_attention_219_layer_call_fn_1688900
:__inference_multi_head_attention_219_layer_call_fn_1688922ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zòtrace_0zótrace_1
è
ôtrace_0
õtrace_12­
U__inference_multi_head_attention_219_layer_call_and_return_conditional_losses_1688957
U__inference_multi_head_attention_219_layer_call_and_return_conditional_losses_1688999ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zôtrace_0zõtrace_1

ö	variables
÷trainable_variables
øregularization_losses
ù	keras_api
ú__call__
+û&call_and_return_all_conditional_losses
üpartial_output_shape
ýfull_output_shape
kernel
	bias
$þ_self_saveable_object_factories"
_tf_keras_layer

ÿ	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape
kernel
	bias
$_self_saveable_object_factories"
_tf_keras_layer

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
partial_output_shape
full_output_shape
kernel
	bias
$_self_saveable_object_factories"
_tf_keras_layer
Ñ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
$_self_saveable_object_factories"
_tf_keras_layer
é
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator
$_self_saveable_object_factories"
_tf_keras_layer

 	variables
¡trainable_variables
¢regularization_losses
£	keras_api
¤__call__
+¥&call_and_return_all_conditional_losses
¦partial_output_shape
§full_output_shape
kernel
	bias
$¨_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
©non_trainable_variables
ªlayers
«metrics
 ¬layer_regularization_losses
­layer_metrics
§	variables
¨trainable_variables
©regularization_losses
«__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
Ð
®trace_0
¯trace_12
-__inference_dropout_532_layer_call_fn_1689004
-__inference_dropout_532_layer_call_fn_1689009´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z®trace_0z¯trace_1

°trace_0
±trace_12Ë
H__inference_dropout_532_layer_call_and_return_conditional_losses_1689014
H__inference_dropout_532_layer_call_and_return_conditional_losses_1689026´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z°trace_0z±trace_1
"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
0
¸0
¹1"
trackable_list_wrapper
0
¸0
¹1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
±	variables
²trainable_variables
³regularization_losses
µ__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
ÿ
·trace_02à
9__inference_layer_normalization_439_layer_call_fn_1689035¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z·trace_0

¸trace_02û
T__inference_layer_normalization_439_layer_call_and_return_conditional_losses_1689057¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¸trace_0
 "
trackable_list_wrapper
+:)2layer_normalization_439/gamma
*:(2layer_normalization_439/beta
 "
trackable_dict_wrapper
0
Á0
Â1"
trackable_list_wrapper
0
Á0
Â1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
»	variables
¼trainable_variables
½regularization_losses
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses"
_generic_user_object
ò
¾trace_02Ó
,__inference_conv1d_438_layer_call_fn_1689066¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¾trace_0

¿trace_02î
G__inference_conv1d_438_layer_call_and_return_conditional_losses_1689082¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¿trace_0
':%2conv1d_438/kernel
:2conv1d_438/bias
 "
trackable_dict_wrapper
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
Å	variables
Ætrainable_variables
Çregularization_losses
É__call__
+Ê&call_and_return_all_conditional_losses
'Ê"call_and_return_conditional_losses"
_generic_user_object
Ð
Åtrace_0
Ætrace_12
-__inference_dropout_533_layer_call_fn_1689087
-__inference_dropout_533_layer_call_fn_1689092´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÅtrace_0zÆtrace_1

Çtrace_0
Ètrace_12Ë
H__inference_dropout_533_layer_call_and_return_conditional_losses_1689097
H__inference_dropout_533_layer_call_and_return_conditional_losses_1689109´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÇtrace_0zÈtrace_1
"
_generic_user_object
 "
trackable_dict_wrapper
0
Ó0
Ô1"
trackable_list_wrapper
0
Ó0
Ô1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Énon_trainable_variables
Êlayers
Ëmetrics
 Ìlayer_regularization_losses
Ílayer_metrics
Í	variables
Îtrainable_variables
Ïregularization_losses
Ñ__call__
+Ò&call_and_return_all_conditional_losses
'Ò"call_and_return_conditional_losses"
_generic_user_object
ò
Îtrace_02Ó
,__inference_conv1d_439_layer_call_fn_1689118¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÎtrace_0

Ïtrace_02î
G__inference_conv1d_439_layer_call_and_return_conditional_losses_1689133¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÏtrace_0
':%2conv1d_439/kernel
:2conv1d_439/bias
 "
trackable_dict_wrapper
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ðnon_trainable_variables
Ñlayers
Òmetrics
 Ólayer_regularization_losses
Ôlayer_metrics
Ù	variables
Útrainable_variables
Ûregularization_losses
Ý__call__
+Þ&call_and_return_all_conditional_losses
'Þ"call_and_return_conditional_losses"
_generic_user_object

Õtrace_02ñ
=__inference_global_average_pooling1d_54_layer_call_fn_1689138¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÕtrace_0
«
Ötrace_02
X__inference_global_average_pooling1d_54_layer_call_and_return_conditional_losses_1689144¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÖtrace_0
 "
trackable_dict_wrapper
0
æ0
ç1"
trackable_list_wrapper
0
æ0
ç1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
×non_trainable_variables
Ølayers
Ùmetrics
 Úlayer_regularization_losses
Ûlayer_metrics
à	variables
átrainable_variables
âregularization_losses
ä__call__
+å&call_and_return_all_conditional_losses
'å"call_and_return_conditional_losses"
_generic_user_object
ñ
Ütrace_02Ò
+__inference_dense_108_layer_call_fn_1689153¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÜtrace_0

Ýtrace_02í
F__inference_dense_108_layer_call_and_return_conditional_losses_1689164¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÝtrace_0
#:!	2dense_108/kernel
:2dense_108/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Þnon_trainable_variables
ßlayers
àmetrics
 álayer_regularization_losses
âlayer_metrics
é	variables
êtrainable_variables
ëregularization_losses
í__call__
+î&call_and_return_all_conditional_losses
'î"call_and_return_conditional_losses"
_generic_user_object
Ð
ãtrace_0
ätrace_12
-__inference_dropout_534_layer_call_fn_1689169
-__inference_dropout_534_layer_call_fn_1689174´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zãtrace_0zätrace_1

åtrace_0
ætrace_12Ë
H__inference_dropout_534_layer_call_and_return_conditional_losses_1689179
H__inference_dropout_534_layer_call_and_return_conditional_losses_1689191´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zåtrace_0zætrace_1
"
_generic_user_object
 "
trackable_dict_wrapper
0
÷0
ø1"
trackable_list_wrapper
0
÷0
ø1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
çnon_trainable_variables
èlayers
émetrics
 êlayer_regularization_losses
ëlayer_metrics
ñ	variables
òtrainable_variables
óregularization_losses
õ__call__
+ö&call_and_return_all_conditional_losses
'ö"call_and_return_conditional_losses"
_generic_user_object
ñ
ìtrace_02Ò
+__inference_dense_109_layer_call_fn_1689200¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zìtrace_0

ítrace_02í
F__inference_dense_109_layer_call_and_return_conditional_losses_1689210¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zítrace_0
#:!	2dense_109/kernel
:2dense_109/bias
 "
trackable_dict_wrapper
<::2%multi_head_attention_216/query/kernel
6:4	2#multi_head_attention_216/query/bias
::82#multi_head_attention_216/key/kernel
4:2	2!multi_head_attention_216/key/bias
<::2%multi_head_attention_216/value/kernel
6:4	2#multi_head_attention_216/value/bias
G:E20multi_head_attention_216/attention_output/kernel
<::2.multi_head_attention_216/attention_output/bias
<::2%multi_head_attention_217/query/kernel
6:4	2#multi_head_attention_217/query/bias
::82#multi_head_attention_217/key/kernel
4:2	2!multi_head_attention_217/key/bias
<::2%multi_head_attention_217/value/kernel
6:4	2#multi_head_attention_217/value/bias
G:E20multi_head_attention_217/attention_output/kernel
<::2.multi_head_attention_217/attention_output/bias
<::2%multi_head_attention_218/query/kernel
6:4	2#multi_head_attention_218/query/bias
::82#multi_head_attention_218/key/kernel
4:2	2!multi_head_attention_218/key/bias
<::2%multi_head_attention_218/value/kernel
6:4	2#multi_head_attention_218/value/bias
G:E20multi_head_attention_218/attention_output/kernel
<::2.multi_head_attention_218/attention_output/bias
<::2%multi_head_attention_219/query/kernel
6:4	2#multi_head_attention_219/query/bias
::82#multi_head_attention_219/key/kernel
4:2	2!multi_head_attention_219/key/bias
<::2%multi_head_attention_219/value/kernel
6:4	2#multi_head_attention_219/value/bias
G:E20multi_head_attention_219/attention_output/kernel
<::2.multi_head_attention_219/attention_output/bias
 "
trackable_list_wrapper
Þ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40"
trackable_list_wrapper
(
î0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
þBû
*__inference_model_54_layer_call_fn_1684991input_55"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
üBù
*__inference_model_54_layer_call_fn_1686973inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
üBù
*__inference_model_54_layer_call_fn_1687114inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
þBû
*__inference_model_54_layer_call_fn_1686329input_55"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
E__inference_model_54_layer_call_and_return_conditional_losses_1687506inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
E__inference_model_54_layer_call_and_return_conditional_losses_1687989inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
E__inference_model_54_layer_call_and_return_conditional_losses_1686509input_55"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
E__inference_model_54_layer_call_and_return_conditional_losses_1686689input_55"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÍBÊ
%__inference_signature_wrapper_1686832input_55"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
íBê
9__inference_layer_normalization_432_layer_call_fn_1687998inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_layer_normalization_432_layer_call_and_return_conditional_losses_1688020inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
J
E0
F1
G2
H3
I4
J5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÎBË
:__inference_multi_head_attention_216_layer_call_fn_1688042queryvalue"ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÎBË
:__inference_multi_head_attention_216_layer_call_fn_1688064queryvalue"ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
éBæ
U__inference_multi_head_attention_216_layer_call_and_return_conditional_losses_1688099queryvalue"ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
éBæ
U__inference_multi_head_attention_216_layer_call_and_return_conditional_losses_1688141queryvalue"ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
0
ú0
û1"
trackable_list_wrapper
0
ú0
û1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ïnon_trainable_variables
ðlayers
ñmetrics
 òlayer_regularization_losses
ólayer_metrics
¸	variables
¹trainable_variables
ºregularization_losses
¼__call__
+½&call_and_return_all_conditional_losses
'½"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
ü0
ý1"
trackable_list_wrapper
0
ü0
ý1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ônon_trainable_variables
õlayers
ömetrics
 ÷layer_regularization_losses
ølayer_metrics
Á	variables
Âtrainable_variables
Ãregularization_losses
Å__call__
+Æ&call_and_return_all_conditional_losses
'Æ"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
þ0
ÿ1"
trackable_list_wrapper
0
þ0
ÿ1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ùnon_trainable_variables
úlayers
ûmetrics
 ülayer_regularization_losses
ýlayer_metrics
Ê	variables
Ëtrainable_variables
Ìregularization_losses
Î__call__
+Ï&call_and_return_all_conditional_losses
'Ï"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
¸
þnon_trainable_variables
ÿlayers
metrics
 layer_regularization_losses
layer_metrics
Ó	variables
Ôtrainable_variables
Õregularization_losses
×__call__
+Ø&call_and_return_all_conditional_losses
'Ø"call_and_return_conditional_losses"
_generic_user_object
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ú	variables
Ûtrainable_variables
Üregularization_losses
Þ__call__
+ß&call_and_return_all_conditional_losses
'ß"call_and_return_conditional_losses"
_generic_user_object
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
"
_generic_user_object
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
â	variables
ãtrainable_variables
äregularization_losses
æ__call__
+ç&call_and_return_all_conditional_losses
'ç"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
óBð
-__inference_dropout_526_layer_call_fn_1688146inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
óBð
-__inference_dropout_526_layer_call_fn_1688151inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_526_layer_call_and_return_conditional_losses_1688156inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_526_layer_call_and_return_conditional_losses_1688168inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
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
íBê
9__inference_layer_normalization_433_layer_call_fn_1688177inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_layer_normalization_433_layer_call_and_return_conditional_losses_1688199inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
àBÝ
,__inference_conv1d_432_layer_call_fn_1688208inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_conv1d_432_layer_call_and_return_conditional_losses_1688224inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
óBð
-__inference_dropout_527_layer_call_fn_1688229inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
óBð
-__inference_dropout_527_layer_call_fn_1688234inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_527_layer_call_and_return_conditional_losses_1688239inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_527_layer_call_and_return_conditional_losses_1688251inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
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
àBÝ
,__inference_conv1d_433_layer_call_fn_1688260inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_conv1d_433_layer_call_and_return_conditional_losses_1688275inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
íBê
9__inference_layer_normalization_434_layer_call_fn_1688284inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_layer_normalization_434_layer_call_and_return_conditional_losses_1688306inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
P
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÎBË
:__inference_multi_head_attention_217_layer_call_fn_1688328queryvalue"ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÎBË
:__inference_multi_head_attention_217_layer_call_fn_1688350queryvalue"ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
éBæ
U__inference_multi_head_attention_217_layer_call_and_return_conditional_losses_1688385queryvalue"ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
éBæ
U__inference_multi_head_attention_217_layer_call_and_return_conditional_losses_1688427queryvalue"ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¢	variables
£trainable_variables
¤regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
«	variables
¬trainable_variables
­regularization_losses
¯__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
´	variables
µtrainable_variables
¶regularization_losses
¸__call__
+¹&call_and_return_all_conditional_losses
'¹"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
½	variables
¾trainable_variables
¿regularization_losses
Á__call__
+Â&call_and_return_all_conditional_losses
'Â"call_and_return_conditional_losses"
_generic_user_object
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¡non_trainable_variables
¢layers
£metrics
 ¤layer_regularization_losses
¥layer_metrics
Ä	variables
Åtrainable_variables
Æregularization_losses
È__call__
+É&call_and_return_all_conditional_losses
'É"call_and_return_conditional_losses"
_generic_user_object
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
"
_generic_user_object
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ªlayer_metrics
Ì	variables
Ítrainable_variables
Îregularization_losses
Ð__call__
+Ñ&call_and_return_all_conditional_losses
'Ñ"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
óBð
-__inference_dropout_528_layer_call_fn_1688432inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
óBð
-__inference_dropout_528_layer_call_fn_1688437inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_528_layer_call_and_return_conditional_losses_1688442inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_528_layer_call_and_return_conditional_losses_1688454inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
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
íBê
9__inference_layer_normalization_435_layer_call_fn_1688463inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_layer_normalization_435_layer_call_and_return_conditional_losses_1688485inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
àBÝ
,__inference_conv1d_434_layer_call_fn_1688494inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_conv1d_434_layer_call_and_return_conditional_losses_1688510inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
óBð
-__inference_dropout_529_layer_call_fn_1688515inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
óBð
-__inference_dropout_529_layer_call_fn_1688520inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_529_layer_call_and_return_conditional_losses_1688525inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_529_layer_call_and_return_conditional_losses_1688537inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
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
àBÝ
,__inference_conv1d_435_layer_call_fn_1688546inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_conv1d_435_layer_call_and_return_conditional_losses_1688561inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
íBê
9__inference_layer_normalization_436_layer_call_fn_1688570inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_layer_normalization_436_layer_call_and_return_conditional_losses_1688592inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
P
×0
Ø1
Ù2
Ú3
Û4
Ü5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÎBË
:__inference_multi_head_attention_218_layer_call_fn_1688614queryvalue"ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÎBË
:__inference_multi_head_attention_218_layer_call_fn_1688636queryvalue"ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
éBæ
U__inference_multi_head_attention_218_layer_call_and_return_conditional_losses_1688671queryvalue"ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
éBæ
U__inference_multi_head_attention_218_layer_call_and_return_conditional_losses_1688713queryvalue"ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
´layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
µnon_trainable_variables
¶layers
·metrics
 ¸layer_regularization_losses
¹layer_metrics
	variables
trainable_variables
 regularization_losses
¢__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
¸
ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
§	variables
¨trainable_variables
©regularization_losses
«__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
®	variables
¯trainable_variables
°regularization_losses
²__call__
+³&call_and_return_all_conditional_losses
'³"call_and_return_conditional_losses"
_generic_user_object
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
"
_generic_user_object
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Änon_trainable_variables
Ålayers
Æmetrics
 Çlayer_regularization_losses
Èlayer_metrics
¶	variables
·trainable_variables
¸regularization_losses
º__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
óBð
-__inference_dropout_530_layer_call_fn_1688718inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
óBð
-__inference_dropout_530_layer_call_fn_1688723inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_530_layer_call_and_return_conditional_losses_1688728inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_530_layer_call_and_return_conditional_losses_1688740inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
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
íBê
9__inference_layer_normalization_437_layer_call_fn_1688749inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_layer_normalization_437_layer_call_and_return_conditional_losses_1688771inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
àBÝ
,__inference_conv1d_436_layer_call_fn_1688780inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_conv1d_436_layer_call_and_return_conditional_losses_1688796inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
óBð
-__inference_dropout_531_layer_call_fn_1688801inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
óBð
-__inference_dropout_531_layer_call_fn_1688806inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_531_layer_call_and_return_conditional_losses_1688811inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_531_layer_call_and_return_conditional_losses_1688823inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
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
àBÝ
,__inference_conv1d_437_layer_call_fn_1688832inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_conv1d_437_layer_call_and_return_conditional_losses_1688847inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
íBê
9__inference_layer_normalization_438_layer_call_fn_1688856inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_layer_normalization_438_layer_call_and_return_conditional_losses_1688878inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
P
 0
¡1
¢2
£3
¤4
¥5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÎBË
:__inference_multi_head_attention_219_layer_call_fn_1688900queryvalue"ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÎBË
:__inference_multi_head_attention_219_layer_call_fn_1688922queryvalue"ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
éBæ
U__inference_multi_head_attention_219_layer_call_and_return_conditional_losses_1688957queryvalue"ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
éBæ
U__inference_multi_head_attention_219_layer_call_and_return_conditional_losses_1688999queryvalue"ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Énon_trainable_variables
Êlayers
Ëmetrics
 Ìlayer_regularization_losses
Ílayer_metrics
ö	variables
÷trainable_variables
øregularization_losses
ú__call__
+û&call_and_return_all_conditional_losses
'û"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Înon_trainable_variables
Ïlayers
Ðmetrics
 Ñlayer_regularization_losses
Òlayer_metrics
ÿ	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ónon_trainable_variables
Ôlayers
Õmetrics
 Ölayer_regularization_losses
×layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
¸
Ønon_trainable_variables
Ùlayers
Úmetrics
 Ûlayer_regularization_losses
Ülayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ýnon_trainable_variables
Þlayers
ßmetrics
 àlayer_regularization_losses
álayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
"
_generic_user_object
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ânon_trainable_variables
ãlayers
ämetrics
 ålayer_regularization_losses
ælayer_metrics
 	variables
¡trainable_variables
¢regularization_losses
¤__call__
+¥&call_and_return_all_conditional_losses
'¥"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
óBð
-__inference_dropout_532_layer_call_fn_1689004inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
óBð
-__inference_dropout_532_layer_call_fn_1689009inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_532_layer_call_and_return_conditional_losses_1689014inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_532_layer_call_and_return_conditional_losses_1689026inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
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
íBê
9__inference_layer_normalization_439_layer_call_fn_1689035inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
T__inference_layer_normalization_439_layer_call_and_return_conditional_losses_1689057inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
àBÝ
,__inference_conv1d_438_layer_call_fn_1689066inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_conv1d_438_layer_call_and_return_conditional_losses_1689082inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
óBð
-__inference_dropout_533_layer_call_fn_1689087inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
óBð
-__inference_dropout_533_layer_call_fn_1689092inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_533_layer_call_and_return_conditional_losses_1689097inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_533_layer_call_and_return_conditional_losses_1689109inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
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
àBÝ
,__inference_conv1d_439_layer_call_fn_1689118inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_conv1d_439_layer_call_and_return_conditional_losses_1689133inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
þBû
=__inference_global_average_pooling1d_54_layer_call_fn_1689138inputs"¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
X__inference_global_average_pooling1d_54_layer_call_and_return_conditional_losses_1689144inputs"¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
ßBÜ
+__inference_dense_108_layer_call_fn_1689153inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
úB÷
F__inference_dense_108_layer_call_and_return_conditional_losses_1689164inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
óBð
-__inference_dropout_534_layer_call_fn_1689169inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
óBð
-__inference_dropout_534_layer_call_fn_1689174inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_534_layer_call_and_return_conditional_losses_1689179inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
H__inference_dropout_534_layer_call_and_return_conditional_losses_1689191inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
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
ßBÜ
+__inference_dense_109_layer_call_fn_1689200inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
úB÷
F__inference_dense_109_layer_call_and_return_conditional_losses_1689210inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
R
ç	variables
è	keras_api

étotal

êcount"
_tf_keras_metric
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
0
é0
ê1"
trackable_list_wrapper
.
ç	variables"
_generic_user_object
:  (2total
:  (2count
"__inference__wrapped_model_1684118ñ<=úûüýþÿ]^fgxy¦§¯°ÁÂÎÏïðøù¸¹ÁÂÓÔæç÷ø5¢2
+¢(
&#
input_55ÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
	dense_109# 
	dense_109ÿÿÿÿÿÿÿÿÿ¯
G__inference_conv1d_432_layer_call_and_return_conditional_losses_1688224dfg3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_conv1d_432_layer_call_fn_1688208Wfg3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¯
G__inference_conv1d_433_layer_call_and_return_conditional_losses_1688275dxy3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_conv1d_433_layer_call_fn_1688260Wxy3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ±
G__inference_conv1d_434_layer_call_and_return_conditional_losses_1688510f¯°3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_conv1d_434_layer_call_fn_1688494Y¯°3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ±
G__inference_conv1d_435_layer_call_and_return_conditional_losses_1688561fÁÂ3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_conv1d_435_layer_call_fn_1688546YÁÂ3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ±
G__inference_conv1d_436_layer_call_and_return_conditional_losses_1688796føù3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_conv1d_436_layer_call_fn_1688780Yøù3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ±
G__inference_conv1d_437_layer_call_and_return_conditional_losses_1688847f3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_conv1d_437_layer_call_fn_1688832Y3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ±
G__inference_conv1d_438_layer_call_and_return_conditional_losses_1689082fÁÂ3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_conv1d_438_layer_call_fn_1689066YÁÂ3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ±
G__inference_conv1d_439_layer_call_and_return_conditional_losses_1689133fÓÔ3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_conv1d_439_layer_call_fn_1689118YÓÔ3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ©
F__inference_dense_108_layer_call_and_return_conditional_losses_1689164_æç/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_108_layer_call_fn_1689153Ræç/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ©
F__inference_dense_109_layer_call_and_return_conditional_losses_1689210_÷ø0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_109_layer_call_fn_1689200R÷ø0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ°
H__inference_dropout_526_layer_call_and_return_conditional_losses_1688156d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 °
H__inference_dropout_526_layer_call_and_return_conditional_losses_1688168d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dropout_526_layer_call_fn_1688146W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_dropout_526_layer_call_fn_1688151W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ°
H__inference_dropout_527_layer_call_and_return_conditional_losses_1688239d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 °
H__inference_dropout_527_layer_call_and_return_conditional_losses_1688251d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dropout_527_layer_call_fn_1688229W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_dropout_527_layer_call_fn_1688234W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ°
H__inference_dropout_528_layer_call_and_return_conditional_losses_1688442d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 °
H__inference_dropout_528_layer_call_and_return_conditional_losses_1688454d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dropout_528_layer_call_fn_1688432W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_dropout_528_layer_call_fn_1688437W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ°
H__inference_dropout_529_layer_call_and_return_conditional_losses_1688525d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 °
H__inference_dropout_529_layer_call_and_return_conditional_losses_1688537d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dropout_529_layer_call_fn_1688515W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_dropout_529_layer_call_fn_1688520W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ°
H__inference_dropout_530_layer_call_and_return_conditional_losses_1688728d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 °
H__inference_dropout_530_layer_call_and_return_conditional_losses_1688740d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dropout_530_layer_call_fn_1688718W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_dropout_530_layer_call_fn_1688723W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ°
H__inference_dropout_531_layer_call_and_return_conditional_losses_1688811d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 °
H__inference_dropout_531_layer_call_and_return_conditional_losses_1688823d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dropout_531_layer_call_fn_1688801W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_dropout_531_layer_call_fn_1688806W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ°
H__inference_dropout_532_layer_call_and_return_conditional_losses_1689014d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 °
H__inference_dropout_532_layer_call_and_return_conditional_losses_1689026d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dropout_532_layer_call_fn_1689004W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_dropout_532_layer_call_fn_1689009W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ°
H__inference_dropout_533_layer_call_and_return_conditional_losses_1689097d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 °
H__inference_dropout_533_layer_call_and_return_conditional_losses_1689109d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dropout_533_layer_call_fn_1689087W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_dropout_533_layer_call_fn_1689092W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿª
H__inference_dropout_534_layer_call_and_return_conditional_losses_1689179^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ª
H__inference_dropout_534_layer_call_and_return_conditional_losses_1689191^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dropout_534_layer_call_fn_1689169Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_dropout_534_layer_call_fn_1689174Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ×
X__inference_global_average_pooling1d_54_layer_call_and_return_conditional_losses_1689144{I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¯
=__inference_global_average_pooling1d_54_layer_call_fn_1689138nI¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
ª "!ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¼
T__inference_layer_normalization_432_layer_call_and_return_conditional_losses_1688020d<=3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
9__inference_layer_normalization_432_layer_call_fn_1687998W<=3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¼
T__inference_layer_normalization_433_layer_call_and_return_conditional_losses_1688199d]^3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
9__inference_layer_normalization_433_layer_call_fn_1688177W]^3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¾
T__inference_layer_normalization_434_layer_call_and_return_conditional_losses_1688306f3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
9__inference_layer_normalization_434_layer_call_fn_1688284Y3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¾
T__inference_layer_normalization_435_layer_call_and_return_conditional_losses_1688485f¦§3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
9__inference_layer_normalization_435_layer_call_fn_1688463Y¦§3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¾
T__inference_layer_normalization_436_layer_call_and_return_conditional_losses_1688592fÎÏ3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
9__inference_layer_normalization_436_layer_call_fn_1688570YÎÏ3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¾
T__inference_layer_normalization_437_layer_call_and_return_conditional_losses_1688771fïð3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
9__inference_layer_normalization_437_layer_call_fn_1688749Yïð3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¾
T__inference_layer_normalization_438_layer_call_and_return_conditional_losses_1688878f3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
9__inference_layer_normalization_438_layer_call_fn_1688856Y3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¾
T__inference_layer_normalization_439_layer_call_and_return_conditional_losses_1689057f¸¹3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
9__inference_layer_normalization_439_layer_call_fn_1689035Y¸¹3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ³
E__inference_model_54_layer_call_and_return_conditional_losses_1686509é<=úûüýþÿ]^fgxy¦§¯°ÁÂÎÏïðøù¸¹ÁÂÓÔæç÷ø=¢:
3¢0
&#
input_55ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ³
E__inference_model_54_layer_call_and_return_conditional_losses_1686689é<=úûüýþÿ]^fgxy¦§¯°ÁÂÎÏïðøù¸¹ÁÂÓÔæç÷ø=¢:
3¢0
&#
input_55ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ±
E__inference_model_54_layer_call_and_return_conditional_losses_1687506ç<=úûüýþÿ]^fgxy¦§¯°ÁÂÎÏïðøù¸¹ÁÂÓÔæç÷ø;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ±
E__inference_model_54_layer_call_and_return_conditional_losses_1687989ç<=úûüýþÿ]^fgxy¦§¯°ÁÂÎÏïðøù¸¹ÁÂÓÔæç÷ø;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_model_54_layer_call_fn_1684991Ü<=úûüýþÿ]^fgxy¦§¯°ÁÂÎÏïðøù¸¹ÁÂÓÔæç÷ø=¢:
3¢0
&#
input_55ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_model_54_layer_call_fn_1686329Ü<=úûüýþÿ]^fgxy¦§¯°ÁÂÎÏïðøù¸¹ÁÂÓÔæç÷ø=¢:
3¢0
&#
input_55ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_model_54_layer_call_fn_1686973Ú<=úûüýþÿ]^fgxy¦§¯°ÁÂÎÏïðøù¸¹ÁÂÓÔæç÷ø;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_model_54_layer_call_fn_1687114Ú<=úûüýþÿ]^fgxy¦§¯°ÁÂÎÏïðøù¸¹ÁÂÓÔæç÷ø;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
U__inference_multi_head_attention_216_layer_call_and_return_conditional_losses_1688099¦úûüýþÿg¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ
# 
valueÿÿÿÿÿÿÿÿÿ

 

 
p 
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
U__inference_multi_head_attention_216_layer_call_and_return_conditional_losses_1688141¦úûüýþÿg¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ
# 
valueÿÿÿÿÿÿÿÿÿ

 

 
p 
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ø
:__inference_multi_head_attention_216_layer_call_fn_1688042úûüýþÿg¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ
# 
valueÿÿÿÿÿÿÿÿÿ

 

 
p 
p 
ª "ÿÿÿÿÿÿÿÿÿØ
:__inference_multi_head_attention_216_layer_call_fn_1688064úûüýþÿg¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ
# 
valueÿÿÿÿÿÿÿÿÿ

 

 
p 
p
ª "ÿÿÿÿÿÿÿÿÿ
U__inference_multi_head_attention_217_layer_call_and_return_conditional_losses_1688385¦g¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ
# 
valueÿÿÿÿÿÿÿÿÿ

 

 
p 
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
U__inference_multi_head_attention_217_layer_call_and_return_conditional_losses_1688427¦g¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ
# 
valueÿÿÿÿÿÿÿÿÿ

 

 
p 
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ø
:__inference_multi_head_attention_217_layer_call_fn_1688328g¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ
# 
valueÿÿÿÿÿÿÿÿÿ

 

 
p 
p 
ª "ÿÿÿÿÿÿÿÿÿØ
:__inference_multi_head_attention_217_layer_call_fn_1688350g¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ
# 
valueÿÿÿÿÿÿÿÿÿ

 

 
p 
p
ª "ÿÿÿÿÿÿÿÿÿ
U__inference_multi_head_attention_218_layer_call_and_return_conditional_losses_1688671¦g¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ
# 
valueÿÿÿÿÿÿÿÿÿ

 

 
p 
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
U__inference_multi_head_attention_218_layer_call_and_return_conditional_losses_1688713¦g¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ
# 
valueÿÿÿÿÿÿÿÿÿ

 

 
p 
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ø
:__inference_multi_head_attention_218_layer_call_fn_1688614g¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ
# 
valueÿÿÿÿÿÿÿÿÿ

 

 
p 
p 
ª "ÿÿÿÿÿÿÿÿÿØ
:__inference_multi_head_attention_218_layer_call_fn_1688636g¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ
# 
valueÿÿÿÿÿÿÿÿÿ

 

 
p 
p
ª "ÿÿÿÿÿÿÿÿÿ
U__inference_multi_head_attention_219_layer_call_and_return_conditional_losses_1688957¦g¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ
# 
valueÿÿÿÿÿÿÿÿÿ

 

 
p 
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
U__inference_multi_head_attention_219_layer_call_and_return_conditional_losses_1688999¦g¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ
# 
valueÿÿÿÿÿÿÿÿÿ

 

 
p 
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ø
:__inference_multi_head_attention_219_layer_call_fn_1688900g¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ
# 
valueÿÿÿÿÿÿÿÿÿ

 

 
p 
p 
ª "ÿÿÿÿÿÿÿÿÿØ
:__inference_multi_head_attention_219_layer_call_fn_1688922g¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ
# 
valueÿÿÿÿÿÿÿÿÿ

 

 
p 
p
ª "ÿÿÿÿÿÿÿÿÿ§
%__inference_signature_wrapper_1686832ý<=úûüýþÿ]^fgxy¦§¯°ÁÂÎÏïðøù¸¹ÁÂÓÔæç÷øA¢>
¢ 
7ª4
2
input_55&#
input_55ÿÿÿÿÿÿÿÿÿ"5ª2
0
	dense_109# 
	dense_109ÿÿÿÿÿÿÿÿÿ