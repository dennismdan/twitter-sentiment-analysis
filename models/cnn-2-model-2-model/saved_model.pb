╚Ъ
Ј,т+
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
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
љ
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestypeѕ
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttypeѕ
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttypeѕ
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
ї
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
ѓ
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
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
е
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeѕ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
│
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
Ї
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Ќ
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
Ц
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	ѕ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
list(type)(0ѕ
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Й
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
executor_typestring ѕ
└
StatelessIf
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
Ш
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
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint         
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.5.02v2.5.0-0-ga4dfb8d1a718└┤
Ё
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Х)d*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	Х)d*
dtype0
{
conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:dђ*
shared_nameconv1d/kernel
t
!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*#
_output_shapes
:dђ*
dtype0
o
conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_nameconv1d/bias
h
conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
_output_shapes	
:ђ*
dtype0
І
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ**
shared_namebatch_normalization/gamma
ё
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes	
:ђ*
dtype0
Ѕ
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*)
shared_namebatch_normalization/beta
ѓ
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes	
:ђ*
dtype0
Ќ
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*0
shared_name!batch_normalization/moving_mean
љ
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes	
:ђ*
dtype0
Ъ
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*4
shared_name%#batch_normalization/moving_variance
ў
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes	
:ђ*
dtype0
ђ
conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ* 
shared_nameconv1d_1/kernel
y
#conv1d_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_1/kernel*$
_output_shapes
:ђђ*
dtype0
s
conv1d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_nameconv1d_1/bias
l
!conv1d_1/bias/Read/ReadVariableOpReadVariableOpconv1d_1/bias*
_output_shapes	
:ђ*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђа*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
ђа*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:а*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
аа*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
аа*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:а*
dtype0
Ђ
predictions/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	а*#
shared_namepredictions/kernel
z
&predictions/kernel/Read/ReadVariableOpReadVariableOppredictions/kernel*
_output_shapes
:	а*
dtype0
x
predictions/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namepredictions/bias
q
$predictions/bias/Read/ReadVariableOpReadVariableOppredictions/bias*
_output_shapes
:*
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
і
string_lookup_1_index_tableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_8565*
value_dtype0	
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
Ѕ
Adam/conv1d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:dђ*%
shared_nameAdam/conv1d/kernel/m
ѓ
(Adam/conv1d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d/kernel/m*#
_output_shapes
:dђ*
dtype0
}
Adam/conv1d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*#
shared_nameAdam/conv1d/bias/m
v
&Adam/conv1d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d/bias/m*
_output_shapes	
:ђ*
dtype0
Ў
 Adam/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*1
shared_name" Adam/batch_normalization/gamma/m
њ
4Adam/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/m*
_output_shapes	
:ђ*
dtype0
Ќ
Adam/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*0
shared_name!Adam/batch_normalization/beta/m
љ
3Adam/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/m*
_output_shapes	
:ђ*
dtype0
ј
Adam/conv1d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*'
shared_nameAdam/conv1d_1/kernel/m
Є
*Adam/conv1d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/m*$
_output_shapes
:ђђ*
dtype0
Ђ
Adam/conv1d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*%
shared_nameAdam/conv1d_1/bias/m
z
(Adam/conv1d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/m*
_output_shapes	
:ђ*
dtype0
ё
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђа*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
ђа*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:а*
dtype0
ѕ
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
аа*&
shared_nameAdam/dense_1/kernel/m
Ђ
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m* 
_output_shapes
:
аа*
dtype0

Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*$
shared_nameAdam/dense_1/bias/m
x
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes	
:а*
dtype0
Ј
Adam/predictions/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	а**
shared_nameAdam/predictions/kernel/m
ѕ
-Adam/predictions/kernel/m/Read/ReadVariableOpReadVariableOpAdam/predictions/kernel/m*
_output_shapes
:	а*
dtype0
є
Adam/predictions/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/predictions/bias/m

+Adam/predictions/bias/m/Read/ReadVariableOpReadVariableOpAdam/predictions/bias/m*
_output_shapes
:*
dtype0
Ѕ
Adam/conv1d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:dђ*%
shared_nameAdam/conv1d/kernel/v
ѓ
(Adam/conv1d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d/kernel/v*#
_output_shapes
:dђ*
dtype0
}
Adam/conv1d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*#
shared_nameAdam/conv1d/bias/v
v
&Adam/conv1d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d/bias/v*
_output_shapes	
:ђ*
dtype0
Ў
 Adam/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*1
shared_name" Adam/batch_normalization/gamma/v
њ
4Adam/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/v*
_output_shapes	
:ђ*
dtype0
Ќ
Adam/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*0
shared_name!Adam/batch_normalization/beta/v
љ
3Adam/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/v*
_output_shapes	
:ђ*
dtype0
ј
Adam/conv1d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*'
shared_nameAdam/conv1d_1/kernel/v
Є
*Adam/conv1d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/v*$
_output_shapes
:ђђ*
dtype0
Ђ
Adam/conv1d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*%
shared_nameAdam/conv1d_1/bias/v
z
(Adam/conv1d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/v*
_output_shapes	
:ђ*
dtype0
ё
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђа*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
ђа*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:а*
dtype0
ѕ
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
аа*&
shared_nameAdam/dense_1/kernel/v
Ђ
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v* 
_output_shapes
:
аа*
dtype0

Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:а*$
shared_nameAdam/dense_1/bias/v
x
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes	
:а*
dtype0
Ј
Adam/predictions/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	а**
shared_nameAdam/predictions/kernel/v
ѕ
-Adam/predictions/kernel/v/Read/ReadVariableOpReadVariableOpAdam/predictions/kernel/v*
_output_shapes
:	а*
dtype0
є
Adam/predictions/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/predictions/bias/v

+Adam/predictions/bias/v/Read/ReadVariableOpReadVariableOpAdam/predictions/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
Ж
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
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
GPU 2J 8ѓ *$
fR
__inference_<lambda>_362933

NoOpNoOp^PartitionedCall
У
Jstring_lookup_1_index_table_lookup_table_export_values/LookupTableExportV2LookupTableExportV2string_lookup_1_index_table*
Tkeys0*
Tvalues0	*.
_class$
" loc:@string_lookup_1_index_table*
_output_shapes

::
¤T
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*ѕT
value■SBчS BЗS
ч
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer-8

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
 
=
state_variables
_index_lookup_layer
	keras_api
b

embeddings
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
 	keras_api
h

!kernel
"bias
#regularization_losses
$	variables
%trainable_variables
&	keras_api
Ќ
'axis
	(gamma
)beta
*moving_mean
+moving_variance
,regularization_losses
-	variables
.trainable_variables
/	keras_api
R
0regularization_losses
1	variables
2trainable_variables
3	keras_api
h

4kernel
5bias
6regularization_losses
7	variables
8trainable_variables
9	keras_api
R
:regularization_losses
;	variables
<trainable_variables
=	keras_api
R
>regularization_losses
?	variables
@trainable_variables
A	keras_api
h

Bkernel
Cbias
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
R
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
h

Lkernel
Mbias
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
h

Rkernel
Sbias
Tregularization_losses
U	variables
Vtrainable_variables
W	keras_api
░
Xiter

Ybeta_1

Zbeta_2
	[decay
\learning_rate!mг"mГ(m«)m»4m░5m▒Bm▓Cm│Lm┤MmхRmХSmи!vИ"v╣(v║)v╗4v╝5vйBvЙCv┐Lv└Mv┴Rv┬Sv├
 
o
1
!2
"3
(4
)5
*6
+7
48
59
B10
C11
L12
M13
R14
S15
V
!0
"1
(2
)3
44
55
B6
C7
L8
M9
R10
S11
Г
]metrics
regularization_losses
	variables

^layers
_layer_metrics
`layer_regularization_losses
trainable_variables
anon_trainable_variables
 
 
0
bstate_variables

c_table
d	keras_api
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

0
 
Г
emetrics
regularization_losses
	variables

flayers
glayer_metrics
hlayer_regularization_losses
trainable_variables
inon_trainable_variables
 
 
 
Г
jmetrics
regularization_losses
	variables

klayers
llayer_metrics
mlayer_regularization_losses
trainable_variables
nnon_trainable_variables
YW
VARIABLE_VALUEconv1d/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv1d/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
Г
ometrics
#regularization_losses
$	variables

players
qlayer_metrics
rlayer_regularization_losses
%trainable_variables
snon_trainable_variables
 
db
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

(0
)1
*2
+3

(0
)1
Г
tmetrics
,regularization_losses
-	variables

ulayers
vlayer_metrics
wlayer_regularization_losses
.trainable_variables
xnon_trainable_variables
 
 
 
Г
ymetrics
0regularization_losses
1	variables

zlayers
{layer_metrics
|layer_regularization_losses
2trainable_variables
}non_trainable_variables
[Y
VARIABLE_VALUEconv1d_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

40
51

40
51
░
~metrics
6regularization_losses
7	variables

layers
ђlayer_metrics
 Ђlayer_regularization_losses
8trainable_variables
ѓnon_trainable_variables
 
 
 
▓
Ѓmetrics
:regularization_losses
;	variables
ёlayers
Ёlayer_metrics
 єlayer_regularization_losses
<trainable_variables
Єnon_trainable_variables
 
 
 
▓
ѕmetrics
>regularization_losses
?	variables
Ѕlayers
іlayer_metrics
 Іlayer_regularization_losses
@trainable_variables
їnon_trainable_variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

B0
C1

B0
C1
▓
Їmetrics
Dregularization_losses
E	variables
јlayers
Јlayer_metrics
 љlayer_regularization_losses
Ftrainable_variables
Љnon_trainable_variables
 
 
 
▓
њmetrics
Hregularization_losses
I	variables
Њlayers
ћlayer_metrics
 Ћlayer_regularization_losses
Jtrainable_variables
ќnon_trainable_variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

L0
M1

L0
M1
▓
Ќmetrics
Nregularization_losses
O	variables
ўlayers
Ўlayer_metrics
 џlayer_regularization_losses
Ptrainable_variables
Џnon_trainable_variables
^\
VARIABLE_VALUEpredictions/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEpredictions/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1

R0
S1
▓
юmetrics
Tregularization_losses
U	variables
Юlayers
ъlayer_metrics
 Ъlayer_regularization_losses
Vtrainable_variables
аnon_trainable_variables
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

А0
б1
f
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
 
 

1
*2
+3
 
LJ
tableAlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table
 
 
 
 
 

0
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

*0
+1
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
8

Бtotal

цcount
Ц	variables
д	keras_api
I

Дtotal

еcount
Е
_fn_kwargs
ф	variables
Ф	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Б0
ц1

Ц	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Д0
е1

ф	variables
|z
VARIABLE_VALUEAdam/conv1d/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv1d/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ѕЁ
VARIABLE_VALUE Adam/batch_normalization/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
єЃ
VARIABLE_VALUEAdam/batch_normalization/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_1/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_1/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ђ
VARIABLE_VALUEAdam/predictions/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/predictions/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv1d/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv1d/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ѕЁ
VARIABLE_VALUE Adam/batch_normalization/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
єЃ
VARIABLE_VALUEAdam/batch_normalization/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_1/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_1/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ђ
VARIABLE_VALUEAdam/predictions/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/predictions/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:         *
dtype0*
shape:         
А
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1string_lookup_1_index_tableConstembedding/embeddingsconv1d/kernelconv1d/bias#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betaconv1d_1/kernelconv1d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/biaspredictions/kernelpredictions/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *-
f(R&
$__inference_signature_wrapper_362098
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
 
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp!conv1d/kernel/Read/ReadVariableOpconv1d/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp#conv1d_1/kernel/Read/ReadVariableOp!conv1d_1/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp&predictions/kernel/Read/ReadVariableOp$predictions/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpJstring_lookup_1_index_table_lookup_table_export_values/LookupTableExportV2Lstring_lookup_1_index_table_lookup_table_export_values/LookupTableExportV2:1total/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv1d/kernel/m/Read/ReadVariableOp&Adam/conv1d/bias/m/Read/ReadVariableOp4Adam/batch_normalization/gamma/m/Read/ReadVariableOp3Adam/batch_normalization/beta/m/Read/ReadVariableOp*Adam/conv1d_1/kernel/m/Read/ReadVariableOp(Adam/conv1d_1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp-Adam/predictions/kernel/m/Read/ReadVariableOp+Adam/predictions/bias/m/Read/ReadVariableOp(Adam/conv1d/kernel/v/Read/ReadVariableOp&Adam/conv1d/bias/v/Read/ReadVariableOp4Adam/batch_normalization/gamma/v/Read/ReadVariableOp3Adam/batch_normalization/beta/v/Read/ReadVariableOp*Adam/conv1d_1/kernel/v/Read/ReadVariableOp(Adam/conv1d_1/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp-Adam/predictions/kernel/v/Read/ReadVariableOp+Adam/predictions/bias/v/Read/ReadVariableOpConst_1*?
Tin8
624		*
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
GPU 2J 8ѓ *(
f#R!
__inference__traced_save_363107
║

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsconv1d/kernelconv1d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv1d_1/kernelconv1d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/biaspredictions/kernelpredictions/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratestring_lookup_1_index_tabletotalcounttotal_1count_1Adam/conv1d/kernel/mAdam/conv1d/bias/m Adam/batch_normalization/gamma/mAdam/batch_normalization/beta/mAdam/conv1d_1/kernel/mAdam/conv1d_1/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/predictions/kernel/mAdam/predictions/bias/mAdam/conv1d/kernel/vAdam/conv1d/bias/v Adam/batch_normalization/gamma/vAdam/batch_normalization/beta/vAdam/conv1d_1/kernel/vAdam/conv1d_1/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/predictions/kernel/vAdam/predictions/bias/v*=
Tin6
422*
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
GPU 2J 8ѓ *+
f&R$
"__inference__traced_restore_363264▓О
ч
О
$text_vectorization_cond_false_361670'
#text_vectorization_cond_placeholder`
\text_vectorization_cond_strided_slice_text_vectorization_raggedtotensor_raggedtensortotensor	$
 text_vectorization_cond_identity	Ф
+text_vectorization/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2-
+text_vectorization/cond/strided_slice/stack»
-text_vectorization/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-text_vectorization/cond/strided_slice/stack_1»
-text_vectorization/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2/
-text_vectorization/cond/strided_slice/stack_2╠
%text_vectorization/cond/strided_sliceStridedSlice\text_vectorization_cond_strided_slice_text_vectorization_raggedtotensor_raggedtensortotensor4text_vectorization/cond/strided_slice/stack:output:06text_vectorization/cond/strided_slice/stack_1:output:06text_vectorization/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:                  *

begin_mask*
end_mask2'
%text_vectorization/cond/strided_slice╗
 text_vectorization/cond/IdentityIdentity.text_vectorization/cond/strided_slice:output:0*
T0	*0
_output_shapes
:                  2"
 text_vectorization/cond/Identity"M
 text_vectorization_cond_identity)text_vectorization/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :                  : 

_output_shapes
: :62
0
_output_shapes
:                  
ч*
В
O__inference_batch_normalization_layer_call_and_return_conditional_losses_360998

inputs6
'assignmovingavg_readvariableop_resource:	ђ8
)assignmovingavg_1_readvariableop_resource:	ђ4
%batchnorm_mul_readvariableop_resource:	ђ0
!batchnorm_readvariableop_resource:	ђ
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбbatchnorm/ReadVariableOpбbatchnorm/mul/ReadVariableOpЉ
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indicesћ
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(2
moments/meanЂ
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:ђ2
moments/StopGradient▓
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:                  ђ2
moments/SquaredDifferenceЎ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesи
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(2
moments/varianceѓ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 2
moments/Squeezeі
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<2
AssignMovingAvg/decayЦ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ђ*
dtype02 
AssignMovingAvg/ReadVariableOpЎ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:ђ2
AssignMovingAvg/subљ
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ђ2
AssignMovingAvg/mul┐
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<2
AssignMovingAvg_1/decayФ
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype02"
 AssignMovingAvg_1/ReadVariableOpА
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ђ2
AssignMovingAvg_1/subў
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ђ2
AssignMovingAvg_1/mul╔
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2
batchnorm/add/yЃ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/RsqrtЪ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/mul/ReadVariableOpє
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2
batchnorm/mulё
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:                  ђ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/mul_2Њ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/ReadVariableOpѓ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/subЊ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:                  ђ2
batchnorm/add_1Ў
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:                  ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
╬
c
*__inference_dropout_2_layer_call_fn_362829

inputs
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3614242
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         а2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         а22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
┤
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_362846

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         а2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeх
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         а*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         а2
dropout/GreaterEqualђ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         а2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         а2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         а2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         а:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
х

щ
G__inference_predictions_layer_call_and_return_conditional_losses_362886

inputs1
matmul_readvariableop_resource:	а-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	а*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoidљ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
╩
Т
#text_vectorization_cond_true_362387A
=text_vectorization_cond_pad_paddings_1_text_vectorization_subV
Rtext_vectorization_cond_pad_text_vectorization_raggedtotensor_raggedtensortotensor	$
 text_vectorization_cond_identity	ќ
(text_vectorization/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2*
(text_vectorization/cond/Pad/paddings/1/0Э
&text_vectorization/cond/Pad/paddings/1Pack1text_vectorization/cond/Pad/paddings/1/0:output:0=text_vectorization_cond_pad_paddings_1_text_vectorization_sub*
N*
T0*
_output_shapes
:2(
&text_vectorization/cond/Pad/paddings/1Ц
(text_vectorization/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(text_vectorization/cond/Pad/paddings/0_1Ж
$text_vectorization/cond/Pad/paddingsPack1text_vectorization/cond/Pad/paddings/0_1:output:0/text_vectorization/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2&
$text_vectorization/cond/Pad/paddings 
text_vectorization/cond/PadPadRtext_vectorization_cond_pad_text_vectorization_raggedtotensor_raggedtensortotensor-text_vectorization/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:                  2
text_vectorization/cond/Pad▒
 text_vectorization/cond/IdentityIdentity$text_vectorization/cond/Pad:output:0*
T0	*0
_output_shapes
:                  2"
 text_vectorization/cond/Identity"M
 text_vectorization_cond_identity)text_vectorization/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :                  : 

_output_shapes
: :62
0
_output_shapes
:                  
а
ў
(__inference_dense_1_layer_call_fn_362855

inputs
unknown:
аа
	unknown_0:	а
identityѕбStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3613232
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         а2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
ч
О
$text_vectorization_cond_false_361867'
#text_vectorization_cond_placeholder`
\text_vectorization_cond_strided_slice_text_vectorization_raggedtotensor_raggedtensortotensor	$
 text_vectorization_cond_identity	Ф
+text_vectorization/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2-
+text_vectorization/cond/strided_slice/stack»
-text_vectorization/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-text_vectorization/cond/strided_slice/stack_1»
-text_vectorization/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2/
-text_vectorization/cond/strided_slice/stack_2╠
%text_vectorization/cond/strided_sliceStridedSlice\text_vectorization_cond_strided_slice_text_vectorization_raggedtotensor_raggedtensortotensor4text_vectorization/cond/strided_slice/stack:output:06text_vectorization/cond/strided_slice/stack_1:output:06text_vectorization/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:                  *

begin_mask*
end_mask2'
%text_vectorization/cond/strided_slice╗
 text_vectorization/cond/IdentityIdentity.text_vectorization/cond/strided_slice:output:0*
T0	*0
_output_shapes
:                  2"
 text_vectorization/cond/Identity"M
 text_vectorization_cond_identity)text_vectorization/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :                  : 

_output_shapes
: :62
0
_output_shapes
:                  
╩
Т
#text_vectorization_cond_true_361165A
=text_vectorization_cond_pad_paddings_1_text_vectorization_subV
Rtext_vectorization_cond_pad_text_vectorization_raggedtotensor_raggedtensortotensor	$
 text_vectorization_cond_identity	ќ
(text_vectorization/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2*
(text_vectorization/cond/Pad/paddings/1/0Э
&text_vectorization/cond/Pad/paddings/1Pack1text_vectorization/cond/Pad/paddings/1/0:output:0=text_vectorization_cond_pad_paddings_1_text_vectorization_sub*
N*
T0*
_output_shapes
:2(
&text_vectorization/cond/Pad/paddings/1Ц
(text_vectorization/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(text_vectorization/cond/Pad/paddings/0_1Ж
$text_vectorization/cond/Pad/paddingsPack1text_vectorization/cond/Pad/paddings/0_1:output:0/text_vectorization/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2&
$text_vectorization/cond/Pad/paddings 
text_vectorization/cond/PadPadRtext_vectorization_cond_pad_text_vectorization_raggedtotensor_raggedtensortotensor-text_vectorization/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:                  2
text_vectorization/cond/Pad▒
 text_vectorization/cond/IdentityIdentity$text_vectorization/cond/Pad:output:0*
T0	*0
_output_shapes
:                  2"
 text_vectorization/cond/Identity"M
 text_vectorization_cond_identity)text_vectorization/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :                  : 

_output_shapes
: :62
0
_output_shapes
:                  
К
▓
O__inference_batch_normalization_layer_call_and_return_conditional_losses_362713

inputs0
!batchnorm_readvariableop_resource:	ђ4
%batchnorm_mul_readvariableop_resource:	ђ2
#batchnorm_readvariableop_1_resource:	ђ2
#batchnorm_readvariableop_2_resource:	ђ
identityѕбbatchnorm/ReadVariableOpбbatchnorm/ReadVariableOp_1бbatchnorm/ReadVariableOp_2бbatchnorm/mul/ReadVariableOpЊ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2
batchnorm/add/yЅ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/RsqrtЪ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/mul/ReadVariableOpє
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2
batchnorm/mul|
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:         Ќђ2
batchnorm/mul_1Ў
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/ReadVariableOp_1є
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/mul_2Ў
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/ReadVariableOp_2ё
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/subІ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:         Ќђ2
batchnorm/add_1р
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:         Ќђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         Ќђ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:         Ќђ
 
_user_specified_nameinputs
╩
Т
#text_vectorization_cond_true_361669A
=text_vectorization_cond_pad_paddings_1_text_vectorization_subV
Rtext_vectorization_cond_pad_text_vectorization_raggedtotensor_raggedtensortotensor	$
 text_vectorization_cond_identity	ќ
(text_vectorization/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2*
(text_vectorization/cond/Pad/paddings/1/0Э
&text_vectorization/cond/Pad/paddings/1Pack1text_vectorization/cond/Pad/paddings/1/0:output:0=text_vectorization_cond_pad_paddings_1_text_vectorization_sub*
N*
T0*
_output_shapes
:2(
&text_vectorization/cond/Pad/paddings/1Ц
(text_vectorization/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(text_vectorization/cond/Pad/paddings/0_1Ж
$text_vectorization/cond/Pad/paddingsPack1text_vectorization/cond/Pad/paddings/0_1:output:0/text_vectorization/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2&
$text_vectorization/cond/Pad/paddings 
text_vectorization/cond/PadPadRtext_vectorization_cond_pad_text_vectorization_raggedtotensor_raggedtensortotensor-text_vectorization/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:                  2
text_vectorization/cond/Pad▒
 text_vectorization/cond/IdentityIdentity$text_vectorization/cond/Pad:output:0*
T0	*0
_output_shapes
:                  2"
 text_vectorization/cond/Identity"M
 text_vectorization_cond_identity)text_vectorization/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :                  : 

_output_shapes
: :62
0
_output_shapes
:                  
«
Е
&__inference_model_layer_call_fn_362137

inputs
unknown
	unknown_0	
	unknown_1:	Х)d 
	unknown_2:dђ
	unknown_3:	ђ
	unknown_4:	ђ
	unknown_5:	ђ
	unknown_6:	ђ
	unknown_7:	ђ!
	unknown_8:ђђ
	unknown_9:	ђ

unknown_10:
ђа

unknown_11:	а

unknown_12:
аа

unknown_13:	а

unknown_14:	а

unknown_15:
identityѕбStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_3613472
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:

_output_shapes
: 
т
Њ
B__inference_conv1d_layer_call_and_return_conditional_losses_361222

inputsB
+conv1d_expanddims_1_readvariableop_resource:dђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpб"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        2
conv1d/ExpandDims/dimЌ
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ўd2
conv1d/ExpandDims╣
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:dђ*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimИ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:dђ2
conv1d/ExpandDims_1╣
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:         Ќђ*
paddingVALID*
strides
2
conv1dћ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:         Ќђ*
squeeze_dims

§        2
conv1d/SqueezeЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpј
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:         Ќђ2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:         Ќђ2
Reluф
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*-
_output_shapes
:         Ќђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ўd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:         ўd
 
_user_specified_nameinputs
х

ш
A__inference_dense_layer_call_and_return_conditional_losses_362819

inputs2
matmul_readvariableop_resource:
ђа.
biasadd_readvariableop_resource:	а
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЈ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђа*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:а*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         а2
Reluў
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         а2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
╣	
Б
E__inference_embedding_layer_call_and_return_conditional_losses_362535

inputs	*
embedding_lookup_362529:	Х)d
identityѕбembedding_lookupЧ
embedding_lookupResourceGatherembedding_lookup_362529inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	**
_class 
loc:@embedding_lookup/362529*,
_output_shapes
:         ўd*
dtype02
embedding_lookupЬ
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/362529*,
_output_shapes
:         ўd2
embedding_lookup/IdentityА
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:         ўd2
embedding_lookup/Identity_1љ
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:         ўd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:         ў: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:         ў
 
_user_specified_nameinputs
»
l
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_361098

inputs
identityp
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Max/reduction_indicest
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:                  2
Maxi
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:                  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
─	
­
__inference_restore_fn_362928
restored_tensors_0
restored_tensors_1	N
Jstring_lookup_1_index_table_table_restore_lookuptableimportv2_table_handle
identityѕб=string_lookup_1_index_table_table_restore/LookupTableImportV2С
=string_lookup_1_index_table_table_restore/LookupTableImportV2LookupTableImportV2Jstring_lookup_1_index_table_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 2?
=string_lookup_1_index_table_table_restore/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstЉ
IdentityIdentityConst:output:0>^string_lookup_1_index_table_table_restore/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2~
=string_lookup_1_index_table_table_restore/LookupTableImportV2=string_lookup_1_index_table_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
Љ┤
њ	
A__inference_model_layer_call_and_return_conditional_losses_361347

inputs\
Xtext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_table_handle]
Ytext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_default_value	#
embedding_361196:	Х)d$
conv1d_361223:dђ
conv1d_361225:	ђ)
batch_normalization_361248:	ђ)
batch_normalization_361250:	ђ)
batch_normalization_361252:	ђ)
batch_normalization_361254:	ђ'
conv1d_1_361275:ђђ
conv1d_1_361277:	ђ 
dense_361300:
ђа
dense_361302:	а"
dense_1_361324:
аа
dense_1_361326:	а%
predictions_361341:	а 
predictions_361343:
identityѕб+batch_normalization/StatefulPartitionedCallбconv1d/StatefulPartitionedCallб conv1d_1/StatefulPartitionedCallбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallб!embedding/StatefulPartitionedCallб#predictions/StatefulPartitionedCallбKtext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2ђ
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:         2 
text_vectorization/StringLower§
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:         *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace┴
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:         *
squeeze_dims

         2
text_vectorization/SqueezeЇ
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const 
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:         :         :2.
,text_vectorization/StringSplit/StringSplitV2╣
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stackй
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1й
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2н
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_sliceХ
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack║
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1║
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2Г
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1ф
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:         2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastБ
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1╦
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shapeї
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Constй
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prodї
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y╔
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater▀
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Castљ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Г
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maxё
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y║
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addГ
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul▓
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumХ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumЅ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2░
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:         2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount■
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis╝
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:         2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsumј
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0■
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisд
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:         2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatЁ
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Xtext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ytext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:         2M
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2і
4text_vectorization/string_lookup_1/assert_equal/NoOpNoOp*
_output_shapes
 26
4text_vectorization/string_lookup_1/assert_equal/NoOpЖ
+text_vectorization/string_lookup_1/IdentityIdentityTtext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         2-
+text_vectorization/string_lookup_1/IdentityЩ
-text_vectorization/string_lookup_1/Identity_1Identity`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:         2/
-text_vectorization/string_lookup_1/Identity_1ц
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_valueЮ
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
         2)
'text_vectorization/RaggedToTensor/ConstЂ
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:04text_vectorization/string_lookup_1/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:06text_vectorization/string_lookup_1/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:                  *
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensorБ
text_vectorization/ShapeShape?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization/Shapeџ
&text_vectorization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&text_vectorization/strided_slice/stackъ
(text_vectorization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization/strided_slice/stack_1ъ
(text_vectorization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization/strided_slice/stack_2н
 text_vectorization/strided_sliceStridedSlice!text_vectorization/Shape:output:0/text_vectorization/strided_slice/stack:output:01text_vectorization/strided_slice/stack_1:output:01text_vectorization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 text_vectorization/strided_slicew
text_vectorization/sub/xConst*
_output_shapes
: *
dtype0*
value
B :ў2
text_vectorization/sub/xд
text_vectorization/subSub!text_vectorization/sub/x:output:0)text_vectorization/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization/suby
text_vectorization/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ў2
text_vectorization/Less/yф
text_vectorization/LessLess)text_vectorization/strided_slice:output:0"text_vectorization/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization/Less§
text_vectorization/condStatelessIftext_vectorization/Less:z:0text_vectorization/sub:z:0?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:                  * 
_read_only_resource_inputs
 *7
else_branch(R&
$text_vectorization_cond_false_361166*/
output_shapes
:                  *6
then_branch'R%
#text_vectorization_cond_true_3611652
text_vectorization/condЦ
 text_vectorization/cond/IdentityIdentity text_vectorization/cond:output:0*
T0	*(
_output_shapes
:         ў2"
 text_vectorization/cond/IdentityГ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)text_vectorization/cond/Identity:output:0embedding_361196*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ўd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_3611952#
!embedding/StatefulPartitionedCallЩ
dropout/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ўd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3612042
dropout/PartitionedCallф
conv1d/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv1d_361223conv1d_361225*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ќђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_3612222 
conv1d/StatefulPartitionedCall«
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0batch_normalization_361248batch_normalization_361250batch_normalization_361252batch_normalization_361254*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ќђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_3612472-
+batch_normalization/StatefulPartitionedCallЌ
max_pooling1d/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Іђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_max_pooling1d_layer_call_and_return_conditional_losses_3610852
max_pooling1d/PartitionedCall║
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling1d/PartitionedCall:output:0conv1d_1_361275conv1d_1_361277*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ёђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_3612742"
 conv1d_1/StatefulPartitionedCallђ
dropout_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ёђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3612852
dropout_1/PartitionedCallЋ
$global_max_pooling1d/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_3610982&
$global_max_pooling1d/PartitionedCallГ
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_361300dense_361302*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3612992
dense/StatefulPartitionedCallЭ
dropout_2/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3613102
dropout_2/PartitionedCallг
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_1_361324dense_1_361326*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3613232!
dense_1/StatefulPartitionedCall┼
#predictions/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0predictions_361341predictions_361343*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_predictions_layer_call_and_return_conditional_losses_3613402%
#predictions/StatefulPartitionedCall╠
IdentityIdentity,predictions/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^predictions/StatefulPartitionedCallL^text_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall2џ
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:

_output_shapes
: 
ЌЂ
Њ
!__inference__wrapped_model_360914
input_1b
^model_text_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_table_handlec
_model_text_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_default_value	:
'model_embedding_embedding_lookup_360838:	Х)dO
8model_conv1d_conv1d_expanddims_1_readvariableop_resource:dђ;
,model_conv1d_biasadd_readvariableop_resource:	ђJ
;model_batch_normalization_batchnorm_readvariableop_resource:	ђN
?model_batch_normalization_batchnorm_mul_readvariableop_resource:	ђL
=model_batch_normalization_batchnorm_readvariableop_1_resource:	ђL
=model_batch_normalization_batchnorm_readvariableop_2_resource:	ђR
:model_conv1d_1_conv1d_expanddims_1_readvariableop_resource:ђђ=
.model_conv1d_1_biasadd_readvariableop_resource:	ђ>
*model_dense_matmul_readvariableop_resource:
ђа:
+model_dense_biasadd_readvariableop_resource:	а@
,model_dense_1_matmul_readvariableop_resource:
аа<
-model_dense_1_biasadd_readvariableop_resource:	аC
0model_predictions_matmul_readvariableop_resource:	а?
1model_predictions_biasadd_readvariableop_resource:
identityѕб2model/batch_normalization/batchnorm/ReadVariableOpб4model/batch_normalization/batchnorm/ReadVariableOp_1б4model/batch_normalization/batchnorm/ReadVariableOp_2б6model/batch_normalization/batchnorm/mul/ReadVariableOpб#model/conv1d/BiasAdd/ReadVariableOpб/model/conv1d/conv1d/ExpandDims_1/ReadVariableOpб%model/conv1d_1/BiasAdd/ReadVariableOpб1model/conv1d_1/conv1d/ExpandDims_1/ReadVariableOpб"model/dense/BiasAdd/ReadVariableOpб!model/dense/MatMul/ReadVariableOpб$model/dense_1/BiasAdd/ReadVariableOpб#model/dense_1/MatMul/ReadVariableOpб model/embedding/embedding_lookupб(model/predictions/BiasAdd/ReadVariableOpб'model/predictions/MatMul/ReadVariableOpбQmodel/text_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2Ї
$model/text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:         2&
$model/text_vectorization/StringLowerЈ
+model/text_vectorization/StaticRegexReplaceStaticRegexReplace-model/text_vectorization/StringLower:output:0*'
_output_shapes
:         *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2-
+model/text_vectorization/StaticRegexReplaceМ
 model/text_vectorization/SqueezeSqueeze4model/text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:         *
squeeze_dims

         2"
 model/text_vectorization/SqueezeЎ
*model/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2,
*model/text_vectorization/StringSplit/ConstЌ
2model/text_vectorization/StringSplit/StringSplitV2StringSplitV2)model/text_vectorization/Squeeze:output:03model/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:         :         :24
2model/text_vectorization/StringSplit/StringSplitV2┼
8model/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8model/text_vectorization/StringSplit/strided_slice/stack╔
:model/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2<
:model/text_vectorization/StringSplit/strided_slice/stack_1╔
:model/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:model/text_vectorization/StringSplit/strided_slice/stack_2Э
2model/text_vectorization/StringSplit/strided_sliceStridedSlice<model/text_vectorization/StringSplit/StringSplitV2:indices:0Amodel/text_vectorization/StringSplit/strided_slice/stack:output:0Cmodel/text_vectorization/StringSplit/strided_slice/stack_1:output:0Cmodel/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask*
shrink_axis_mask24
2model/text_vectorization/StringSplit/strided_slice┬
:model/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:model/text_vectorization/StringSplit/strided_slice_1/stackк
<model/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<model/text_vectorization/StringSplit/strided_slice_1/stack_1к
<model/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<model/text_vectorization/StringSplit/strided_slice_1/stack_2Л
4model/text_vectorization/StringSplit/strided_slice_1StridedSlice:model/text_vectorization/StringSplit/StringSplitV2:shape:0Cmodel/text_vectorization/StringSplit/strided_slice_1/stack:output:0Emodel/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Emodel/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask26
4model/text_vectorization/StringSplit/strided_slice_1╝
[model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast;model/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:         2]
[model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Castх
]model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast=model/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2_
]model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1П
emodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2g
emodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shapeў
emodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2g
emodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstН
dmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdnmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0nmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2f
dmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prodў
imodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2k
imodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yр
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatermmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0rmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2i
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greaterы
dmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastkmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2f
dmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Castю
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2i
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1┼
cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0pmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2e
cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maxљ
emodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2g
emodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yм
cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2lmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0nmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2e
cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add┼
cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulhmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2e
cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul╩
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumamodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2i
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum╬
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumamodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0kmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2i
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumЋ
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2i
gmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2╬
hmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount_model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0kmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0pmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:         2j
hmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincountі
bmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2d
bmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisн
]model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumomodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0kmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:         2_
]model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsumџ
fmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2h
fmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0і
bmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2d
bmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis─
]model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2omodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0cmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0kmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:         2_
]model/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatБ
Qmodel/text_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2LookupTableFindV2^model_text_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_table_handle;model/text_vectorization/StringSplit/StringSplitV2:values:0_model_text_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:         2S
Qmodel/text_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2ќ
:model/text_vectorization/string_lookup_1/assert_equal/NoOpNoOp*
_output_shapes
 2<
:model/text_vectorization/string_lookup_1/assert_equal/NoOpЧ
1model/text_vectorization/string_lookup_1/IdentityIdentityZmodel/text_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         23
1model/text_vectorization/string_lookup_1/Identityї
3model/text_vectorization/string_lookup_1/Identity_1Identityfmodel/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:         25
3model/text_vectorization/string_lookup_1/Identity_1░
5model/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 27
5model/text_vectorization/RaggedToTensor/default_valueЕ
-model/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
         2/
-model/text_vectorization/RaggedToTensor/ConstЦ
<model/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor6model/text_vectorization/RaggedToTensor/Const:output:0:model/text_vectorization/string_lookup_1/Identity:output:0>model/text_vectorization/RaggedToTensor/default_value:output:0<model/text_vectorization/string_lookup_1/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:                  *
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2>
<model/text_vectorization/RaggedToTensor/RaggedTensorToTensorх
model/text_vectorization/ShapeShapeEmodel/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2 
model/text_vectorization/Shapeд
,model/text_vectorization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,model/text_vectorization/strided_slice/stackф
.model/text_vectorization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.model/text_vectorization/strided_slice/stack_1ф
.model/text_vectorization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model/text_vectorization/strided_slice/stack_2Э
&model/text_vectorization/strided_sliceStridedSlice'model/text_vectorization/Shape:output:05model/text_vectorization/strided_slice/stack:output:07model/text_vectorization/strided_slice/stack_1:output:07model/text_vectorization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&model/text_vectorization/strided_sliceЃ
model/text_vectorization/sub/xConst*
_output_shapes
: *
dtype0*
value
B :ў2 
model/text_vectorization/sub/xЙ
model/text_vectorization/subSub'model/text_vectorization/sub/x:output:0/model/text_vectorization/strided_slice:output:0*
T0*
_output_shapes
: 2
model/text_vectorization/subЁ
model/text_vectorization/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ў2!
model/text_vectorization/Less/y┬
model/text_vectorization/LessLess/model/text_vectorization/strided_slice:output:0(model/text_vectorization/Less/y:output:0*
T0*
_output_shapes
: 2
model/text_vectorization/LessД
model/text_vectorization/condStatelessIf!model/text_vectorization/Less:z:0 model/text_vectorization/sub:z:0Emodel/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:                  * 
_read_only_resource_inputs
 *=
else_branch.R,
*model_text_vectorization_cond_false_360818*/
output_shapes
:                  *<
then_branch-R+
)model_text_vectorization_cond_true_3608172
model/text_vectorization/condи
&model/text_vectorization/cond/IdentityIdentity&model/text_vectorization/cond:output:0*
T0	*(
_output_shapes
:         ў2(
&model/text_vectorization/cond/Identityт
 model/embedding/embedding_lookupResourceGather'model_embedding_embedding_lookup_360838/model/text_vectorization/cond/Identity:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*:
_class0
.,loc:@model/embedding/embedding_lookup/360838*,
_output_shapes
:         ўd*
dtype02"
 model/embedding/embedding_lookup«
)model/embedding/embedding_lookup/IdentityIdentity)model/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*:
_class0
.,loc:@model/embedding/embedding_lookup/360838*,
_output_shapes
:         ўd2+
)model/embedding/embedding_lookup/IdentityЛ
+model/embedding/embedding_lookup/Identity_1Identity2model/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:         ўd2-
+model/embedding/embedding_lookup/Identity_1Е
model/dropout/IdentityIdentity4model/embedding/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:         ўd2
model/dropout/IdentityЊ
"model/conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        2$
"model/conv1d/conv1d/ExpandDims/dimО
model/conv1d/conv1d/ExpandDims
ExpandDimsmodel/dropout/Identity:output:0+model/conv1d/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ўd2 
model/conv1d/conv1d/ExpandDimsЯ
/model/conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp8model_conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:dђ*
dtype021
/model/conv1d/conv1d/ExpandDims_1/ReadVariableOpј
$model/conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model/conv1d/conv1d/ExpandDims_1/dimВ
 model/conv1d/conv1d/ExpandDims_1
ExpandDims7model/conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0-model/conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:dђ2"
 model/conv1d/conv1d/ExpandDims_1ь
model/conv1d/conv1dConv2D'model/conv1d/conv1d/ExpandDims:output:0)model/conv1d/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:         Ќђ*
paddingVALID*
strides
2
model/conv1d/conv1d╗
model/conv1d/conv1d/SqueezeSqueezemodel/conv1d/conv1d:output:0*
T0*-
_output_shapes
:         Ќђ*
squeeze_dims

§        2
model/conv1d/conv1d/Squeeze┤
#model/conv1d/BiasAdd/ReadVariableOpReadVariableOp,model_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#model/conv1d/BiasAdd/ReadVariableOp┬
model/conv1d/BiasAddBiasAdd$model/conv1d/conv1d/Squeeze:output:0+model/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:         Ќђ2
model/conv1d/BiasAddЁ
model/conv1d/ReluRelumodel/conv1d/BiasAdd:output:0*
T0*-
_output_shapes
:         Ќђ2
model/conv1d/Reluр
2model/batch_normalization/batchnorm/ReadVariableOpReadVariableOp;model_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:ђ*
dtype024
2model/batch_normalization/batchnorm/ReadVariableOpЏ
)model/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2+
)model/batch_normalization/batchnorm/add/yы
'model/batch_normalization/batchnorm/addAddV2:model/batch_normalization/batchnorm/ReadVariableOp:value:02model/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ2)
'model/batch_normalization/batchnorm/add▓
)model/batch_normalization/batchnorm/RsqrtRsqrt+model/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:ђ2+
)model/batch_normalization/batchnorm/Rsqrtь
6model/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp?model_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ*
dtype028
6model/batch_normalization/batchnorm/mul/ReadVariableOpЬ
'model/batch_normalization/batchnorm/mulMul-model/batch_normalization/batchnorm/Rsqrt:y:0>model/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2)
'model/batch_normalization/batchnorm/mulс
)model/batch_normalization/batchnorm/mul_1Mulmodel/conv1d/Relu:activations:0+model/batch_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:         Ќђ2+
)model/batch_normalization/batchnorm/mul_1у
4model/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp=model_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype026
4model/batch_normalization/batchnorm/ReadVariableOp_1Ь
)model/batch_normalization/batchnorm/mul_2Mul<model/batch_normalization/batchnorm/ReadVariableOp_1:value:0+model/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ2+
)model/batch_normalization/batchnorm/mul_2у
4model/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp=model_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:ђ*
dtype026
4model/batch_normalization/batchnorm/ReadVariableOp_2В
'model/batch_normalization/batchnorm/subSub<model/batch_normalization/batchnorm/ReadVariableOp_2:value:0-model/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ2)
'model/batch_normalization/batchnorm/subз
)model/batch_normalization/batchnorm/add_1AddV2-model/batch_normalization/batchnorm/mul_1:z:0+model/batch_normalization/batchnorm/sub:z:0*
T0*-
_output_shapes
:         Ќђ2+
)model/batch_normalization/batchnorm/add_1і
"model/max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"model/max_pooling1d/ExpandDims/dimТ
model/max_pooling1d/ExpandDims
ExpandDims-model/batch_normalization/batchnorm/add_1:z:0+model/max_pooling1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         Ќђ2 
model/max_pooling1d/ExpandDimsП
model/max_pooling1d/MaxPoolMaxPool'model/max_pooling1d/ExpandDims:output:0*1
_output_shapes
:         Іђ*
ksize
*
paddingVALID*
strides
2
model/max_pooling1d/MaxPool║
model/max_pooling1d/SqueezeSqueeze$model/max_pooling1d/MaxPool:output:0*
T0*-
_output_shapes
:         Іђ*
squeeze_dims
2
model/max_pooling1d/SqueezeЌ
$model/conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        2&
$model/conv1d_1/conv1d/ExpandDims/dimс
 model/conv1d_1/conv1d/ExpandDims
ExpandDims$model/max_pooling1d/Squeeze:output:0-model/conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         Іђ2"
 model/conv1d_1/conv1d/ExpandDimsу
1model/conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp:model_conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:ђђ*
dtype023
1model/conv1d_1/conv1d/ExpandDims_1/ReadVariableOpњ
&model/conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&model/conv1d_1/conv1d/ExpandDims_1/dimш
"model/conv1d_1/conv1d/ExpandDims_1
ExpandDims9model/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0/model/conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:ђђ2$
"model/conv1d_1/conv1d/ExpandDims_1ш
model/conv1d_1/conv1dConv2D)model/conv1d_1/conv1d/ExpandDims:output:0+model/conv1d_1/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:         Ёђ*
paddingVALID*
strides
2
model/conv1d_1/conv1d┴
model/conv1d_1/conv1d/SqueezeSqueezemodel/conv1d_1/conv1d:output:0*
T0*-
_output_shapes
:         Ёђ*
squeeze_dims

§        2
model/conv1d_1/conv1d/Squeeze║
%model/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02'
%model/conv1d_1/BiasAdd/ReadVariableOp╩
model/conv1d_1/BiasAddBiasAdd&model/conv1d_1/conv1d/Squeeze:output:0-model/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:         Ёђ2
model/conv1d_1/BiasAddІ
model/conv1d_1/ReluRelumodel/conv1d_1/BiasAdd:output:0*
T0*-
_output_shapes
:         Ёђ2
model/conv1d_1/ReluЏ
model/dropout_1/IdentityIdentity!model/conv1d_1/Relu:activations:0*
T0*-
_output_shapes
:         Ёђ2
model/dropout_1/Identityд
0model/global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :22
0model/global_max_pooling1d/Max/reduction_indicesп
model/global_max_pooling1d/MaxMax!model/dropout_1/Identity:output:09model/global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:         ђ2 
model/global_max_pooling1d/Max│
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
ђа*
dtype02#
!model/dense/MatMul/ReadVariableOp╣
model/dense/MatMulMatMul'model/global_max_pooling1d/Max:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2
model/dense/MatMul▒
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype02$
"model/dense/BiasAdd/ReadVariableOp▓
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2
model/dense/BiasAdd}
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         а2
model/dense/ReluЊ
model/dropout_2/IdentityIdentitymodel/dense/Relu:activations:0*
T0*(
_output_shapes
:         а2
model/dropout_2/Identity╣
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
аа*
dtype02%
#model/dense_1/MatMul/ReadVariableOp╣
model/dense_1/MatMulMatMul!model/dropout_2/Identity:output:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2
model/dense_1/MatMulи
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype02&
$model/dense_1/BiasAdd/ReadVariableOp║
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2
model/dense_1/BiasAddЃ
model/dense_1/TanhTanhmodel/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         а2
model/dense_1/Tanh─
'model/predictions/MatMul/ReadVariableOpReadVariableOp0model_predictions_matmul_readvariableop_resource*
_output_shapes
:	а*
dtype02)
'model/predictions/MatMul/ReadVariableOp╣
model/predictions/MatMulMatMulmodel/dense_1/Tanh:y:0/model/predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
model/predictions/MatMul┬
(model/predictions/BiasAdd/ReadVariableOpReadVariableOp1model_predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model/predictions/BiasAdd/ReadVariableOp╔
model/predictions/BiasAddBiasAdd"model/predictions/MatMul:product:00model/predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
model/predictions/BiasAddЌ
model/predictions/SigmoidSigmoid"model/predictions/BiasAdd:output:0*
T0*'
_output_shapes
:         2
model/predictions/Sigmoidс
IdentityIdentitymodel/predictions/Sigmoid:y:03^model/batch_normalization/batchnorm/ReadVariableOp5^model/batch_normalization/batchnorm/ReadVariableOp_15^model/batch_normalization/batchnorm/ReadVariableOp_27^model/batch_normalization/batchnorm/mul/ReadVariableOp$^model/conv1d/BiasAdd/ReadVariableOp0^model/conv1d/conv1d/ExpandDims_1/ReadVariableOp&^model/conv1d_1/BiasAdd/ReadVariableOp2^model/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp!^model/embedding/embedding_lookup)^model/predictions/BiasAdd/ReadVariableOp(^model/predictions/MatMul/ReadVariableOpR^model/text_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         : : : : : : : : : : : : : : : : : 2h
2model/batch_normalization/batchnorm/ReadVariableOp2model/batch_normalization/batchnorm/ReadVariableOp2l
4model/batch_normalization/batchnorm/ReadVariableOp_14model/batch_normalization/batchnorm/ReadVariableOp_12l
4model/batch_normalization/batchnorm/ReadVariableOp_24model/batch_normalization/batchnorm/ReadVariableOp_22p
6model/batch_normalization/batchnorm/mul/ReadVariableOp6model/batch_normalization/batchnorm/mul/ReadVariableOp2J
#model/conv1d/BiasAdd/ReadVariableOp#model/conv1d/BiasAdd/ReadVariableOp2b
/model/conv1d/conv1d/ExpandDims_1/ReadVariableOp/model/conv1d/conv1d/ExpandDims_1/ReadVariableOp2N
%model/conv1d_1/BiasAdd/ReadVariableOp%model/conv1d_1/BiasAdd/ReadVariableOp2f
1model/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp1model/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2D
 model/embedding/embedding_lookup model/embedding/embedding_lookup2T
(model/predictions/BiasAdd/ReadVariableOp(model/predictions/BiasAdd/ReadVariableOp2R
'model/predictions/MatMul/ReadVariableOp'model/predictions/MatMul/ReadVariableOp2д
Qmodel/text_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2Qmodel/text_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2:P L
'
_output_shapes
:         
!
_user_specified_name	input_1:

_output_shapes
: 
░
-
__inference__destroyer_362901
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
ь
ќ
D__inference_conv1d_1_layer_call_and_return_conditional_losses_362772

inputsC
+conv1d_expanddims_1_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpб"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        2
conv1d/ExpandDims/dimў
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         Іђ2
conv1d/ExpandDims║
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:ђђ*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim╣
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:ђђ2
conv1d/ExpandDims_1╣
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:         Ёђ*
paddingVALID*
strides
2
conv1dћ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:         Ёђ*
squeeze_dims

§        2
conv1d/SqueezeЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpј
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:         Ёђ2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:         Ёђ2
Reluф
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*-
_output_shapes
:         Ёђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         Іђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:U Q
-
_output_shapes
:         Іђ
 
_user_specified_nameinputs
і
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_361285

inputs

identity_1`
IdentityIdentityinputs*
T0*-
_output_shapes
:         Ёђ2

Identityo

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:         Ёђ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         Ёђ:U Q
-
_output_shapes
:         Ёђ
 
_user_specified_nameinputs
цо
Ї
"__inference__traced_restore_363264
file_prefix8
%assignvariableop_embedding_embeddings:	Х)d7
 assignvariableop_1_conv1d_kernel:dђ-
assignvariableop_2_conv1d_bias:	ђ;
,assignvariableop_3_batch_normalization_gamma:	ђ:
+assignvariableop_4_batch_normalization_beta:	ђA
2assignvariableop_5_batch_normalization_moving_mean:	ђE
6assignvariableop_6_batch_normalization_moving_variance:	ђ:
"assignvariableop_7_conv1d_1_kernel:ђђ/
 assignvariableop_8_conv1d_1_bias:	ђ3
assignvariableop_9_dense_kernel:
ђа-
assignvariableop_10_dense_bias:	а6
"assignvariableop_11_dense_1_kernel:
аа/
 assignvariableop_12_dense_1_bias:	а9
&assignvariableop_13_predictions_kernel:	а2
$assignvariableop_14_predictions_bias:'
assignvariableop_15_adam_iter:	 )
assignvariableop_16_adam_beta_1: )
assignvariableop_17_adam_beta_2: (
assignvariableop_18_adam_decay: 0
&assignvariableop_19_adam_learning_rate: c
Ystring_lookup_1_index_table_table_restore_lookuptableimportv2_string_lookup_1_index_table: #
assignvariableop_20_total: #
assignvariableop_21_count: %
assignvariableop_22_total_1: %
assignvariableop_23_count_1: ?
(assignvariableop_24_adam_conv1d_kernel_m:dђ5
&assignvariableop_25_adam_conv1d_bias_m:	ђC
4assignvariableop_26_adam_batch_normalization_gamma_m:	ђB
3assignvariableop_27_adam_batch_normalization_beta_m:	ђB
*assignvariableop_28_adam_conv1d_1_kernel_m:ђђ7
(assignvariableop_29_adam_conv1d_1_bias_m:	ђ;
'assignvariableop_30_adam_dense_kernel_m:
ђа4
%assignvariableop_31_adam_dense_bias_m:	а=
)assignvariableop_32_adam_dense_1_kernel_m:
аа6
'assignvariableop_33_adam_dense_1_bias_m:	а@
-assignvariableop_34_adam_predictions_kernel_m:	а9
+assignvariableop_35_adam_predictions_bias_m:?
(assignvariableop_36_adam_conv1d_kernel_v:dђ5
&assignvariableop_37_adam_conv1d_bias_v:	ђC
4assignvariableop_38_adam_batch_normalization_gamma_v:	ђB
3assignvariableop_39_adam_batch_normalization_beta_v:	ђB
*assignvariableop_40_adam_conv1d_1_kernel_v:ђђ7
(assignvariableop_41_adam_conv1d_1_bias_v:	ђ;
'assignvariableop_42_adam_dense_kernel_v:
ђа4
%assignvariableop_43_adam_dense_bias_v:	а=
)assignvariableop_44_adam_dense_1_kernel_v:
аа6
'assignvariableop_45_adam_dense_1_bias_v:	а@
-assignvariableop_46_adam_predictions_kernel_v:	а9
+assignvariableop_47_adam_predictions_bias_v:
identity_49ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_41бAssignVariableOp_42бAssignVariableOp_43бAssignVariableOp_44бAssignVariableOp_45бAssignVariableOp_46бAssignVariableOp_47бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9б=string_lookup_1_index_table_table_restore/LookupTableImportV2Ѕ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*Ћ
valueІBѕ3B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЗ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesГ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Р
_output_shapes¤
╠:::::::::::::::::::::::::::::::::::::::::::::::::::*A
dtypes7
523		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityц
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ц
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Б
AssignVariableOp_2AssignVariableOpassignvariableop_2_conv1d_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3▒
AssignVariableOp_3AssignVariableOp,assignvariableop_3_batch_normalization_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4░
AssignVariableOp_4AssignVariableOp+assignvariableop_4_batch_normalization_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5и
AssignVariableOp_5AssignVariableOp2assignvariableop_5_batch_normalization_moving_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6╗
AssignVariableOp_6AssignVariableOp6assignvariableop_6_batch_normalization_moving_varianceIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Д
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv1d_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ц
AssignVariableOp_8AssignVariableOp assignvariableop_8_conv1d_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9ц
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10д
AssignVariableOp_10AssignVariableOpassignvariableop_10_dense_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11ф
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_1_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12е
AssignVariableOp_12AssignVariableOp assignvariableop_12_dense_1_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13«
AssignVariableOp_13AssignVariableOp&assignvariableop_13_predictions_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14г
AssignVariableOp_14AssignVariableOp$assignvariableop_14_predictions_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_15Ц
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_iterIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Д
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Д
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18д
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_decayIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19«
AssignVariableOp_19AssignVariableOp&assignvariableop_19_adam_learning_rateIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19щ
=string_lookup_1_index_table_table_restore/LookupTableImportV2LookupTableImportV2Ystring_lookup_1_index_table_table_restore_lookuptableimportv2_string_lookup_1_index_tableRestoreV2:tensors:20RestoreV2:tensors:21*	
Tin0*

Tout0	*.
_class$
" loc:@string_lookup_1_index_table*
_output_shapes
 2?
=string_lookup_1_index_table_table_restore/LookupTableImportV2n
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20А
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21А
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Б
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Б
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24░
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv1d_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25«
AssignVariableOp_25AssignVariableOp&assignvariableop_25_adam_conv1d_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26╝
AssignVariableOp_26AssignVariableOp4assignvariableop_26_adam_batch_normalization_gamma_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27╗
AssignVariableOp_27AssignVariableOp3assignvariableop_27_adam_batch_normalization_beta_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28▓
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_conv1d_1_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29░
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_conv1d_1_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30»
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Г
AssignVariableOp_31AssignVariableOp%assignvariableop_31_adam_dense_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32▒
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_1_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33»
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_1_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34х
AssignVariableOp_34AssignVariableOp-assignvariableop_34_adam_predictions_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35│
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_predictions_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36░
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv1d_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37«
AssignVariableOp_37AssignVariableOp&assignvariableop_37_adam_conv1d_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38╝
AssignVariableOp_38AssignVariableOp4assignvariableop_38_adam_batch_normalization_gamma_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39╗
AssignVariableOp_39AssignVariableOp3assignvariableop_39_adam_batch_normalization_beta_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40▓
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_conv1d_1_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41░
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_conv1d_1_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42»
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_dense_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43Г
AssignVariableOp_43AssignVariableOp%assignvariableop_43_adam_dense_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44▒
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_dense_1_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45»
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_dense_1_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46х
AssignVariableOp_46AssignVariableOp-assignvariableop_46_adam_predictions_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47│
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_predictions_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_479
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЙ	
Identity_48Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp>^string_lookup_1_index_table_table_restore/LookupTableImportV2"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_48▒	
Identity_49IdentityIdentity_48:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9>^string_lookup_1_index_table_table_restore/LookupTableImportV2*
T0*
_output_shapes
: 2
Identity_49"#
identity_49Identity_49:output:0*w
_input_shapesf
d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_47AssignVariableOp_472(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92~
=string_lookup_1_index_table_table_restore/LookupTableImportV2=string_lookup_1_index_table_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:40
.
_class$
" loc:@string_lookup_1_index_table
П
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_361457

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Consty
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:         Ёђ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape║
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:         Ёђ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y─
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:         Ёђ2
dropout/GreaterEqualЁ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:         Ёђ2
dropout/Castђ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:         Ёђ2
dropout/Mul_1k
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:         Ёђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         Ёђ:U Q
-
_output_shapes
:         Ёђ
 
_user_specified_nameinputs
­
▓
O__inference_batch_normalization_layer_call_and_return_conditional_losses_360938

inputs0
!batchnorm_readvariableop_resource:	ђ4
%batchnorm_mul_readvariableop_resource:	ђ2
#batchnorm_readvariableop_1_resource:	ђ2
#batchnorm_readvariableop_2_resource:	ђ
identityѕбbatchnorm/ReadVariableOpбbatchnorm/ReadVariableOp_1бbatchnorm/ReadVariableOp_2бbatchnorm/mul/ReadVariableOpЊ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2
batchnorm/add/yЅ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/RsqrtЪ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/mul/ReadVariableOpє
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2
batchnorm/mulё
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:                  ђ2
batchnorm/mul_1Ў
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/ReadVariableOp_1є
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/mul_2Ў
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/ReadVariableOp_2ё
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/subЊ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:                  ђ2
batchnorm/add_1ж
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:                  ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
»
ф
&__inference_model_layer_call_fn_361809
input_1
unknown
	unknown_0	
	unknown_1:	Х)d 
	unknown_2:dђ
	unknown_3:	ђ
	unknown_4:	ђ
	unknown_5:	ђ
	unknown_6:	ђ
	unknown_7:	ђ!
	unknown_8:ђђ
	unknown_9:	ђ

unknown_10:
ђа

unknown_11:	а

unknown_12:
аа

unknown_13:	а

unknown_14:	а

unknown_15:
identityѕбStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_3617332
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         
!
_user_specified_name	input_1:

_output_shapes
: 
▒
ф
&__inference_model_layer_call_fn_361384
input_1
unknown
	unknown_0	
	unknown_1:	Х)d 
	unknown_2:dђ
	unknown_3:	ђ
	unknown_4:	ђ
	unknown_5:	ђ
	unknown_6:	ђ
	unknown_7:	ђ!
	unknown_8:ђђ
	unknown_9:	ђ

unknown_10:
ђа

unknown_11:	а

unknown_12:
аа

unknown_13:	а

unknown_14:	а

unknown_15:
identityѕбStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_3613472
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         
!
_user_specified_name	input_1:

_output_shapes
: 
Ј
е
$__inference_signature_wrapper_362098
input_1
unknown
	unknown_0	
	unknown_1:	Х)d 
	unknown_2:dђ
	unknown_3:	ђ
	unknown_4:	ђ
	unknown_5:	ђ
	unknown_6:	ђ
	unknown_7:	ђ!
	unknown_8:ђђ
	unknown_9:	ђ

unknown_10:
ђа

unknown_11:	а

unknown_12:
аа

unknown_13:	а

unknown_14:	а

unknown_15:
identityѕбStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference__wrapped_model_3609142
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         
!
_user_specified_name	input_1:

_output_shapes
: 
т
Њ
B__inference_conv1d_layer_call_and_return_conditional_losses_362587

inputsB
+conv1d_expanddims_1_readvariableop_resource:dђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpб"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        2
conv1d/ExpandDims/dimЌ
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ўd2
conv1d/ExpandDims╣
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:dђ*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimИ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:dђ2
conv1d/ExpandDims_1╣
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:         Ќђ*
paddingVALID*
strides
2
conv1dћ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:         Ќђ*
squeeze_dims

§        2
conv1d/SqueezeЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpј
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:         Ќђ2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:         Ќђ2
Reluф
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*-
_output_shapes
:         Ќђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ўd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:         ўd
 
_user_specified_nameinputs
ПИ
Ч	
A__inference_model_layer_call_and_return_conditional_losses_361733

inputs\
Xtext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_table_handle]
Ytext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_default_value	#
embedding_361690:	Х)d$
conv1d_361694:dђ
conv1d_361696:	ђ)
batch_normalization_361699:	ђ)
batch_normalization_361701:	ђ)
batch_normalization_361703:	ђ)
batch_normalization_361705:	ђ'
conv1d_1_361709:ђђ
conv1d_1_361711:	ђ 
dense_361716:
ђа
dense_361718:	а"
dense_1_361722:
аа
dense_1_361724:	а%
predictions_361727:	а 
predictions_361729:
identityѕб+batch_normalization/StatefulPartitionedCallбconv1d/StatefulPartitionedCallб conv1d_1/StatefulPartitionedCallбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallбdropout/StatefulPartitionedCallб!dropout_1/StatefulPartitionedCallб!dropout_2/StatefulPartitionedCallб!embedding/StatefulPartitionedCallб#predictions/StatefulPartitionedCallбKtext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2ђ
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:         2 
text_vectorization/StringLower§
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:         *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace┴
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:         *
squeeze_dims

         2
text_vectorization/SqueezeЇ
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const 
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:         :         :2.
,text_vectorization/StringSplit/StringSplitV2╣
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stackй
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1й
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2н
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_sliceХ
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack║
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1║
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2Г
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1ф
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:         2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastБ
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1╦
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shapeї
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Constй
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prodї
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y╔
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater▀
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Castљ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Г
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maxё
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y║
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addГ
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul▓
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumХ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumЅ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2░
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:         2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount■
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis╝
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:         2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsumј
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0■
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisд
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:         2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatЁ
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Xtext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ytext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:         2M
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2і
4text_vectorization/string_lookup_1/assert_equal/NoOpNoOp*
_output_shapes
 26
4text_vectorization/string_lookup_1/assert_equal/NoOpЖ
+text_vectorization/string_lookup_1/IdentityIdentityTtext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         2-
+text_vectorization/string_lookup_1/IdentityЩ
-text_vectorization/string_lookup_1/Identity_1Identity`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:         2/
-text_vectorization/string_lookup_1/Identity_1ц
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_valueЮ
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
         2)
'text_vectorization/RaggedToTensor/ConstЂ
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:04text_vectorization/string_lookup_1/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:06text_vectorization/string_lookup_1/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:                  *
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensorБ
text_vectorization/ShapeShape?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization/Shapeџ
&text_vectorization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&text_vectorization/strided_slice/stackъ
(text_vectorization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization/strided_slice/stack_1ъ
(text_vectorization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization/strided_slice/stack_2н
 text_vectorization/strided_sliceStridedSlice!text_vectorization/Shape:output:0/text_vectorization/strided_slice/stack:output:01text_vectorization/strided_slice/stack_1:output:01text_vectorization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 text_vectorization/strided_slicew
text_vectorization/sub/xConst*
_output_shapes
: *
dtype0*
value
B :ў2
text_vectorization/sub/xд
text_vectorization/subSub!text_vectorization/sub/x:output:0)text_vectorization/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization/suby
text_vectorization/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ў2
text_vectorization/Less/yф
text_vectorization/LessLess)text_vectorization/strided_slice:output:0"text_vectorization/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization/Less§
text_vectorization/condStatelessIftext_vectorization/Less:z:0text_vectorization/sub:z:0?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:                  * 
_read_only_resource_inputs
 *7
else_branch(R&
$text_vectorization_cond_false_361670*/
output_shapes
:                  *6
then_branch'R%
#text_vectorization_cond_true_3616692
text_vectorization/condЦ
 text_vectorization/cond/IdentityIdentity text_vectorization/cond:output:0*
T0	*(
_output_shapes
:         ў2"
 text_vectorization/cond/IdentityГ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)text_vectorization/cond/Identity:output:0embedding_361690*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ўd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_3611952#
!embedding/StatefulPartitionedCallњ
dropout/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ўd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3615602!
dropout/StatefulPartitionedCall▓
conv1d/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv1d_361694conv1d_361696*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ќђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_3612222 
conv1d/StatefulPartitionedCallг
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0batch_normalization_361699batch_normalization_361701batch_normalization_361703batch_normalization_361705*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ќђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_3615192-
+batch_normalization/StatefulPartitionedCallЌ
max_pooling1d/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Іђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_max_pooling1d_layer_call_and_return_conditional_losses_3610852
max_pooling1d/PartitionedCall║
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling1d/PartitionedCall:output:0conv1d_1_361709conv1d_1_361711*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ёђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_3612742"
 conv1d_1/StatefulPartitionedCall║
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ёђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3614572#
!dropout_1/StatefulPartitionedCallЮ
$global_max_pooling1d/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_3610982&
$global_max_pooling1d/PartitionedCallГ
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_361716dense_361718*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3612992
dense/StatefulPartitionedCall┤
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3614242#
!dropout_2/StatefulPartitionedCall┤
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_1_361722dense_1_361724*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3613232!
dense_1/StatefulPartitionedCall┼
#predictions/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0predictions_361727predictions_361729*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_predictions_layer_call_and_return_conditional_losses_3613402%
#predictions/StatefulPartitionedCallХ
IdentityIdentity,predictions/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^predictions/StatefulPartitionedCallL^text_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall2џ
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:

_output_shapes
: 
ц
џ
,__inference_predictions_layer_call_fn_362875

inputs
unknown:	а
	unknown_0:
identityѕбStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_predictions_layer_call_and_return_conditional_losses_3613402
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
ё
a
C__inference_dropout_layer_call_and_return_conditional_losses_362550

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:         ўd2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:         ўd2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ўd:T P
,
_output_shapes
:         ўd
 
_user_specified_nameinputs
╩
Т
#text_vectorization_cond_true_361866A
=text_vectorization_cond_pad_paddings_1_text_vectorization_subV
Rtext_vectorization_cond_pad_text_vectorization_raggedtotensor_raggedtensortotensor	$
 text_vectorization_cond_identity	ќ
(text_vectorization/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2*
(text_vectorization/cond/Pad/paddings/1/0Э
&text_vectorization/cond/Pad/paddings/1Pack1text_vectorization/cond/Pad/paddings/1/0:output:0=text_vectorization_cond_pad_paddings_1_text_vectorization_sub*
N*
T0*
_output_shapes
:2(
&text_vectorization/cond/Pad/paddings/1Ц
(text_vectorization/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(text_vectorization/cond/Pad/paddings/0_1Ж
$text_vectorization/cond/Pad/paddingsPack1text_vectorization/cond/Pad/paddings/0_1:output:0/text_vectorization/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2&
$text_vectorization/cond/Pad/paddings 
text_vectorization/cond/PadPadRtext_vectorization_cond_pad_text_vectorization_raggedtotensor_raggedtensortotensor-text_vectorization/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:                  2
text_vectorization/cond/Pad▒
 text_vectorization/cond/IdentityIdentity$text_vectorization/cond/Pad:output:0*
T0	*0
_output_shapes
:                  2"
 text_vectorization/cond/Identity"M
 text_vectorization_cond_identity)text_vectorization/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :                  : 

_output_shapes
: :62
0
_output_shapes
:                  
Є
╗
__inference_save_fn_362920
checkpoint_key[
Wstring_lookup_1_index_table_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	ѕбJstring_lookup_1_index_table_lookup_table_export_values/LookupTableExportV2­
Jstring_lookup_1_index_table_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Wstring_lookup_1_index_table_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::2L
Jstring_lookup_1_index_table_lookup_table_export_values/LookupTableExportV2T
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keys2
add/yR
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: 2
addZ
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-values2	
add_1/yX
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: 2
add_1Ќ
IdentityIdentityadd:z:0K^string_lookup_1_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

IdentityO
ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
Constб

Identity_1IdentityConst:output:0K^string_lookup_1_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_1у

Identity_2IdentityQstring_lookup_1_index_table_lookup_table_export_values/LookupTableExportV2:keys:0K^string_lookup_1_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
:2

Identity_2Ю

Identity_3Identity	add_1:z:0K^string_lookup_1_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_3S
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 2	
Const_1ц

Identity_4IdentityConst_1:output:0K^string_lookup_1_index_table_lookup_table_export_values/LookupTableExportV2*
T0*
_output_shapes
: 2

Identity_4ж

Identity_5IdentitySstring_lookup_1_index_table_lookup_table_export_values/LookupTableExportV2:values:0K^string_lookup_1_index_table_lookup_table_export_values/LookupTableExportV2*
T0	*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2ў
Jstring_lookup_1_index_table_lookup_table_export_values/LookupTableExportV2Jstring_lookup_1_index_table_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
╩
Т
#text_vectorization_cond_true_362233A
=text_vectorization_cond_pad_paddings_1_text_vectorization_subV
Rtext_vectorization_cond_pad_text_vectorization_raggedtotensor_raggedtensortotensor	$
 text_vectorization_cond_identity	ќ
(text_vectorization/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2*
(text_vectorization/cond/Pad/paddings/1/0Э
&text_vectorization/cond/Pad/paddings/1Pack1text_vectorization/cond/Pad/paddings/1/0:output:0=text_vectorization_cond_pad_paddings_1_text_vectorization_sub*
N*
T0*
_output_shapes
:2(
&text_vectorization/cond/Pad/paddings/1Ц
(text_vectorization/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(text_vectorization/cond/Pad/paddings/0_1Ж
$text_vectorization/cond/Pad/paddingsPack1text_vectorization/cond/Pad/paddings/0_1:output:0/text_vectorization/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2&
$text_vectorization/cond/Pad/paddings 
text_vectorization/cond/PadPadRtext_vectorization_cond_pad_text_vectorization_raggedtotensor_raggedtensortotensor-text_vectorization/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:                  2
text_vectorization/cond/Pad▒
 text_vectorization/cond/IdentityIdentity$text_vectorization/cond/Pad:output:0*
T0	*0
_output_shapes
:                  2"
 text_vectorization/cond/Identity"M
 text_vectorization_cond_identity)text_vectorization/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :                  : 

_output_shapes
: :62
0
_output_shapes
:                  
▒
+
__inference_<lambda>_362933
identityS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
Ў
М
4__inference_batch_normalization_layer_call_fn_362626

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ќђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_3612472
StatefulPartitionedCallћ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:         Ќђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         Ќђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:         Ќђ
 
_user_specified_nameinputs
ч
О
$text_vectorization_cond_false_362388'
#text_vectorization_cond_placeholder`
\text_vectorization_cond_strided_slice_text_vectorization_raggedtotensor_raggedtensortotensor	$
 text_vectorization_cond_identity	Ф
+text_vectorization/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2-
+text_vectorization/cond/strided_slice/stack»
-text_vectorization/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-text_vectorization/cond/strided_slice/stack_1»
-text_vectorization/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2/
-text_vectorization/cond/strided_slice/stack_2╠
%text_vectorization/cond/strided_sliceStridedSlice\text_vectorization_cond_strided_slice_text_vectorization_raggedtotensor_raggedtensortotensor4text_vectorization/cond/strided_slice/stack:output:06text_vectorization/cond/strided_slice/stack_1:output:06text_vectorization/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:                  *

begin_mask*
end_mask2'
%text_vectorization/cond/strided_slice╗
 text_vectorization/cond/IdentityIdentity.text_vectorization/cond/strided_slice:output:0*
T0	*0
_output_shapes
:                  2"
 text_vectorization/cond/Identity"M
 text_vectorization_cond_identity)text_vectorization/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :                  : 

_output_shapes
: :62
0
_output_shapes
:                  
│
џ
'__inference_conv1d_layer_call_fn_362571

inputs
unknown:dђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ќђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_3612222
StatefulPartitionedCallћ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:         Ќђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ўd: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ўd
 
_user_specified_nameinputs
ч
О
$text_vectorization_cond_false_361166'
#text_vectorization_cond_placeholder`
\text_vectorization_cond_strided_slice_text_vectorization_raggedtotensor_raggedtensortotensor	$
 text_vectorization_cond_identity	Ф
+text_vectorization/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2-
+text_vectorization/cond/strided_slice/stack»
-text_vectorization/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-text_vectorization/cond/strided_slice/stack_1»
-text_vectorization/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2/
-text_vectorization/cond/strided_slice/stack_2╠
%text_vectorization/cond/strided_sliceStridedSlice\text_vectorization_cond_strided_slice_text_vectorization_raggedtotensor_raggedtensortotensor4text_vectorization/cond/strided_slice/stack:output:06text_vectorization/cond/strided_slice/stack_1:output:06text_vectorization/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:                  *

begin_mask*
end_mask2'
%text_vectorization/cond/strided_slice╗
 text_vectorization/cond/IdentityIdentity.text_vectorization/cond/strided_slice:output:0*
T0	*0
_output_shapes
:                  2"
 text_vectorization/cond/Identity"M
 text_vectorization_cond_identity)text_vectorization/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :                  : 

_output_shapes
: :62
0
_output_shapes
:                  
х

ш
A__inference_dense_layer_call_and_return_conditional_losses_361299

inputs2
matmul_readvariableop_resource:
ђа.
biasadd_readvariableop_resource:	а
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЈ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ђа*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:а*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         а2
Reluў
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         а2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
д
R
__inference__creator_362891
identity: ѕбstring_lookup_1_index_tableЕ
string_lookup_1_index_tableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_8565*
value_dtype0	2
string_lookup_1_index_tableІ
IdentityIdentity*string_lookup_1_index_table:table_handle:0^string_lookup_1_index_table*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2:
string_lookup_1_index_tablestring_lookup_1_index_table
ю
ќ
&__inference_dense_layer_call_fn_362808

inputs
unknown:
ђа
	unknown_0:	а
identityѕбStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3612992
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         а2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
К
▓
O__inference_batch_normalization_layer_call_and_return_conditional_losses_361247

inputs0
!batchnorm_readvariableop_resource:	ђ4
%batchnorm_mul_readvariableop_resource:	ђ2
#batchnorm_readvariableop_1_resource:	ђ2
#batchnorm_readvariableop_2_resource:	ђ
identityѕбbatchnorm/ReadVariableOpбbatchnorm/ReadVariableOp_1бbatchnorm/ReadVariableOp_2бbatchnorm/mul/ReadVariableOpЊ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2
batchnorm/add/yЅ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/RsqrtЪ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/mul/ReadVariableOpє
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2
batchnorm/mul|
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:         Ќђ2
batchnorm/mul_1Ў
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/ReadVariableOp_1є
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/mul_2Ў
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/ReadVariableOp_2ё
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/subІ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:         Ќђ2
batchnorm/add_1р
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:         Ќђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         Ќђ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:         Ќђ
 
_user_specified_nameinputs
╣	
Б
E__inference_embedding_layer_call_and_return_conditional_losses_361195

inputs	*
embedding_lookup_361189:	Х)d
identityѕбembedding_lookupЧ
embedding_lookupResourceGatherembedding_lookup_361189inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	**
_class 
loc:@embedding_lookup/361189*,
_output_shapes
:         ўd*
dtype02
embedding_lookupЬ
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/361189*,
_output_shapes
:         ўd2
embedding_lookup/IdentityА
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:         ўd2
embedding_lookup/Identity_1љ
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:         ўd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:         ў: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:         ў
 
_user_specified_nameinputs
м
b
C__inference_dropout_layer_call_and_return_conditional_losses_362562

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:         ўd2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╣
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:         ўd*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y├
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         ўd2
dropout/GreaterEqualё
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         ўd2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:         ўd2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:         ўd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ўd:T P
,
_output_shapes
:         ўd
 
_user_specified_nameinputs
х

щ
G__inference_predictions_layer_call_and_return_conditional_losses_361340

inputs1
matmul_readvariableop_resource:	а-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	а*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoidљ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
Ё
ш
*model_text_vectorization_cond_false_360818-
)model_text_vectorization_cond_placeholderl
hmodel_text_vectorization_cond_strided_slice_model_text_vectorization_raggedtotensor_raggedtensortotensor	*
&model_text_vectorization_cond_identity	и
1model/text_vectorization/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        23
1model/text_vectorization/cond/strided_slice/stack╗
3model/text_vectorization/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      25
3model/text_vectorization/cond/strided_slice/stack_1╗
3model/text_vectorization/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      25
3model/text_vectorization/cond/strided_slice/stack_2Ш
+model/text_vectorization/cond/strided_sliceStridedSlicehmodel_text_vectorization_cond_strided_slice_model_text_vectorization_raggedtotensor_raggedtensortotensor:model/text_vectorization/cond/strided_slice/stack:output:0<model/text_vectorization/cond/strided_slice/stack_1:output:0<model/text_vectorization/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:                  *

begin_mask*
end_mask2-
+model/text_vectorization/cond/strided_slice═
&model/text_vectorization/cond/IdentityIdentity4model/text_vectorization/cond/strided_slice:output:0*
T0	*0
_output_shapes
:                  2(
&model/text_vectorization/cond/Identity"Y
&model_text_vectorization_cond_identity/model/text_vectorization/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :                  : 

_output_shapes
: :62
0
_output_shapes
:                  
ћ┤
Њ	
A__inference_model_layer_call_and_return_conditional_losses_361930
input_1\
Xtext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_table_handle]
Ytext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_default_value	#
embedding_361887:	Х)d$
conv1d_361891:dђ
conv1d_361893:	ђ)
batch_normalization_361896:	ђ)
batch_normalization_361898:	ђ)
batch_normalization_361900:	ђ)
batch_normalization_361902:	ђ'
conv1d_1_361906:ђђ
conv1d_1_361908:	ђ 
dense_361913:
ђа
dense_361915:	а"
dense_1_361919:
аа
dense_1_361921:	а%
predictions_361924:	а 
predictions_361926:
identityѕб+batch_normalization/StatefulPartitionedCallбconv1d/StatefulPartitionedCallб conv1d_1/StatefulPartitionedCallбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallб!embedding/StatefulPartitionedCallб#predictions/StatefulPartitionedCallбKtext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2Ђ
text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:         2 
text_vectorization/StringLower§
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:         *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace┴
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:         *
squeeze_dims

         2
text_vectorization/SqueezeЇ
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const 
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:         :         :2.
,text_vectorization/StringSplit/StringSplitV2╣
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stackй
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1й
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2н
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_sliceХ
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack║
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1║
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2Г
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1ф
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:         2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastБ
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1╦
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shapeї
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Constй
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prodї
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y╔
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater▀
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Castљ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Г
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maxё
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y║
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addГ
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul▓
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumХ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumЅ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2░
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:         2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount■
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis╝
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:         2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsumј
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0■
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisд
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:         2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatЁ
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Xtext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ytext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:         2M
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2і
4text_vectorization/string_lookup_1/assert_equal/NoOpNoOp*
_output_shapes
 26
4text_vectorization/string_lookup_1/assert_equal/NoOpЖ
+text_vectorization/string_lookup_1/IdentityIdentityTtext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         2-
+text_vectorization/string_lookup_1/IdentityЩ
-text_vectorization/string_lookup_1/Identity_1Identity`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:         2/
-text_vectorization/string_lookup_1/Identity_1ц
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_valueЮ
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
         2)
'text_vectorization/RaggedToTensor/ConstЂ
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:04text_vectorization/string_lookup_1/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:06text_vectorization/string_lookup_1/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:                  *
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensorБ
text_vectorization/ShapeShape?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization/Shapeџ
&text_vectorization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&text_vectorization/strided_slice/stackъ
(text_vectorization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization/strided_slice/stack_1ъ
(text_vectorization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization/strided_slice/stack_2н
 text_vectorization/strided_sliceStridedSlice!text_vectorization/Shape:output:0/text_vectorization/strided_slice/stack:output:01text_vectorization/strided_slice/stack_1:output:01text_vectorization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 text_vectorization/strided_slicew
text_vectorization/sub/xConst*
_output_shapes
: *
dtype0*
value
B :ў2
text_vectorization/sub/xд
text_vectorization/subSub!text_vectorization/sub/x:output:0)text_vectorization/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization/suby
text_vectorization/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ў2
text_vectorization/Less/yф
text_vectorization/LessLess)text_vectorization/strided_slice:output:0"text_vectorization/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization/Less§
text_vectorization/condStatelessIftext_vectorization/Less:z:0text_vectorization/sub:z:0?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:                  * 
_read_only_resource_inputs
 *7
else_branch(R&
$text_vectorization_cond_false_361867*/
output_shapes
:                  *6
then_branch'R%
#text_vectorization_cond_true_3618662
text_vectorization/condЦ
 text_vectorization/cond/IdentityIdentity text_vectorization/cond:output:0*
T0	*(
_output_shapes
:         ў2"
 text_vectorization/cond/IdentityГ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)text_vectorization/cond/Identity:output:0embedding_361887*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ўd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_3611952#
!embedding/StatefulPartitionedCallЩ
dropout/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ўd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3612042
dropout/PartitionedCallф
conv1d/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv1d_361891conv1d_361893*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ќђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_3612222 
conv1d/StatefulPartitionedCall«
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0batch_normalization_361896batch_normalization_361898batch_normalization_361900batch_normalization_361902*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ќђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_3612472-
+batch_normalization/StatefulPartitionedCallЌ
max_pooling1d/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Іђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_max_pooling1d_layer_call_and_return_conditional_losses_3610852
max_pooling1d/PartitionedCall║
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling1d/PartitionedCall:output:0conv1d_1_361906conv1d_1_361908*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ёђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_3612742"
 conv1d_1/StatefulPartitionedCallђ
dropout_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ёђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3612852
dropout_1/PartitionedCallЋ
$global_max_pooling1d/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_3610982&
$global_max_pooling1d/PartitionedCallГ
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_361913dense_361915*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3612992
dense/StatefulPartitionedCallЭ
dropout_2/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3613102
dropout_2/PartitionedCallг
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_1_361919dense_1_361921*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3613232!
dense_1/StatefulPartitionedCall┼
#predictions/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0predictions_361924predictions_361926*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_predictions_layer_call_and_return_conditional_losses_3613402%
#predictions/StatefulPartitionedCall╠
IdentityIdentity,predictions/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^predictions/StatefulPartitionedCallL^text_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall2џ
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2:P L
'
_output_shapes
:         
!
_user_specified_name	input_1:

_output_shapes
: 
Ш
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_362834

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         а2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         а2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         а:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
╩*
В
O__inference_batch_normalization_layer_call_and_return_conditional_losses_362747

inputs6
'assignmovingavg_readvariableop_resource:	ђ8
)assignmovingavg_1_readvariableop_resource:	ђ4
%batchnorm_mul_readvariableop_resource:	ђ0
!batchnorm_readvariableop_resource:	ђ
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбbatchnorm/ReadVariableOpбbatchnorm/mul/ReadVariableOpЉ
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indicesћ
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(2
moments/meanЂ
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:ђ2
moments/StopGradientф
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:         Ќђ2
moments/SquaredDifferenceЎ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesи
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(2
moments/varianceѓ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 2
moments/Squeezeі
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<2
AssignMovingAvg/decayЦ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ђ*
dtype02 
AssignMovingAvg/ReadVariableOpЎ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:ђ2
AssignMovingAvg/subљ
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ђ2
AssignMovingAvg/mul┐
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<2
AssignMovingAvg_1/decayФ
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype02"
 AssignMovingAvg_1/ReadVariableOpА
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ђ2
AssignMovingAvg_1/subў
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ђ2
AssignMovingAvg_1/mul╔
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2
batchnorm/add/yЃ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/RsqrtЪ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/mul/ReadVariableOpє
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2
batchnorm/mul|
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:         Ќђ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/mul_2Њ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/ReadVariableOpѓ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/subІ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:         Ќђ2
batchnorm/add_1Љ
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:         Ќђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         Ќђ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:         Ќђ
 
_user_specified_nameinputs
кg
─
__inference__traced_save_363107
file_prefix3
/savev2_embedding_embeddings_read_readvariableop,
(savev2_conv1d_kernel_read_readvariableop*
&savev2_conv1d_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop.
*savev2_conv1d_1_kernel_read_readvariableop,
(savev2_conv1d_1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop1
-savev2_predictions_kernel_read_readvariableop/
+savev2_predictions_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopU
Qsavev2_string_lookup_1_index_table_lookup_table_export_values_lookuptableexportv2W
Ssavev2_string_lookup_1_index_table_lookup_table_export_values_lookuptableexportv2_1	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv1d_kernel_m_read_readvariableop1
-savev2_adam_conv1d_bias_m_read_readvariableop?
;savev2_adam_batch_normalization_gamma_m_read_readvariableop>
:savev2_adam_batch_normalization_beta_m_read_readvariableop5
1savev2_adam_conv1d_1_kernel_m_read_readvariableop3
/savev2_adam_conv1d_1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop8
4savev2_adam_predictions_kernel_m_read_readvariableop6
2savev2_adam_predictions_bias_m_read_readvariableop3
/savev2_adam_conv1d_kernel_v_read_readvariableop1
-savev2_adam_conv1d_bias_v_read_readvariableop?
;savev2_adam_batch_normalization_gamma_v_read_readvariableop>
:savev2_adam_batch_normalization_beta_v_read_readvariableop5
1savev2_adam_conv1d_1_kernel_v_read_readvariableop3
/savev2_adam_conv1d_1_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop8
4savev2_adam_predictions_kernel_v_read_readvariableop6
2savev2_adam_predictions_bias_v_read_readvariableop
savev2_const_1

identity_1ѕбMergeV2CheckpointsЈ
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
Const_1І
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
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЃ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*Ћ
valueІBѕ3B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_index_lookup_layer/_table/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЬ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЧ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop(savev2_conv1d_kernel_read_readvariableop&savev2_conv1d_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop*savev2_conv1d_1_kernel_read_readvariableop(savev2_conv1d_1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop-savev2_predictions_kernel_read_readvariableop+savev2_predictions_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopQsavev2_string_lookup_1_index_table_lookup_table_export_values_lookuptableexportv2Ssavev2_string_lookup_1_index_table_lookup_table_export_values_lookuptableexportv2_1 savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv1d_kernel_m_read_readvariableop-savev2_adam_conv1d_bias_m_read_readvariableop;savev2_adam_batch_normalization_gamma_m_read_readvariableop:savev2_adam_batch_normalization_beta_m_read_readvariableop1savev2_adam_conv1d_1_kernel_m_read_readvariableop/savev2_adam_conv1d_1_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop4savev2_adam_predictions_kernel_m_read_readvariableop2savev2_adam_predictions_bias_m_read_readvariableop/savev2_adam_conv1d_kernel_v_read_readvariableop-savev2_adam_conv1d_bias_v_read_readvariableop;savev2_adam_batch_normalization_gamma_v_read_readvariableop:savev2_adam_batch_normalization_beta_v_read_readvariableop1savev2_adam_conv1d_1_kernel_v_read_readvariableop/savev2_adam_conv1d_1_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop4savev2_adam_predictions_kernel_v_read_readvariableop2savev2_adam_predictions_bias_v_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *A
dtypes7
523		2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
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

identity_1Identity_1:output:0*б
_input_shapesљ
Ї: :	Х)d:dђ:ђ:ђ:ђ:ђ:ђ:ђђ:ђ:
ђа:а:
аа:а:	а:: : : : : ::: : : : :dђ:ђ:ђ:ђ:ђђ:ђ:
ђа:а:
аа:а:	а::dђ:ђ:ђ:ђ:ђђ:ђ:
ђа:а:
аа:а:	а:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	Х)d:)%
#
_output_shapes
:dђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:*&
$
_output_shapes
:ђђ:!	

_output_shapes	
:ђ:&
"
 
_output_shapes
:
ђа:!

_output_shapes	
:а:&"
 
_output_shapes
:
аа:!

_output_shapes	
:а:%!

_output_shapes
:	а: 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :)%
#
_output_shapes
:dђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:*&
$
_output_shapes
:ђђ:! 

_output_shapes	
:ђ:&!"
 
_output_shapes
:
ђа:!"

_output_shapes	
:а:&#"
 
_output_shapes
:
аа:!$

_output_shapes	
:а:%%!

_output_shapes
:	а: &

_output_shapes
::)'%
#
_output_shapes
:dђ:!(

_output_shapes	
:ђ:!)

_output_shapes	
:ђ:!*

_output_shapes	
:ђ:*+&
$
_output_shapes
:ђђ:!,

_output_shapes	
:ђ:&-"
 
_output_shapes
:
ђа:!.

_output_shapes	
:а:&/"
 
_output_shapes
:
аа:!0

_output_shapes	
:а:%1!

_output_shapes
:	а: 2

_output_shapes
::3

_output_shapes
: 
и
М
4__inference_batch_normalization_layer_call_fn_362613

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_3609982
StatefulPartitionedCallю
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:                  ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
њ
Q
5__inference_global_max_pooling1d_layer_call_fn_361104

inputs
identityО
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:                  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_3610982
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:                  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
і
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_362787

inputs

identity_1`
IdentityIdentityinputs*
T0*-
_output_shapes
:         Ёђ2

Identityo

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:         Ёђ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         Ёђ:U Q
-
_output_shapes
:         Ёђ
 
_user_specified_nameinputs
ь
ќ
D__inference_conv1d_1_layer_call_and_return_conditional_losses_361274

inputsC
+conv1d_expanddims_1_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpб"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        2
conv1d/ExpandDims/dimў
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         Іђ2
conv1d/ExpandDims║
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:ђђ*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim╣
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:ђђ2
conv1d/ExpandDims_1╣
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:         Ёђ*
paddingVALID*
strides
2
conv1dћ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:         Ёђ*
squeeze_dims

§        2
conv1d/SqueezeЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpј
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:         Ёђ2	
BiasAdd^
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:         Ёђ2
Reluф
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*-
_output_shapes
:         Ёђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         Іђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:U Q
-
_output_shapes
:         Іђ
 
_user_specified_nameinputs
Ђ

*__inference_embedding_layer_call_fn_362526

inputs	
unknown:	Х)d
identityѕбStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ўd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_3611952
StatefulPartitionedCallЊ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         ўd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:         ў: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ў
 
_user_specified_nameinputs
Г

э
C__inference_dense_1_layer_call_and_return_conditional_losses_361323

inputs2
matmul_readvariableop_resource:
аа.
biasadd_readvariableop_resource:	а
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЈ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
аа*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:а*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2	
BiasAddY
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:         а2
Tanhј
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         а2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
╩
Т
#text_vectorization_cond_true_361987A
=text_vectorization_cond_pad_paddings_1_text_vectorization_subV
Rtext_vectorization_cond_pad_text_vectorization_raggedtotensor_raggedtensortotensor	$
 text_vectorization_cond_identity	ќ
(text_vectorization/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2*
(text_vectorization/cond/Pad/paddings/1/0Э
&text_vectorization/cond/Pad/paddings/1Pack1text_vectorization/cond/Pad/paddings/1/0:output:0=text_vectorization_cond_pad_paddings_1_text_vectorization_sub*
N*
T0*
_output_shapes
:2(
&text_vectorization/cond/Pad/paddings/1Ц
(text_vectorization/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(text_vectorization/cond/Pad/paddings/0_1Ж
$text_vectorization/cond/Pad/paddingsPack1text_vectorization/cond/Pad/paddings/0_1:output:0/text_vectorization/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2&
$text_vectorization/cond/Pad/paddings 
text_vectorization/cond/PadPadRtext_vectorization_cond_pad_text_vectorization_raggedtotensor_raggedtensortotensor-text_vectorization/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:                  2
text_vectorization/cond/Pad▒
 text_vectorization/cond/IdentityIdentity$text_vectorization/cond/Pad:output:0*
T0	*0
_output_shapes
:                  2"
 text_vectorization/cond/Identity"M
 text_vectorization_cond_identity)text_vectorization/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :                  : 

_output_shapes
: :62
0
_output_shapes
:                  
Э
і
)model_text_vectorization_cond_true_360817M
Imodel_text_vectorization_cond_pad_paddings_1_model_text_vectorization_subb
^model_text_vectorization_cond_pad_model_text_vectorization_raggedtotensor_raggedtensortotensor	*
&model_text_vectorization_cond_identity	б
.model/text_vectorization/cond/Pad/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 20
.model/text_vectorization/cond/Pad/paddings/1/0ќ
,model/text_vectorization/cond/Pad/paddings/1Pack7model/text_vectorization/cond/Pad/paddings/1/0:output:0Imodel_text_vectorization_cond_pad_paddings_1_model_text_vectorization_sub*
N*
T0*
_output_shapes
:2.
,model/text_vectorization/cond/Pad/paddings/1▒
.model/text_vectorization/cond/Pad/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.model/text_vectorization/cond/Pad/paddings/0_1ѓ
*model/text_vectorization/cond/Pad/paddingsPack7model/text_vectorization/cond/Pad/paddings/0_1:output:05model/text_vectorization/cond/Pad/paddings/1:output:0*
N*
T0*
_output_shapes

:2,
*model/text_vectorization/cond/Pad/paddingsЮ
!model/text_vectorization/cond/PadPad^model_text_vectorization_cond_pad_model_text_vectorization_raggedtotensor_raggedtensortotensor3model/text_vectorization/cond/Pad/paddings:output:0*
T0	*0
_output_shapes
:                  2#
!model/text_vectorization/cond/Pad├
&model/text_vectorization/cond/IdentityIdentity*model/text_vectorization/cond/Pad:output:0*
T0	*0
_output_shapes
:                  2(
&model/text_vectorization/cond/Identity"Y
&model_text_vectorization_cond_identity/model/text_vectorization/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :                  : 

_output_shapes
: :62
0
_output_shapes
:                  
м
b
C__inference_dropout_layer_call_and_return_conditional_losses_361560

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:         ўd2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╣
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:         ўd*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y├
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         ўd2
dropout/GreaterEqualё
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         ўd2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:         ўd2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:         ўd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ўd:T P
,
_output_shapes
:         ўd
 
_user_specified_nameinputs
┌
a
(__inference_dropout_layer_call_fn_362545

inputs
identityѕбStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ўd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3615602
StatefulPartitionedCallЊ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:         ўd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ўd22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ўd
 
_user_specified_nameinputs
ЯИ
§	
A__inference_model_layer_call_and_return_conditional_losses_362051
input_1\
Xtext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_table_handle]
Ytext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_default_value	#
embedding_362008:	Х)d$
conv1d_362012:dђ
conv1d_362014:	ђ)
batch_normalization_362017:	ђ)
batch_normalization_362019:	ђ)
batch_normalization_362021:	ђ)
batch_normalization_362023:	ђ'
conv1d_1_362027:ђђ
conv1d_1_362029:	ђ 
dense_362034:
ђа
dense_362036:	а"
dense_1_362040:
аа
dense_1_362042:	а%
predictions_362045:	а 
predictions_362047:
identityѕб+batch_normalization/StatefulPartitionedCallбconv1d/StatefulPartitionedCallб conv1d_1/StatefulPartitionedCallбdense/StatefulPartitionedCallбdense_1/StatefulPartitionedCallбdropout/StatefulPartitionedCallб!dropout_1/StatefulPartitionedCallб!dropout_2/StatefulPartitionedCallб!embedding/StatefulPartitionedCallб#predictions/StatefulPartitionedCallбKtext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2Ђ
text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:         2 
text_vectorization/StringLower§
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:         *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace┴
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:         *
squeeze_dims

         2
text_vectorization/SqueezeЇ
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const 
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:         :         :2.
,text_vectorization/StringSplit/StringSplitV2╣
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stackй
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1й
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2н
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_sliceХ
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack║
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1║
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2Г
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1ф
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:         2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastБ
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1╦
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shapeї
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Constй
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prodї
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y╔
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater▀
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Castљ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Г
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maxё
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y║
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addГ
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul▓
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumХ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumЅ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2░
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:         2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount■
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis╝
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:         2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsumј
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0■
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisд
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:         2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatЁ
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Xtext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ytext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:         2M
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2і
4text_vectorization/string_lookup_1/assert_equal/NoOpNoOp*
_output_shapes
 26
4text_vectorization/string_lookup_1/assert_equal/NoOpЖ
+text_vectorization/string_lookup_1/IdentityIdentityTtext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         2-
+text_vectorization/string_lookup_1/IdentityЩ
-text_vectorization/string_lookup_1/Identity_1Identity`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:         2/
-text_vectorization/string_lookup_1/Identity_1ц
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_valueЮ
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
         2)
'text_vectorization/RaggedToTensor/ConstЂ
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:04text_vectorization/string_lookup_1/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:06text_vectorization/string_lookup_1/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:                  *
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensorБ
text_vectorization/ShapeShape?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization/Shapeџ
&text_vectorization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&text_vectorization/strided_slice/stackъ
(text_vectorization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization/strided_slice/stack_1ъ
(text_vectorization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization/strided_slice/stack_2н
 text_vectorization/strided_sliceStridedSlice!text_vectorization/Shape:output:0/text_vectorization/strided_slice/stack:output:01text_vectorization/strided_slice/stack_1:output:01text_vectorization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 text_vectorization/strided_slicew
text_vectorization/sub/xConst*
_output_shapes
: *
dtype0*
value
B :ў2
text_vectorization/sub/xд
text_vectorization/subSub!text_vectorization/sub/x:output:0)text_vectorization/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization/suby
text_vectorization/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ў2
text_vectorization/Less/yф
text_vectorization/LessLess)text_vectorization/strided_slice:output:0"text_vectorization/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization/Less§
text_vectorization/condStatelessIftext_vectorization/Less:z:0text_vectorization/sub:z:0?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:                  * 
_read_only_resource_inputs
 *7
else_branch(R&
$text_vectorization_cond_false_361988*/
output_shapes
:                  *6
then_branch'R%
#text_vectorization_cond_true_3619872
text_vectorization/condЦ
 text_vectorization/cond/IdentityIdentity text_vectorization/cond:output:0*
T0	*(
_output_shapes
:         ў2"
 text_vectorization/cond/IdentityГ
!embedding/StatefulPartitionedCallStatefulPartitionedCall)text_vectorization/cond/Identity:output:0embedding_362008*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ўd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_3611952#
!embedding/StatefulPartitionedCallњ
dropout/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ўd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3615602!
dropout/StatefulPartitionedCall▓
conv1d/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv1d_362012conv1d_362014*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ќђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_3612222 
conv1d/StatefulPartitionedCallг
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0batch_normalization_362017batch_normalization_362019batch_normalization_362021batch_normalization_362023*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ќђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_3615192-
+batch_normalization/StatefulPartitionedCallЌ
max_pooling1d/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Іђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_max_pooling1d_layer_call_and_return_conditional_losses_3610852
max_pooling1d/PartitionedCall║
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling1d/PartitionedCall:output:0conv1d_1_362027conv1d_1_362029*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ёђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_3612742"
 conv1d_1/StatefulPartitionedCall║
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ёђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3614572#
!dropout_1/StatefulPartitionedCallЮ
$global_max_pooling1d/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Y
fTRR
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_3610982&
$global_max_pooling1d/PartitionedCallГ
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_362034dense_362036*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_3612992
dense/StatefulPartitionedCall┤
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3614242#
!dropout_2/StatefulPartitionedCall┤
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_1_362040dense_1_362042*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_3613232!
dense_1/StatefulPartitionedCall┼
#predictions/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0predictions_362045predictions_362047*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_predictions_layer_call_and_return_conditional_losses_3613402%
#predictions/StatefulPartitionedCallХ
IdentityIdentity,predictions/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall$^predictions/StatefulPartitionedCallL^text_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#predictions/StatefulPartitionedCall#predictions/StatefulPartitionedCall2џ
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2:P L
'
_output_shapes
:         
!
_user_specified_name	input_1:

_output_shapes
: 
┤
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_361424

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         а2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeх
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         а*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         а2
dropout/GreaterEqualђ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         а2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         а2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         а2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         а:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
╣
М
4__inference_batch_normalization_layer_call_fn_362600

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_3609382
StatefulPartitionedCallю
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:                  ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
­
▓
O__inference_batch_normalization_layer_call_and_return_conditional_losses_362659

inputs0
!batchnorm_readvariableop_resource:	ђ4
%batchnorm_mul_readvariableop_resource:	ђ2
#batchnorm_readvariableop_1_resource:	ђ2
#batchnorm_readvariableop_2_resource:	ђ
identityѕбbatchnorm/ReadVariableOpбbatchnorm/ReadVariableOp_1бbatchnorm/ReadVariableOp_2бbatchnorm/mul/ReadVariableOpЊ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2
batchnorm/add/yЅ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/RsqrtЪ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/mul/ReadVariableOpє
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2
batchnorm/mulё
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:                  ђ2
batchnorm/mul_1Ў
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/ReadVariableOp_1є
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/mul_2Ў
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/ReadVariableOp_2ё
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/subЊ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:                  ђ2
batchnorm/add_1ж
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:                  ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
Ќ
М
4__inference_batch_normalization_layer_call_fn_362639

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ќђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_3615192
StatefulPartitionedCallћ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:         Ќђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         Ќђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:         Ќђ
 
_user_specified_nameinputs
┬
F
*__inference_dropout_2_layer_call_fn_362824

inputs
identity─
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         а* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_3613102
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         а2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         а:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
└В
В
A__inference_model_layer_call_and_return_conditional_losses_362330

inputs\
Xtext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_table_handle]
Ytext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_default_value	4
!embedding_embedding_lookup_362254:	Х)dI
2conv1d_conv1d_expanddims_1_readvariableop_resource:dђ5
&conv1d_biasadd_readvariableop_resource:	ђD
5batch_normalization_batchnorm_readvariableop_resource:	ђH
9batch_normalization_batchnorm_mul_readvariableop_resource:	ђF
7batch_normalization_batchnorm_readvariableop_1_resource:	ђF
7batch_normalization_batchnorm_readvariableop_2_resource:	ђL
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:ђђ7
(conv1d_1_biasadd_readvariableop_resource:	ђ8
$dense_matmul_readvariableop_resource:
ђа4
%dense_biasadd_readvariableop_resource:	а:
&dense_1_matmul_readvariableop_resource:
аа6
'dense_1_biasadd_readvariableop_resource:	а=
*predictions_matmul_readvariableop_resource:	а9
+predictions_biasadd_readvariableop_resource:
identityѕб,batch_normalization/batchnorm/ReadVariableOpб.batch_normalization/batchnorm/ReadVariableOp_1б.batch_normalization/batchnorm/ReadVariableOp_2б0batch_normalization/batchnorm/mul/ReadVariableOpбconv1d/BiasAdd/ReadVariableOpб)conv1d/conv1d/ExpandDims_1/ReadVariableOpбconv1d_1/BiasAdd/ReadVariableOpб+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpбdense_1/BiasAdd/ReadVariableOpбdense_1/MatMul/ReadVariableOpбembedding/embedding_lookupб"predictions/BiasAdd/ReadVariableOpб!predictions/MatMul/ReadVariableOpбKtext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2ђ
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:         2 
text_vectorization/StringLower§
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:         *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace┴
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:         *
squeeze_dims

         2
text_vectorization/SqueezeЇ
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const 
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:         :         :2.
,text_vectorization/StringSplit/StringSplitV2╣
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stackй
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1й
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2н
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_sliceХ
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack║
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1║
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2Г
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1ф
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:         2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastБ
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1╦
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shapeї
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Constй
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prodї
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y╔
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater▀
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Castљ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Г
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maxё
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y║
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addГ
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul▓
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumХ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumЅ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2░
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:         2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount■
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis╝
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:         2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsumј
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0■
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisд
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:         2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatЁ
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Xtext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ytext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:         2M
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2і
4text_vectorization/string_lookup_1/assert_equal/NoOpNoOp*
_output_shapes
 26
4text_vectorization/string_lookup_1/assert_equal/NoOpЖ
+text_vectorization/string_lookup_1/IdentityIdentityTtext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         2-
+text_vectorization/string_lookup_1/IdentityЩ
-text_vectorization/string_lookup_1/Identity_1Identity`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:         2/
-text_vectorization/string_lookup_1/Identity_1ц
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_valueЮ
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
         2)
'text_vectorization/RaggedToTensor/ConstЂ
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:04text_vectorization/string_lookup_1/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:06text_vectorization/string_lookup_1/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:                  *
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensorБ
text_vectorization/ShapeShape?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization/Shapeџ
&text_vectorization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&text_vectorization/strided_slice/stackъ
(text_vectorization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization/strided_slice/stack_1ъ
(text_vectorization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization/strided_slice/stack_2н
 text_vectorization/strided_sliceStridedSlice!text_vectorization/Shape:output:0/text_vectorization/strided_slice/stack:output:01text_vectorization/strided_slice/stack_1:output:01text_vectorization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 text_vectorization/strided_slicew
text_vectorization/sub/xConst*
_output_shapes
: *
dtype0*
value
B :ў2
text_vectorization/sub/xд
text_vectorization/subSub!text_vectorization/sub/x:output:0)text_vectorization/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization/suby
text_vectorization/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ў2
text_vectorization/Less/yф
text_vectorization/LessLess)text_vectorization/strided_slice:output:0"text_vectorization/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization/Less§
text_vectorization/condStatelessIftext_vectorization/Less:z:0text_vectorization/sub:z:0?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:                  * 
_read_only_resource_inputs
 *7
else_branch(R&
$text_vectorization_cond_false_362234*/
output_shapes
:                  *6
then_branch'R%
#text_vectorization_cond_true_3622332
text_vectorization/condЦ
 text_vectorization/cond/IdentityIdentity text_vectorization/cond:output:0*
T0	*(
_output_shapes
:         ў2"
 text_vectorization/cond/IdentityК
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_362254)text_vectorization/cond/Identity:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*4
_class*
(&loc:@embedding/embedding_lookup/362254*,
_output_shapes
:         ўd*
dtype02
embedding/embedding_lookupќ
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/362254*,
_output_shapes
:         ўd2%
#embedding/embedding_lookup/Identity┐
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:         ўd2'
%embedding/embedding_lookup/Identity_1Ќ
dropout/IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:         ўd2
dropout/IdentityЄ
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        2
conv1d/conv1d/ExpandDims/dim┐
conv1d/conv1d/ExpandDims
ExpandDimsdropout/Identity:output:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ўd2
conv1d/conv1d/ExpandDims╬
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:dђ*
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOpѓ
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dimн
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:dђ2
conv1d/conv1d/ExpandDims_1Н
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:         Ќђ*
paddingVALID*
strides
2
conv1d/conv1dЕ
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*-
_output_shapes
:         Ќђ*
squeeze_dims

§        2
conv1d/conv1d/Squeezeб
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
conv1d/BiasAdd/ReadVariableOpф
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:         Ќђ2
conv1d/BiasAdds
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*-
_output_shapes
:         Ќђ2
conv1d/Relu¤
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:ђ*
dtype02.
,batch_normalization/batchnorm/ReadVariableOpЈ
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2%
#batch_normalization/batchnorm/add/y┘
!batch_normalization/batchnorm/addAddV24batch_normalization/batchnorm/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ2#
!batch_normalization/batchnorm/addа
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:ђ2%
#batch_normalization/batchnorm/Rsqrt█
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ*
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOpо
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2#
!batch_normalization/batchnorm/mul╦
#batch_normalization/batchnorm/mul_1Mulconv1d/Relu:activations:0%batch_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:         Ќђ2%
#batch_normalization/batchnorm/mul_1Н
.batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp7batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype020
.batch_normalization/batchnorm/ReadVariableOp_1о
#batch_normalization/batchnorm/mul_2Mul6batch_normalization/batchnorm/ReadVariableOp_1:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ2%
#batch_normalization/batchnorm/mul_2Н
.batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp7batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:ђ*
dtype020
.batch_normalization/batchnorm/ReadVariableOp_2н
!batch_normalization/batchnorm/subSub6batch_normalization/batchnorm/ReadVariableOp_2:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ2#
!batch_normalization/batchnorm/sub█
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*-
_output_shapes
:         Ќђ2%
#batch_normalization/batchnorm/add_1~
max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
max_pooling1d/ExpandDims/dim╬
max_pooling1d/ExpandDims
ExpandDims'batch_normalization/batchnorm/add_1:z:0%max_pooling1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         Ќђ2
max_pooling1d/ExpandDims╦
max_pooling1d/MaxPoolMaxPool!max_pooling1d/ExpandDims:output:0*1
_output_shapes
:         Іђ*
ksize
*
paddingVALID*
strides
2
max_pooling1d/MaxPoolе
max_pooling1d/SqueezeSqueezemax_pooling1d/MaxPool:output:0*
T0*-
_output_shapes
:         Іђ*
squeeze_dims
2
max_pooling1d/SqueezeІ
conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        2 
conv1d_1/conv1d/ExpandDims/dim╦
conv1d_1/conv1d/ExpandDims
ExpandDimsmax_pooling1d/Squeeze:output:0'conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         Іђ2
conv1d_1/conv1d/ExpandDimsН
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:ђђ*
dtype02-
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpє
 conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_1/conv1d/ExpandDims_1/dimП
conv1d_1/conv1d/ExpandDims_1
ExpandDims3conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:ђђ2
conv1d_1/conv1d/ExpandDims_1П
conv1d_1/conv1dConv2D#conv1d_1/conv1d/ExpandDims:output:0%conv1d_1/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:         Ёђ*
paddingVALID*
strides
2
conv1d_1/conv1d»
conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d:output:0*
T0*-
_output_shapes
:         Ёђ*
squeeze_dims

§        2
conv1d_1/conv1d/Squeezeе
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02!
conv1d_1/BiasAdd/ReadVariableOp▓
conv1d_1/BiasAddBiasAdd conv1d_1/conv1d/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:         Ёђ2
conv1d_1/BiasAddy
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*-
_output_shapes
:         Ёђ2
conv1d_1/ReluЅ
dropout_1/IdentityIdentityconv1d_1/Relu:activations:0*
T0*-
_output_shapes
:         Ёђ2
dropout_1/Identityџ
*global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*global_max_pooling1d/Max/reduction_indices└
global_max_pooling1d/MaxMaxdropout_1/Identity:output:03global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:         ђ2
global_max_pooling1d/MaxА
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
ђа*
dtype02
dense/MatMul/ReadVariableOpА
dense/MatMulMatMul!global_max_pooling1d/Max:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2
dense/MatMulЪ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype02
dense/BiasAdd/ReadVariableOpџ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:         а2

dense/ReluЂ
dropout_2/IdentityIdentitydense/Relu:activations:0*
T0*(
_output_shapes
:         а2
dropout_2/IdentityД
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
аа*
dtype02
dense_1/MatMul/ReadVariableOpА
dense_1/MatMulMatMuldropout_2/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2
dense_1/MatMulЦ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype02 
dense_1/BiasAdd/ReadVariableOpб
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2
dense_1/BiasAddq
dense_1/TanhTanhdense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         а2
dense_1/Tanh▓
!predictions/MatMul/ReadVariableOpReadVariableOp*predictions_matmul_readvariableop_resource*
_output_shapes
:	а*
dtype02#
!predictions/MatMul/ReadVariableOpА
predictions/MatMulMatMuldense_1/Tanh:y:0)predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
predictions/MatMul░
"predictions/BiasAdd/ReadVariableOpReadVariableOp+predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"predictions/BiasAdd/ReadVariableOp▒
predictions/BiasAddBiasAddpredictions/MatMul:product:0*predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
predictions/BiasAddЁ
predictions/SigmoidSigmoidpredictions/BiasAdd:output:0*
T0*'
_output_shapes
:         2
predictions/Sigmoid§
IdentityIdentitypredictions/Sigmoid:y:0-^batch_normalization/batchnorm/ReadVariableOp/^batch_normalization/batchnorm/ReadVariableOp_1/^batch_normalization/batchnorm/ReadVariableOp_21^batch_normalization/batchnorm/mul/ReadVariableOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOpL^text_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         : : : : : : : : : : : : : : : : : 2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2`
.batch_normalization/batchnorm/ReadVariableOp_1.batch_normalization/batchnorm/ReadVariableOp_12`
.batch_normalization/batchnorm/ReadVariableOp_2.batch_normalization/batchnorm/ReadVariableOp_22d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2H
"predictions/BiasAdd/ReadVariableOp"predictions/BiasAdd/ReadVariableOp2F
!predictions/MatMul/ReadVariableOp!predictions/MatMul/ReadVariableOp2џ
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:

_output_shapes
: 
▓
/
__inference__initializer_362896
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
г
Е
&__inference_model_layer_call_fn_362176

inputs
unknown
	unknown_0	
	unknown_1:	Х)d 
	unknown_2:dђ
	unknown_3:	ђ
	unknown_4:	ђ
	unknown_5:	ђ
	unknown_6:	ђ
	unknown_7:	ђ!
	unknown_8:ђђ
	unknown_9:	ђ

unknown_10:
ђа

unknown_11:	а

unknown_12:
аа

unknown_13:	а

unknown_14:	а

unknown_15:
identityѕбStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         */
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_3617332
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:

_output_shapes
: 
ч
О
$text_vectorization_cond_false_362234'
#text_vectorization_cond_placeholder`
\text_vectorization_cond_strided_slice_text_vectorization_raggedtotensor_raggedtensortotensor	$
 text_vectorization_cond_identity	Ф
+text_vectorization/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2-
+text_vectorization/cond/strided_slice/stack»
-text_vectorization/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-text_vectorization/cond/strided_slice/stack_1»
-text_vectorization/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2/
-text_vectorization/cond/strided_slice/stack_2╠
%text_vectorization/cond/strided_sliceStridedSlice\text_vectorization_cond_strided_slice_text_vectorization_raggedtotensor_raggedtensortotensor4text_vectorization/cond/strided_slice/stack:output:06text_vectorization/cond/strided_slice/stack_1:output:06text_vectorization/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:                  *

begin_mask*
end_mask2'
%text_vectorization/cond/strided_slice╗
 text_vectorization/cond/IdentityIdentity.text_vectorization/cond/strided_slice:output:0*
T0	*0
_output_shapes
:                  2"
 text_vectorization/cond/Identity"M
 text_vectorization_cond_identity)text_vectorization/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :                  : 

_output_shapes
: :62
0
_output_shapes
:                  
Ъ
J
.__inference_max_pooling1d_layer_call_fn_361091

inputs
identityП
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'                           * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_max_pooling1d_layer_call_and_return_conditional_losses_3610852
PartitionedCallѓ
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'                           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
П
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_362799

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Consty
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:         Ёђ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape║
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:         Ёђ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y─
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:         Ёђ2
dropout/GreaterEqualЁ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:         Ёђ2
dropout/Castђ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:         Ёђ2
dropout/Mul_1k
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:         Ёђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         Ёђ:U Q
-
_output_shapes
:         Ёђ
 
_user_specified_nameinputs
╬
D
(__inference_dropout_layer_call_fn_362540

inputs
identityк
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ўd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_3612042
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:         ўd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ўd:T P
,
_output_shapes
:         ўd
 
_user_specified_nameinputs
Ш
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_361310

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         а2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         а2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         а:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
Г

э
C__inference_dense_1_layer_call_and_return_conditional_losses_362866

inputs2
matmul_readvariableop_resource:
аа.
biasadd_readvariableop_resource:	а
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЈ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
аа*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:а*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2	
BiasAddY
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:         а2
Tanhј
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         а2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         а: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         а
 
_user_specified_nameinputs
║
Ю
)__inference_conv1d_1_layer_call_fn_362756

inputs
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ёђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_3612742
StatefulPartitionedCallћ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:         Ёђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         Іђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:         Іђ
 
_user_specified_nameinputs
љ
e
I__inference_max_pooling1d_layer_call_and_return_conditional_losses_361085

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dimЊ

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+                           2

ExpandDims▒
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+                           *
ksize
*
paddingVALID*
strides
2	
MaxPoolј
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'                           *
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'                           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
Р
c
*__inference_dropout_1_layer_call_fn_362782

inputs
identityѕбStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ёђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3614572
StatefulPartitionedCallћ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:         Ёђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         Ёђ22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:         Ёђ
 
_user_specified_nameinputs
о
F
*__inference_dropout_1_layer_call_fn_362777

inputs
identity╔
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         Ёђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_3612852
PartitionedCallr
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:         Ёђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         Ёђ:U Q
-
_output_shapes
:         Ёђ
 
_user_specified_nameinputs
╩*
В
O__inference_batch_normalization_layer_call_and_return_conditional_losses_361519

inputs6
'assignmovingavg_readvariableop_resource:	ђ8
)assignmovingavg_1_readvariableop_resource:	ђ4
%batchnorm_mul_readvariableop_resource:	ђ0
!batchnorm_readvariableop_resource:	ђ
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбbatchnorm/ReadVariableOpбbatchnorm/mul/ReadVariableOpЉ
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indicesћ
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(2
moments/meanЂ
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:ђ2
moments/StopGradientф
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:         Ќђ2
moments/SquaredDifferenceЎ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesи
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(2
moments/varianceѓ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 2
moments/Squeezeі
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<2
AssignMovingAvg/decayЦ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ђ*
dtype02 
AssignMovingAvg/ReadVariableOpЎ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:ђ2
AssignMovingAvg/subљ
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ђ2
AssignMovingAvg/mul┐
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<2
AssignMovingAvg_1/decayФ
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype02"
 AssignMovingAvg_1/ReadVariableOpА
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ђ2
AssignMovingAvg_1/subў
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ђ2
AssignMovingAvg_1/mul╔
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2
batchnorm/add/yЃ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/RsqrtЪ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/mul/ReadVariableOpє
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2
batchnorm/mul|
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:         Ќђ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/mul_2Њ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/ReadVariableOpѓ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/subІ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:         Ќђ2
batchnorm/add_1Љ
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:         Ќђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         Ќђ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:         Ќђ
 
_user_specified_nameinputs
┼Д
╬
A__inference_model_layer_call_and_return_conditional_losses_362519

inputs\
Xtext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_table_handle]
Ytext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_default_value	4
!embedding_embedding_lookup_362408:	Х)dI
2conv1d_conv1d_expanddims_1_readvariableop_resource:dђ5
&conv1d_biasadd_readvariableop_resource:	ђJ
;batch_normalization_assignmovingavg_readvariableop_resource:	ђL
=batch_normalization_assignmovingavg_1_readvariableop_resource:	ђH
9batch_normalization_batchnorm_mul_readvariableop_resource:	ђD
5batch_normalization_batchnorm_readvariableop_resource:	ђL
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:ђђ7
(conv1d_1_biasadd_readvariableop_resource:	ђ8
$dense_matmul_readvariableop_resource:
ђа4
%dense_biasadd_readvariableop_resource:	а:
&dense_1_matmul_readvariableop_resource:
аа6
'dense_1_biasadd_readvariableop_resource:	а=
*predictions_matmul_readvariableop_resource:	а9
+predictions_biasadd_readvariableop_resource:
identityѕб#batch_normalization/AssignMovingAvgб2batch_normalization/AssignMovingAvg/ReadVariableOpб%batch_normalization/AssignMovingAvg_1б4batch_normalization/AssignMovingAvg_1/ReadVariableOpб,batch_normalization/batchnorm/ReadVariableOpб0batch_normalization/batchnorm/mul/ReadVariableOpбconv1d/BiasAdd/ReadVariableOpб)conv1d/conv1d/ExpandDims_1/ReadVariableOpбconv1d_1/BiasAdd/ReadVariableOpб+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpбdense_1/BiasAdd/ReadVariableOpбdense_1/MatMul/ReadVariableOpбembedding/embedding_lookupб"predictions/BiasAdd/ReadVariableOpб!predictions/MatMul/ReadVariableOpбKtext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2ђ
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:         2 
text_vectorization/StringLower§
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:         *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace┴
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:         *
squeeze_dims

         2
text_vectorization/SqueezeЇ
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const 
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:         :         :2.
,text_vectorization/StringSplit/StringSplitV2╣
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stackй
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1й
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2н
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:         *

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_sliceХ
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack║
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1║
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2Г
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1ф
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:         2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastБ
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1╦
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shapeї
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Constй
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prodї
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y╔
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater▀
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Castљ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Г
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maxё
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y║
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addГ
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul▓
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumХ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumЅ
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2░
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:         2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount■
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis╝
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:         2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsumј
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0■
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisд
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:         2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatЁ
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2LookupTableFindV2Xtext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ytext_vectorization_string_lookup_1_none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*#
_output_shapes
:         2M
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2і
4text_vectorization/string_lookup_1/assert_equal/NoOpNoOp*
_output_shapes
 26
4text_vectorization/string_lookup_1/assert_equal/NoOpЖ
+text_vectorization/string_lookup_1/IdentityIdentityTtext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:         2-
+text_vectorization/string_lookup_1/IdentityЩ
-text_vectorization/string_lookup_1/Identity_1Identity`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*#
_output_shapes
:         2/
-text_vectorization/string_lookup_1/Identity_1ц
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_valueЮ
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
         2)
'text_vectorization/RaggedToTensor/ConstЂ
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:04text_vectorization/string_lookup_1/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:06text_vectorization/string_lookup_1/Identity_1:output:0*
T0	*
Tindex0	*
Tshape0	*0
_output_shapes
:                  *
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensorБ
text_vectorization/ShapeShape?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
T0	*
_output_shapes
:2
text_vectorization/Shapeџ
&text_vectorization/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&text_vectorization/strided_slice/stackъ
(text_vectorization/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization/strided_slice/stack_1ъ
(text_vectorization/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(text_vectorization/strided_slice/stack_2н
 text_vectorization/strided_sliceStridedSlice!text_vectorization/Shape:output:0/text_vectorization/strided_slice/stack:output:01text_vectorization/strided_slice/stack_1:output:01text_vectorization/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 text_vectorization/strided_slicew
text_vectorization/sub/xConst*
_output_shapes
: *
dtype0*
value
B :ў2
text_vectorization/sub/xд
text_vectorization/subSub!text_vectorization/sub/x:output:0)text_vectorization/strided_slice:output:0*
T0*
_output_shapes
: 2
text_vectorization/suby
text_vectorization/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ў2
text_vectorization/Less/yф
text_vectorization/LessLess)text_vectorization/strided_slice:output:0"text_vectorization/Less/y:output:0*
T0*
_output_shapes
: 2
text_vectorization/Less§
text_vectorization/condStatelessIftext_vectorization/Less:z:0text_vectorization/sub:z:0?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*0
_output_shapes
:                  * 
_read_only_resource_inputs
 *7
else_branch(R&
$text_vectorization_cond_false_362388*/
output_shapes
:                  *6
then_branch'R%
#text_vectorization_cond_true_3623872
text_vectorization/condЦ
 text_vectorization/cond/IdentityIdentity text_vectorization/cond:output:0*
T0	*(
_output_shapes
:         ў2"
 text_vectorization/cond/IdentityК
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_362408)text_vectorization/cond/Identity:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*4
_class*
(&loc:@embedding/embedding_lookup/362408*,
_output_shapes
:         ўd*
dtype02
embedding/embedding_lookupќ
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/362408*,
_output_shapes
:         ўd2%
#embedding/embedding_lookup/Identity┐
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:         ўd2'
%embedding/embedding_lookup/Identity_1s
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/ConstИ
dropout/dropout/MulMul.embedding/embedding_lookup/Identity_1:output:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:         ўd2
dropout/dropout/Mulї
dropout/dropout/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
dropout/dropout/ShapeЛ
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:         ўd*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЁ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
dropout/dropout/GreaterEqual/yс
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         ўd2
dropout/dropout/GreaterEqualю
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         ўd2
dropout/dropout/CastЪ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:         ўd2
dropout/dropout/Mul_1Є
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        2
conv1d/conv1d/ExpandDims/dim┐
conv1d/conv1d/ExpandDims
ExpandDimsdropout/dropout/Mul_1:z:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         ўd2
conv1d/conv1d/ExpandDims╬
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:dђ*
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOpѓ
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dimн
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:dђ2
conv1d/conv1d/ExpandDims_1Н
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:         Ќђ*
paddingVALID*
strides
2
conv1d/conv1dЕ
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*-
_output_shapes
:         Ќђ*
squeeze_dims

§        2
conv1d/conv1d/Squeezeб
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
conv1d/BiasAdd/ReadVariableOpф
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:         Ќђ2
conv1d/BiasAdds
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*-
_output_shapes
:         Ќђ2
conv1d/Relu╣
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       24
2batch_normalization/moments/mean/reduction_indicesс
 batch_normalization/moments/meanMeanconv1d/Relu:activations:0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(2"
 batch_normalization/moments/meanй
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*#
_output_shapes
:ђ2*
(batch_normalization/moments/StopGradientщ
-batch_normalization/moments/SquaredDifferenceSquaredDifferenceconv1d/Relu:activations:01batch_normalization/moments/StopGradient:output:0*
T0*-
_output_shapes
:         Ќђ2/
-batch_normalization/moments/SquaredDifference┴
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       28
6batch_normalization/moments/variance/reduction_indicesЄ
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(2&
$batch_normalization/moments/varianceЙ
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 2%
#batch_normalization/moments/Squeezeк
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 2'
%batch_normalization/moments/Squeeze_1Џ
)batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<2+
)batch_normalization/AssignMovingAvg/decayр
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp;batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes	
:ђ*
dtype024
2batch_normalization/AssignMovingAvg/ReadVariableOpж
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0,batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes	
:ђ2)
'batch_normalization/AssignMovingAvg/subЯ
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ђ2)
'batch_normalization/AssignMovingAvg/mulБ
#batch_normalization/AssignMovingAvgAssignSubVariableOp;batch_normalization_assignmovingavg_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02%
#batch_normalization/AssignMovingAvgЪ
+batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<2-
+batch_normalization/AssignMovingAvg_1/decayу
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype026
4batch_normalization/AssignMovingAvg_1/ReadVariableOpы
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0.batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ђ2+
)batch_normalization/AssignMovingAvg_1/subУ
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ђ2+
)batch_normalization/AssignMovingAvg_1/mulГ
%batch_normalization/AssignMovingAvg_1AssignSubVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization/AssignMovingAvg_1Ј
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2%
#batch_normalization/batchnorm/add/yМ
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ2#
!batch_normalization/batchnorm/addа
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:ђ2%
#batch_normalization/batchnorm/Rsqrt█
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ*
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOpо
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2#
!batch_normalization/batchnorm/mul╦
#batch_normalization/batchnorm/mul_1Mulconv1d/Relu:activations:0%batch_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:         Ќђ2%
#batch_normalization/batchnorm/mul_1╠
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ2%
#batch_normalization/batchnorm/mul_2¤
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:ђ*
dtype02.
,batch_normalization/batchnorm/ReadVariableOpм
!batch_normalization/batchnorm/subSub4batch_normalization/batchnorm/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ2#
!batch_normalization/batchnorm/sub█
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*-
_output_shapes
:         Ќђ2%
#batch_normalization/batchnorm/add_1~
max_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
max_pooling1d/ExpandDims/dim╬
max_pooling1d/ExpandDims
ExpandDims'batch_normalization/batchnorm/add_1:z:0%max_pooling1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         Ќђ2
max_pooling1d/ExpandDims╦
max_pooling1d/MaxPoolMaxPool!max_pooling1d/ExpandDims:output:0*1
_output_shapes
:         Іђ*
ksize
*
paddingVALID*
strides
2
max_pooling1d/MaxPoolе
max_pooling1d/SqueezeSqueezemax_pooling1d/MaxPool:output:0*
T0*-
_output_shapes
:         Іђ*
squeeze_dims
2
max_pooling1d/SqueezeІ
conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§        2 
conv1d_1/conv1d/ExpandDims/dim╦
conv1d_1/conv1d/ExpandDims
ExpandDimsmax_pooling1d/Squeeze:output:0'conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:         Іђ2
conv1d_1/conv1d/ExpandDimsН
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:ђђ*
dtype02-
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpє
 conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_1/conv1d/ExpandDims_1/dimП
conv1d_1/conv1d/ExpandDims_1
ExpandDims3conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:ђђ2
conv1d_1/conv1d/ExpandDims_1П
conv1d_1/conv1dConv2D#conv1d_1/conv1d/ExpandDims:output:0%conv1d_1/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:         Ёђ*
paddingVALID*
strides
2
conv1d_1/conv1d»
conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d:output:0*
T0*-
_output_shapes
:         Ёђ*
squeeze_dims

§        2
conv1d_1/conv1d/Squeezeе
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02!
conv1d_1/BiasAdd/ReadVariableOp▓
conv1d_1/BiasAddBiasAdd conv1d_1/conv1d/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:         Ёђ2
conv1d_1/BiasAddy
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*-
_output_shapes
:         Ёђ2
conv1d_1/Reluw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/dropout/Constг
dropout_1/dropout/MulMulconv1d_1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*-
_output_shapes
:         Ёђ2
dropout_1/dropout/Mul}
dropout_1/dropout/ShapeShapeconv1d_1/Relu:activations:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shapeп
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*-
_output_shapes
:         Ёђ*
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЅ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_1/dropout/GreaterEqual/yВ
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:         Ёђ2 
dropout_1/dropout/GreaterEqualБ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:         Ёђ2
dropout_1/dropout/Castе
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*-
_output_shapes
:         Ёђ2
dropout_1/dropout/Mul_1џ
*global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*global_max_pooling1d/Max/reduction_indices└
global_max_pooling1d/MaxMaxdropout_1/dropout/Mul_1:z:03global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:         ђ2
global_max_pooling1d/MaxА
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
ђа*
dtype02
dense/MatMul/ReadVariableOpА
dense/MatMulMatMul!global_max_pooling1d/Max:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2
dense/MatMulЪ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype02
dense/BiasAdd/ReadVariableOpџ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:         а2

dense/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_2/dropout/Constц
dropout_2/dropout/MulMuldense/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*(
_output_shapes
:         а2
dropout_2/dropout/Mulz
dropout_2/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/ShapeМ
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*(
_output_shapes
:         а*
dtype020
.dropout_2/dropout/random_uniform/RandomUniformЅ
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_2/dropout/GreaterEqual/yу
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         а2 
dropout_2/dropout/GreaterEqualъ
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         а2
dropout_2/dropout/CastБ
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*(
_output_shapes
:         а2
dropout_2/dropout/Mul_1Д
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
аа*
dtype02
dense_1/MatMul/ReadVariableOpА
dense_1/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2
dense_1/MatMulЦ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:а*
dtype02 
dense_1/BiasAdd/ReadVariableOpб
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         а2
dense_1/BiasAddq
dense_1/TanhTanhdense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         а2
dense_1/Tanh▓
!predictions/MatMul/ReadVariableOpReadVariableOp*predictions_matmul_readvariableop_resource*
_output_shapes
:	а*
dtype02#
!predictions/MatMul/ReadVariableOpА
predictions/MatMulMatMuldense_1/Tanh:y:0)predictions/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
predictions/MatMul░
"predictions/BiasAdd/ReadVariableOpReadVariableOp+predictions_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"predictions/BiasAdd/ReadVariableOp▒
predictions/BiasAddBiasAddpredictions/MatMul:product:0*predictions/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
predictions/BiasAddЁ
predictions/SigmoidSigmoidpredictions/BiasAdd:output:0*
T0*'
_output_shapes
:         2
predictions/SigmoidН
IdentityIdentitypredictions/Sigmoid:y:0$^batch_normalization/AssignMovingAvg3^batch_normalization/AssignMovingAvg/ReadVariableOp&^batch_normalization/AssignMovingAvg_15^batch_normalization/AssignMovingAvg_1/ReadVariableOp-^batch_normalization/batchnorm/ReadVariableOp1^batch_normalization/batchnorm/mul/ReadVariableOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup#^predictions/BiasAdd/ReadVariableOp"^predictions/MatMul/ReadVariableOpL^text_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         : : : : : : : : : : : : : : : : : 2J
#batch_normalization/AssignMovingAvg#batch_normalization/AssignMovingAvg2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_1%batch_normalization/AssignMovingAvg_12l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2H
"predictions/BiasAdd/ReadVariableOp"predictions/BiasAdd/ReadVariableOp2F
!predictions/MatMul/ReadVariableOp!predictions/MatMul/ReadVariableOp2џ
Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2Ktext_vectorization/string_lookup_1/None_lookup_table_find/LookupTableFindV2:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:

_output_shapes
: 
ч*
В
O__inference_batch_normalization_layer_call_and_return_conditional_losses_362693

inputs6
'assignmovingavg_readvariableop_resource:	ђ8
)assignmovingavg_1_readvariableop_resource:	ђ4
%batchnorm_mul_readvariableop_resource:	ђ0
!batchnorm_readvariableop_resource:	ђ
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбbatchnorm/ReadVariableOpбbatchnorm/mul/ReadVariableOpЉ
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indicesћ
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(2
moments/meanЂ
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:ђ2
moments/StopGradient▓
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:                  ђ2
moments/SquaredDifferenceЎ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesи
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:ђ*
	keep_dims(2
moments/varianceѓ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 2
moments/Squeezeі
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ђ*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<2
AssignMovingAvg/decayЦ
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ђ*
dtype02 
AssignMovingAvg/ReadVariableOpЎ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:ђ2
AssignMovingAvg/subљ
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ђ2
AssignMovingAvg/mul┐
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<2
AssignMovingAvg_1/decayФ
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype02"
 AssignMovingAvg_1/ReadVariableOpА
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ђ2
AssignMovingAvg_1/subў
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ђ2
AssignMovingAvg_1/mul╔
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oЃ:2
batchnorm/add/yЃ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ђ2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/RsqrtЪ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/mul/ReadVariableOpє
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2
batchnorm/mulё
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:                  ђ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/mul_2Њ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
batchnorm/ReadVariableOpѓ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ђ2
batchnorm/subЊ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:                  ђ2
batchnorm/add_1Ў
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:                  ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):                  ђ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
ч
О
$text_vectorization_cond_false_361988'
#text_vectorization_cond_placeholder`
\text_vectorization_cond_strided_slice_text_vectorization_raggedtotensor_raggedtensortotensor	$
 text_vectorization_cond_identity	Ф
+text_vectorization/cond/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2-
+text_vectorization/cond/strided_slice/stack»
-text_vectorization/cond/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-text_vectorization/cond/strided_slice/stack_1»
-text_vectorization/cond/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2/
-text_vectorization/cond/strided_slice/stack_2╠
%text_vectorization/cond/strided_sliceStridedSlice\text_vectorization_cond_strided_slice_text_vectorization_raggedtotensor_raggedtensortotensor4text_vectorization/cond/strided_slice/stack:output:06text_vectorization/cond/strided_slice/stack_1:output:06text_vectorization/cond/strided_slice/stack_2:output:0*
Index0*
T0	*0
_output_shapes
:                  *

begin_mask*
end_mask2'
%text_vectorization/cond/strided_slice╗
 text_vectorization/cond/IdentityIdentity.text_vectorization/cond/strided_slice:output:0*
T0	*0
_output_shapes
:                  2"
 text_vectorization/cond/Identity"M
 text_vectorization_cond_identity)text_vectorization/cond/Identity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: :                  : 

_output_shapes
: :62
0
_output_shapes
:                  
ё
a
C__inference_dropout_layer_call_and_return_conditional_losses_361204

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:         ўd2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:         ўd2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ўd:T P
,
_output_shapes
:         ўd
 
_user_specified_nameinputs"╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_defaultџ
;
input_10
serving_default_input_1:0         ?
predictions0
StatefulPartitionedCall:0         tensorflow/serving/predict:ј╝
Сr
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer-8

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
─__call__
┼_default_save_signature
+к&call_and_return_all_conditional_losses"їn
_tf_keras_network­m{"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "string", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "TextVectorization", "config": {"name": "text_vectorization", "trainable": true, "dtype": "string", "max_tokens": 5302, "standardize": "lower_and_strip_punctuation", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 280, "pad_to_max_tokens": false, "vocabulary_size": 5302}, "name": "text_vectorization", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 280]}, "dtype": "float32", "input_dim": 5302, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 280}, "name": "embedding", "inbound_nodes": [[["text_vectorization", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["embedding", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d", "inbound_nodes": [[["dropout", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization", "inbound_nodes": [[["conv1d", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "name": "max_pooling1d", "inbound_nodes": [[["batch_normalization", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [7]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_1", "inbound_nodes": [[["max_pooling1d", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["conv1d_1", 0, 0, {}]]]}, {"class_name": "GlobalMaxPooling1D", "config": {"name": "global_max_pooling1d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_max_pooling1d", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 160, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["global_max_pooling1d", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_2", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 160, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dropout_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "predictions", "trainable": true, "dtype": "float32", "units": 6, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "predictions", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["predictions", 0, 0]]}, "shared_object_id": 29, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "string", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "string", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "TextVectorization", "config": {"name": "text_vectorization", "trainable": true, "dtype": "string", "max_tokens": 5302, "standardize": "lower_and_strip_punctuation", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 280, "pad_to_max_tokens": false, "vocabulary_size": 5302}, "name": "text_vectorization", "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 1}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 280]}, "dtype": "float32", "input_dim": 5302, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 2}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 280}, "name": "embedding", "inbound_nodes": [[["text_vectorization", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["embedding", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "Conv1D", "config": {"name": "conv1d", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d", "inbound_nodes": [[["dropout", 0, 0, {}]]], "shared_object_id": 7}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 11}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization", "inbound_nodes": [[["conv1d", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "name": "max_pooling1d", "inbound_nodes": [[["batch_normalization", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "Conv1D", "config": {"name": "conv1d_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [7]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_1", "inbound_nodes": [[["max_pooling1d", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["conv1d_1", 0, 0, {}]]], "shared_object_id": 17}, {"class_name": "GlobalMaxPooling1D", "config": {"name": "global_max_pooling1d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_max_pooling1d", "inbound_nodes": [[["dropout_1", 0, 0, {}]]], "shared_object_id": 18}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 160, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["global_max_pooling1d", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_2", "inbound_nodes": [[["dense", 0, 0, {}]]], "shared_object_id": 22}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 160, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dropout_2", 0, 0, {}]]], "shared_object_id": 25}, {"class_name": "Dense", "config": {"name": "predictions", "trainable": true, "dtype": "float32", "units": 6, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "predictions", "inbound_nodes": [[["dense_1", 0, 0, {}]]], "shared_object_id": 28}], "input_layers": [["input_1", 0, 0]], "output_layers": [["predictions", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 31}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.030304819345474243, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
у"С
_tf_keras_input_layer─{"class_name": "InputLayer", "name": "input_1", "dtype": "string", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "string", "sparse": false, "ragged": false, "name": "input_1"}}
П
state_variables
_index_lookup_layer
	keras_api"Ю
_tf_keras_layerЃ{"name": "text_vectorization", "trainable": true, "expects_training_arg": false, "dtype": "string", "batch_input_shape": null, "stateful": true, "must_restore_from_config": true, "class_name": "TextVectorization", "config": {"name": "text_vectorization", "trainable": true, "dtype": "string", "max_tokens": 5302, "standardize": "lower_and_strip_punctuation", "split": "whitespace", "ngrams": null, "output_mode": "int", "output_sequence_length": 280, "pad_to_max_tokens": false, "vocabulary_size": 5302}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 1, "build_input_shape": {"class_name": "TensorShape", "items": [3432, 1]}}
њ

embeddings
regularization_losses
	variables
trainable_variables
	keras_api
К__call__
+╚&call_and_return_all_conditional_losses"ы
_tf_keras_layerО{"name": "embedding", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 280]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 280]}, "dtype": "float32", "input_dim": 5302, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 2}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 280}, "inbound_nodes": [[["text_vectorization", 0, 0, {}]]], "shared_object_id": 3, "build_input_shape": {"class_name": "TensorShape", "items": [null, 280]}}
е
regularization_losses
	variables
trainable_variables
 	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses"Ќ
_tf_keras_layer§{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "inbound_nodes": [[["embedding", 0, 0, {}]]], "shared_object_id": 4}
ы


!kernel
"bias
#regularization_losses
$	variables
%trainable_variables
&	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses"╩	
_tf_keras_layer░	{"name": "conv1d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv1d", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout", 0, 0, {}]]], "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 100}}, "shared_object_id": 32}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 280, 100]}}
­

'axis
	(gamma
)beta
*moving_mean
+moving_variance
,regularization_losses
-	variables
.trainable_variables
/	keras_api
═__call__
+╬&call_and_return_all_conditional_losses"џ	
_tf_keras_layerђ	{"name": "batch_normalization", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 11}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["conv1d", 0, 0, {}]]], "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 128}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 279, 128]}}
▀
0regularization_losses
1	variables
2trainable_variables
3	keras_api
¤__call__
+л&call_and_return_all_conditional_losses"╬
_tf_keras_layer┤{"name": "max_pooling1d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling1D", "config": {"name": "max_pooling1d", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [2]}, "pool_size": {"class_name": "__tuple__", "items": [2]}, "padding": "valid", "data_format": "channels_last"}, "inbound_nodes": [[["batch_normalization", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 34}}
■


4kernel
5bias
6regularization_losses
7	variables
8trainable_variables
9	keras_api
Л__call__
+м&call_and_return_all_conditional_losses"О	
_tf_keras_layerй	{"name": "conv1d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv1d_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [7]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["max_pooling1d", 0, 0, {}]]], "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 128}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 139, 128]}}
г
:regularization_losses
;	variables
<trainable_variables
=	keras_api
М__call__
+н&call_and_return_all_conditional_losses"Џ
_tf_keras_layerЂ{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "inbound_nodes": [[["conv1d_1", 0, 0, {}]]], "shared_object_id": 17}
у
>regularization_losses
?	variables
@trainable_variables
A	keras_api
Н__call__
+о&call_and_return_all_conditional_losses"о
_tf_keras_layer╝{"name": "global_max_pooling1d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GlobalMaxPooling1D", "config": {"name": "global_max_pooling1d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["dropout_1", 0, 0, {}]]], "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 36}}
і	

Bkernel
Cbias
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
О__call__
+п&call_and_return_all_conditional_losses"с
_tf_keras_layer╔{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 160, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["global_max_pooling1d", 0, 0, {}]]], "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
Е
Hregularization_losses
I	variables
Jtrainable_variables
K	keras_api
┘__call__
+┌&call_and_return_all_conditional_losses"ў
_tf_keras_layer■{"name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "inbound_nodes": [[["dense", 0, 0, {}]]], "shared_object_id": 22}
Ѓ	

Lkernel
Mbias
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
█__call__
+▄&call_and_return_all_conditional_losses"▄
_tf_keras_layer┬{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 160, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_2", 0, 0, {}]]], "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 160}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 160]}}
і	

Rkernel
Sbias
Tregularization_losses
U	variables
Vtrainable_variables
W	keras_api
П__call__
+я&call_and_return_all_conditional_losses"с
_tf_keras_layer╔{"name": "predictions", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "predictions", "trainable": true, "dtype": "float32", "units": 6, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_1", 0, 0, {}]]], "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 160}}, "shared_object_id": 39}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 160]}}
├
Xiter

Ybeta_1

Zbeta_2
	[decay
\learning_rate!mг"mГ(m«)m»4m░5m▒Bm▓Cm│Lm┤MmхRmХSmи!vИ"v╣(v║)v╗4v╝5vйBvЙCv┐Lv└Mv┴Rv┬Sv├"
	optimizer
 "
trackable_list_wrapper
Ј
1
!2
"3
(4
)5
*6
+7
48
59
B10
C11
L12
M13
R14
S15"
trackable_list_wrapper
v
!0
"1
(2
)3
44
55
B6
C7
L8
M9
R10
S11"
trackable_list_wrapper
╬
]metrics
regularization_losses
	variables

^layers
_layer_metrics
`layer_regularization_losses
trainable_variables
anon_trainable_variables
─__call__
┼_default_save_signature
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
-
▀serving_default"
signature_map
 "
trackable_dict_wrapper
═
bstate_variables

c_table
d	keras_api"џ
_tf_keras_layerђ{"name": "string_lookup_1", "trainable": true, "expects_training_arg": false, "dtype": "string", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": true, "must_restore_from_config": true, "class_name": "StringLookup", "config": {"name": "string_lookup_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "string", "invert": false, "max_tokens": 5302, "num_oov_indices": 1, "oov_token": "[UNK]", "mask_token": "", "output_mode": "int", "pad_to_max_tokens": false, "vocabulary_size": 5302, "vocabulary": null, "encoding": "utf-8"}, "shared_object_id": 40}
"
_generic_user_object
':%	Х)d2embedding/embeddings
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
░
emetrics
regularization_losses
	variables

flayers
glayer_metrics
hlayer_regularization_losses
trainable_variables
inon_trainable_variables
К__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
jmetrics
regularization_losses
	variables

klayers
llayer_metrics
mlayer_regularization_losses
trainable_variables
nnon_trainable_variables
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
$:"dђ2conv1d/kernel
:ђ2conv1d/bias
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
░
ometrics
#regularization_losses
$	variables

players
qlayer_metrics
rlayer_regularization_losses
%trainable_variables
snon_trainable_variables
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
(:&ђ2batch_normalization/gamma
':%ђ2batch_normalization/beta
0:.ђ (2batch_normalization/moving_mean
4:2ђ (2#batch_normalization/moving_variance
 "
trackable_list_wrapper
<
(0
)1
*2
+3"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
░
tmetrics
,regularization_losses
-	variables

ulayers
vlayer_metrics
wlayer_regularization_losses
.trainable_variables
xnon_trainable_variables
═__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
ymetrics
0regularization_losses
1	variables

zlayers
{layer_metrics
|layer_regularization_losses
2trainable_variables
}non_trainable_variables
¤__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
':%ђђ2conv1d_1/kernel
:ђ2conv1d_1/bias
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
│
~metrics
6regularization_losses
7	variables

layers
ђlayer_metrics
 Ђlayer_regularization_losses
8trainable_variables
ѓnon_trainable_variables
Л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Ѓmetrics
:regularization_losses
;	variables
ёlayers
Ёlayer_metrics
 єlayer_regularization_losses
<trainable_variables
Єnon_trainable_variables
М__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
ѕmetrics
>regularization_losses
?	variables
Ѕlayers
іlayer_metrics
 Іlayer_regularization_losses
@trainable_variables
їnon_trainable_variables
Н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
 :
ђа2dense/kernel
:а2
dense/bias
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
х
Їmetrics
Dregularization_losses
E	variables
јlayers
Јlayer_metrics
 љlayer_regularization_losses
Ftrainable_variables
Љnon_trainable_variables
О__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
њmetrics
Hregularization_losses
I	variables
Њlayers
ћlayer_metrics
 Ћlayer_regularization_losses
Jtrainable_variables
ќnon_trainable_variables
┘__call__
+┌&call_and_return_all_conditional_losses
'┌"call_and_return_conditional_losses"
_generic_user_object
": 
аа2dense_1/kernel
:а2dense_1/bias
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
х
Ќmetrics
Nregularization_losses
O	variables
ўlayers
Ўlayer_metrics
 џlayer_regularization_losses
Ptrainable_variables
Џnon_trainable_variables
█__call__
+▄&call_and_return_all_conditional_losses
'▄"call_and_return_conditional_losses"
_generic_user_object
%:#	а2predictions/kernel
:2predictions/bias
 "
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
х
юmetrics
Tregularization_losses
U	variables
Юlayers
ъlayer_metrics
 Ъlayer_regularization_losses
Vtrainable_variables
аnon_trainable_variables
П__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
А0
б1"
trackable_list_wrapper
є
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
13"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
1
*2
+3"
trackable_list_wrapper
 "
trackable_dict_wrapper
T
Я_create_resource
р_initialize
Р_destroy_resourceR Z
tableсС
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
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
.
*0
+1"
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
п

Бtotal

цcount
Ц	variables
д	keras_api"Ю
_tf_keras_metricѓ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 41}
ю

Дtotal

еcount
Е
_fn_kwargs
ф	variables
Ф	keras_api"л
_tf_keras_metricх{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 31}
:  (2total
:  (2count
0
Б0
ц1"
trackable_list_wrapper
.
Ц	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Д0
е1"
trackable_list_wrapper
.
ф	variables"
_generic_user_object
):'dђ2Adam/conv1d/kernel/m
:ђ2Adam/conv1d/bias/m
-:+ђ2 Adam/batch_normalization/gamma/m
,:*ђ2Adam/batch_normalization/beta/m
,:*ђђ2Adam/conv1d_1/kernel/m
!:ђ2Adam/conv1d_1/bias/m
%:#
ђа2Adam/dense/kernel/m
:а2Adam/dense/bias/m
':%
аа2Adam/dense_1/kernel/m
 :а2Adam/dense_1/bias/m
*:(	а2Adam/predictions/kernel/m
#:!2Adam/predictions/bias/m
):'dђ2Adam/conv1d/kernel/v
:ђ2Adam/conv1d/bias/v
-:+ђ2 Adam/batch_normalization/gamma/v
,:*ђ2Adam/batch_normalization/beta/v
,:*ђђ2Adam/conv1d_1/kernel/v
!:ђ2Adam/conv1d_1/bias/v
%:#
ђа2Adam/dense/kernel/v
:а2Adam/dense/bias/v
':%
аа2Adam/dense_1/kernel/v
 :а2Adam/dense_1/bias/v
*:(	а2Adam/predictions/kernel/v
#:!2Adam/predictions/bias/v
Т2с
&__inference_model_layer_call_fn_361384
&__inference_model_layer_call_fn_362137
&__inference_model_layer_call_fn_362176
&__inference_model_layer_call_fn_361809└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▀2▄
!__inference__wrapped_model_360914Х
І▓Є
FullArgSpec
argsџ 
varargsjargs
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *&б#
!і
input_1         
м2¤
A__inference_model_layer_call_and_return_conditional_losses_362330
A__inference_model_layer_call_and_return_conditional_losses_362519
A__inference_model_layer_call_and_return_conditional_losses_361930
A__inference_model_layer_call_and_return_conditional_losses_362051└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
н2Л
*__inference_embedding_layer_call_fn_362526б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_embedding_layer_call_and_return_conditional_losses_362535б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ј2І
(__inference_dropout_layer_call_fn_362540
(__inference_dropout_layer_call_fn_362545┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
─2┴
C__inference_dropout_layer_call_and_return_conditional_losses_362550
C__inference_dropout_layer_call_and_return_conditional_losses_362562┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Л2╬
'__inference_conv1d_layer_call_fn_362571б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
В2ж
B__inference_conv1d_layer_call_and_return_conditional_losses_362587б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
њ2Ј
4__inference_batch_normalization_layer_call_fn_362600
4__inference_batch_normalization_layer_call_fn_362613
4__inference_batch_normalization_layer_call_fn_362626
4__inference_batch_normalization_layer_call_fn_362639┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
■2ч
O__inference_batch_normalization_layer_call_and_return_conditional_losses_362659
O__inference_batch_normalization_layer_call_and_return_conditional_losses_362693
O__inference_batch_normalization_layer_call_and_return_conditional_losses_362713
O__inference_batch_normalization_layer_call_and_return_conditional_losses_362747┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ѕ2є
.__inference_max_pooling1d_layer_call_fn_361091М
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *3б0
.і+'                           
ц2А
I__inference_max_pooling1d_layer_call_and_return_conditional_losses_361085М
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *3б0
.і+'                           
М2л
)__inference_conv1d_1_layer_call_fn_362756б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_conv1d_1_layer_call_and_return_conditional_losses_362772б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
њ2Ј
*__inference_dropout_1_layer_call_fn_362777
*__inference_dropout_1_layer_call_fn_362782┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╚2┼
E__inference_dropout_1_layer_call_and_return_conditional_losses_362787
E__inference_dropout_1_layer_call_and_return_conditional_losses_362799┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
љ2Ї
5__inference_global_max_pooling1d_layer_call_fn_361104М
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *3б0
.і+'                           
Ф2е
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_361098М
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *3б0
.і+'                           
л2═
&__inference_dense_layer_call_fn_362808б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
в2У
A__inference_dense_layer_call_and_return_conditional_losses_362819б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
њ2Ј
*__inference_dropout_2_layer_call_fn_362824
*__inference_dropout_2_layer_call_fn_362829┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╚2┼
E__inference_dropout_2_layer_call_and_return_conditional_losses_362834
E__inference_dropout_2_layer_call_and_return_conditional_losses_362846┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
м2¤
(__inference_dense_1_layer_call_fn_362855б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ь2Ж
C__inference_dense_1_layer_call_and_return_conditional_losses_362866б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_predictions_layer_call_fn_362875б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ы2Ь
G__inference_predictions_layer_call_and_return_conditional_losses_362886б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╦B╚
$__inference_signature_wrapper_362098input_1"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
▓2»
__inference__creator_362891Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
Х2│
__inference__initializer_362896Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
┤2▒
__inference__destroyer_362901Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
яB█
__inference_save_fn_362920checkpoint_key"ф
Ў▓Ћ
FullArgSpec
argsџ
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б	
і 
ёBЂ
__inference_restore_fn_362928restored_tensors_0restored_tensors_1"х
Ќ▓Њ
FullArgSpec
argsџ 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б
	і
	і	
	J
Const7
__inference__creator_362891б

б 
ф "і 9
__inference__destroyer_362901б

б 
ф "і ;
__inference__initializer_362896б

б 
ф "і Д
!__inference__wrapped_model_360914Ђcт!"+(*)45BCLMRS0б-
&б#
!і
input_1         
ф "9ф6
4
predictions%і"
predictions         Л
O__inference_batch_normalization_layer_call_and_return_conditional_losses_362659~+(*)Aб>
7б4
.і+
inputs                  ђ
p 
ф "3б0
)і&
0                  ђ
џ Л
O__inference_batch_normalization_layer_call_and_return_conditional_losses_362693~*+()Aб>
7б4
.і+
inputs                  ђ
p
ф "3б0
)і&
0                  ђ
џ ┴
O__inference_batch_normalization_layer_call_and_return_conditional_losses_362713n+(*)9б6
/б,
&і#
inputs         Ќђ
p 
ф "+б(
!і
0         Ќђ
џ ┴
O__inference_batch_normalization_layer_call_and_return_conditional_losses_362747n*+()9б6
/б,
&і#
inputs         Ќђ
p
ф "+б(
!і
0         Ќђ
џ Е
4__inference_batch_normalization_layer_call_fn_362600q+(*)Aб>
7б4
.і+
inputs                  ђ
p 
ф "&і#                  ђЕ
4__inference_batch_normalization_layer_call_fn_362613q*+()Aб>
7б4
.і+
inputs                  ђ
p
ф "&і#                  ђЎ
4__inference_batch_normalization_layer_call_fn_362626a+(*)9б6
/б,
&і#
inputs         Ќђ
p 
ф "і         ЌђЎ
4__inference_batch_normalization_layer_call_fn_362639a*+()9б6
/б,
&і#
inputs         Ќђ
p
ф "і         Ќђ░
D__inference_conv1d_1_layer_call_and_return_conditional_losses_362772h455б2
+б(
&і#
inputs         Іђ
ф "+б(
!і
0         Ёђ
џ ѕ
)__inference_conv1d_1_layer_call_fn_362756[455б2
+б(
&і#
inputs         Іђ
ф "і         ЁђГ
B__inference_conv1d_layer_call_and_return_conditional_losses_362587g!"4б1
*б'
%і"
inputs         ўd
ф "+б(
!і
0         Ќђ
џ Ё
'__inference_conv1d_layer_call_fn_362571Z!"4б1
*б'
%і"
inputs         ўd
ф "і         ЌђЦ
C__inference_dense_1_layer_call_and_return_conditional_losses_362866^LM0б-
&б#
!і
inputs         а
ф "&б#
і
0         а
џ }
(__inference_dense_1_layer_call_fn_362855QLM0б-
&б#
!і
inputs         а
ф "і         аБ
A__inference_dense_layer_call_and_return_conditional_losses_362819^BC0б-
&б#
!і
inputs         ђ
ф "&б#
і
0         а
џ {
&__inference_dense_layer_call_fn_362808QBC0б-
&б#
!і
inputs         ђ
ф "і         а▒
E__inference_dropout_1_layer_call_and_return_conditional_losses_362787h9б6
/б,
&і#
inputs         Ёђ
p 
ф "+б(
!і
0         Ёђ
џ ▒
E__inference_dropout_1_layer_call_and_return_conditional_losses_362799h9б6
/б,
&і#
inputs         Ёђ
p
ф "+б(
!і
0         Ёђ
џ Ѕ
*__inference_dropout_1_layer_call_fn_362777[9б6
/б,
&і#
inputs         Ёђ
p 
ф "і         ЁђЅ
*__inference_dropout_1_layer_call_fn_362782[9б6
/б,
&і#
inputs         Ёђ
p
ф "і         ЁђД
E__inference_dropout_2_layer_call_and_return_conditional_losses_362834^4б1
*б'
!і
inputs         а
p 
ф "&б#
і
0         а
џ Д
E__inference_dropout_2_layer_call_and_return_conditional_losses_362846^4б1
*б'
!і
inputs         а
p
ф "&б#
і
0         а
џ 
*__inference_dropout_2_layer_call_fn_362824Q4б1
*б'
!і
inputs         а
p 
ф "і         а
*__inference_dropout_2_layer_call_fn_362829Q4б1
*б'
!і
inputs         а
p
ф "і         аГ
C__inference_dropout_layer_call_and_return_conditional_losses_362550f8б5
.б+
%і"
inputs         ўd
p 
ф "*б'
 і
0         ўd
џ Г
C__inference_dropout_layer_call_and_return_conditional_losses_362562f8б5
.б+
%і"
inputs         ўd
p
ф "*б'
 і
0         ўd
џ Ё
(__inference_dropout_layer_call_fn_362540Y8б5
.б+
%і"
inputs         ўd
p 
ф "і         ўdЁ
(__inference_dropout_layer_call_fn_362545Y8б5
.б+
%і"
inputs         ўd
p
ф "і         ўdф
E__inference_embedding_layer_call_and_return_conditional_losses_362535a0б-
&б#
!і
inputs         ў	
ф "*б'
 і
0         ўd
џ ѓ
*__inference_embedding_layer_call_fn_362526T0б-
&б#
!і
inputs         ў	
ф "і         ўd╦
P__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_361098wEбB
;б8
6і3
inputs'                           
ф ".б+
$і!
0                  
џ Б
5__inference_global_max_pooling1d_layer_call_fn_361104jEбB
;б8
6і3
inputs'                           
ф "!і                  м
I__inference_max_pooling1d_layer_call_and_return_conditional_losses_361085ёEбB
;б8
6і3
inputs'                           
ф ";б8
1і.
0'                           
џ Е
.__inference_max_pooling1d_layer_call_fn_361091wEбB
;б8
6і3
inputs'                           
ф ".і+'                           ║
A__inference_model_layer_call_and_return_conditional_losses_361930ucт!"+(*)45BCLMRS8б5
.б+
!і
input_1         
p 

 
ф "%б"
і
0         
џ ║
A__inference_model_layer_call_and_return_conditional_losses_362051ucт!"*+()45BCLMRS8б5
.б+
!і
input_1         
p

 
ф "%б"
і
0         
џ ╣
A__inference_model_layer_call_and_return_conditional_losses_362330tcт!"+(*)45BCLMRS7б4
-б*
 і
inputs         
p 

 
ф "%б"
і
0         
џ ╣
A__inference_model_layer_call_and_return_conditional_losses_362519tcт!"*+()45BCLMRS7б4
-б*
 і
inputs         
p

 
ф "%б"
і
0         
џ њ
&__inference_model_layer_call_fn_361384hcт!"+(*)45BCLMRS8б5
.б+
!і
input_1         
p 

 
ф "і         њ
&__inference_model_layer_call_fn_361809hcт!"*+()45BCLMRS8б5
.б+
!і
input_1         
p

 
ф "і         Љ
&__inference_model_layer_call_fn_362137gcт!"+(*)45BCLMRS7б4
-б*
 і
inputs         
p 

 
ф "і         Љ
&__inference_model_layer_call_fn_362176gcт!"*+()45BCLMRS7б4
-б*
 і
inputs         
p

 
ф "і         е
G__inference_predictions_layer_call_and_return_conditional_losses_362886]RS0б-
&б#
!і
inputs         а
ф "%б"
і
0         
џ ђ
,__inference_predictions_layer_call_fn_362875PRS0б-
&б#
!і
inputs         а
ф "і         z
__inference_restore_fn_362928YcKбH
Aб>
і
restored_tensors_0
і
restored_tensors_1	
ф "і Ћ
__inference_save_fn_362920Шc&б#
б
і
checkpoint_key 
ф "╚џ─
`ф]

nameі
0/name 
#

slice_specі
0/slice_spec 

tensorі
0/tensor
`ф]

nameі
1/name 
#

slice_specі
1/slice_spec 

tensorі
1/tensor	х
$__inference_signature_wrapper_362098їcт!"+(*)45BCLMRS;б8
б 
1ф.
,
input_1!і
input_1         "9ф6
4
predictions%і"
predictions         