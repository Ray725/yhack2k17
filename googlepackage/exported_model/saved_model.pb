Ъ
§д
+
Abs
x"T
y"T"
Ttype:	
2	
9
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
p
	AssignAdd
ref"T

value"T

output_ref"T"
Ttype:
2	"
use_lockingbool( 
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
{
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
:
Minimum
x"T
y"T
z"T"
Ttype:	
2	
<
Mul
x"T
y"T
z"T"
Ttype:
2	
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
D
NotEqual
x"T
y"T
z
"
Ttype:
2	

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
5
Pow
x"T
y"T
z"T"
Ttype:
	2	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
,
Sqrt
x"T
y"T"
Ttype:	
2
0
Square
x"T
y"T"
Ttype:
	2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
9
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
,
Tanh
x"T
y"T"
Ttype:	
2
9
TanhGrad
y"T
dy"T
z"T"
Ttype:	
2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.4.02v1.4.0-rc1-11-g130a514Н
p
dense_1_inputPlaceholder*
dtype0*
shape:џџџџџџџџџ*'
_output_shapes
:џџџџџџџџџ
m
dense_1/random_uniform/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
_
dense_1/random_uniform/minConst*
dtype0*
valueB
 *јKЦО*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
dtype0*
valueB
 *јKЦ>*
_output_shapes
: 
Ї
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
dtype0*
seed2гыk*
seedБџх)*
T0*
_output_shapes

:
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 

dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0*
_output_shapes

:
~
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0*
_output_shapes

:

dense_1/kernel
VariableV2*
dtype0*
shape
:*
	container *
shared_name *
_output_shapes

:
М
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0*
_output_shapes

:
{
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0*
_output_shapes

:
Z
dense_1/ConstConst*
dtype0*
valueB*    *
_output_shapes
:
x
dense_1/bias
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes
:
Љ
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes
:
q
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0*
_output_shapes
:

dense_1/MatMulMatMuldense_1_inputdense_1/kernel/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџ

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
W
dense_1/TanhTanhdense_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
m
dense_2/random_uniform/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
_
dense_2/random_uniform/minConst*
dtype0*
valueB
 *Ќ\БО*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
dtype0*
valueB
 *Ќ\Б>*
_output_shapes
: 
Ј
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
dtype0*
seed2ЋЄѓ*
seedБџх)*
T0*
_output_shapes

:
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 

dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0*
_output_shapes

:
~
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes

:

dense_2/kernel
VariableV2*
dtype0*
shape
:*
	container *
shared_name *
_output_shapes

:
М
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0*
_output_shapes

:
{
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel*
T0*
_output_shapes

:
Z
dense_2/ConstConst*
dtype0*
valueB*    *
_output_shapes
:
x
dense_2/bias
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes
:
Љ
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes
:
q
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
T0*
_output_shapes
:

dense_2/MatMulMatMuldense_1/Tanhdense_2/kernel/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџ

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
W
dense_2/ReluReludense_2/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
m
dense_3/random_uniform/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
_
dense_3/random_uniform/minConst*
dtype0*
valueB
 *BушО*
_output_shapes
: 
_
dense_3/random_uniform/maxConst*
dtype0*
valueB
 *Bуш>*
_output_shapes
: 
Ї
$dense_3/random_uniform/RandomUniformRandomUniformdense_3/random_uniform/shape*
dtype0*
seed2ЄЦ5*
seedБџх)*
T0*
_output_shapes

:
z
dense_3/random_uniform/subSubdense_3/random_uniform/maxdense_3/random_uniform/min*
T0*
_output_shapes
: 

dense_3/random_uniform/mulMul$dense_3/random_uniform/RandomUniformdense_3/random_uniform/sub*
T0*
_output_shapes

:
~
dense_3/random_uniformAdddense_3/random_uniform/muldense_3/random_uniform/min*
T0*
_output_shapes

:

dense_3/kernel
VariableV2*
dtype0*
shape
:*
	container *
shared_name *
_output_shapes

:
М
dense_3/kernel/AssignAssigndense_3/kerneldense_3/random_uniform*
validate_shape(*!
_class
loc:@dense_3/kernel*
use_locking(*
T0*
_output_shapes

:
{
dense_3/kernel/readIdentitydense_3/kernel*!
_class
loc:@dense_3/kernel*
T0*
_output_shapes

:
Z
dense_3/ConstConst*
dtype0*
valueB*    *
_output_shapes
:
x
dense_3/bias
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes
:
Љ
dense_3/bias/AssignAssigndense_3/biasdense_3/Const*
validate_shape(*
_class
loc:@dense_3/bias*
use_locking(*
T0*
_output_shapes
:
q
dense_3/bias/readIdentitydense_3/bias*
_class
loc:@dense_3/bias*
T0*
_output_shapes
:

dense_3/MatMulMatMuldense_2/Reludense_3/kernel/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџ

dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
_
Adam/iterations/initial_valueConst*
dtype0	*
value	B	 R *
_output_shapes
: 
s
Adam/iterations
VariableV2*
dtype0	*
shape: *
	container *
shared_name *
_output_shapes
: 
О
Adam/iterations/AssignAssignAdam/iterationsAdam/iterations/initial_value*
validate_shape(*"
_class
loc:@Adam/iterations*
use_locking(*
T0	*
_output_shapes
: 
v
Adam/iterations/readIdentityAdam/iterations*"
_class
loc:@Adam/iterations*
T0	*
_output_shapes
: 
Z
Adam/lr/initial_valueConst*
dtype0*
valueB
 *o:*
_output_shapes
: 
k
Adam/lr
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 

Adam/lr/AssignAssignAdam/lrAdam/lr/initial_value*
validate_shape(*
_class
loc:@Adam/lr*
use_locking(*
T0*
_output_shapes
: 
^
Adam/lr/readIdentityAdam/lr*
_class
loc:@Adam/lr*
T0*
_output_shapes
: 
^
Adam/beta_1/initial_valueConst*
dtype0*
valueB
 *fff?*
_output_shapes
: 
o
Adam/beta_1
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
Ў
Adam/beta_1/AssignAssignAdam/beta_1Adam/beta_1/initial_value*
validate_shape(*
_class
loc:@Adam/beta_1*
use_locking(*
T0*
_output_shapes
: 
j
Adam/beta_1/readIdentityAdam/beta_1*
_class
loc:@Adam/beta_1*
T0*
_output_shapes
: 
^
Adam/beta_2/initial_valueConst*
dtype0*
valueB
 *wО?*
_output_shapes
: 
o
Adam/beta_2
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
Ў
Adam/beta_2/AssignAssignAdam/beta_2Adam/beta_2/initial_value*
validate_shape(*
_class
loc:@Adam/beta_2*
use_locking(*
T0*
_output_shapes
: 
j
Adam/beta_2/readIdentityAdam/beta_2*
_class
loc:@Adam/beta_2*
T0*
_output_shapes
: 
]
Adam/decay/initial_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
n

Adam/decay
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
Њ
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
validate_shape(*
_class
loc:@Adam/decay*
use_locking(*
T0*
_output_shapes
: 
g
Adam/decay/readIdentity
Adam/decay*
_class
loc:@Adam/decay*
T0*
_output_shapes
: 

dense_3_targetPlaceholder*
dtype0*%
shape:џџџџџџџџџџџџџџџџџџ*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
q
dense_3_sample_weightsPlaceholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
o
loss/dense_3_loss/subSubdense_3/BiasAdddense_3_target*
T0*'
_output_shapes
:џџџџџџџџџ
k
loss/dense_3_loss/SquareSquareloss/dense_3_loss/sub*
T0*'
_output_shapes
:џџџџџџџџџ
s
(loss/dense_3_loss/Mean/reduction_indicesConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
­
loss/dense_3_loss/MeanMeanloss/dense_3_loss/Square(loss/dense_3_loss/Mean/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0
m
*loss/dense_3_loss/Mean_1/reduction_indicesConst*
dtype0*
valueB *
_output_shapes
: 
Џ
loss/dense_3_loss/Mean_1Meanloss/dense_3_loss/Mean*loss/dense_3_loss/Mean_1/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0
|
loss/dense_3_loss/mulMulloss/dense_3_loss/Mean_1dense_3_sample_weights*
T0*#
_output_shapes
:џџџџџџџџџ
a
loss/dense_3_loss/NotEqual/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 

loss/dense_3_loss/NotEqualNotEqualdense_3_sample_weightsloss/dense_3_loss/NotEqual/y*
T0*#
_output_shapes
:џџџџџџџџџ
w
loss/dense_3_loss/CastCastloss/dense_3_loss/NotEqual*

DstT0*

SrcT0
*#
_output_shapes
:џџџџџџџџџ
a
loss/dense_3_loss/ConstConst*
dtype0*
valueB: *
_output_shapes
:

loss/dense_3_loss/Mean_2Meanloss/dense_3_loss/Castloss/dense_3_loss/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0

loss/dense_3_loss/divRealDivloss/dense_3_loss/mulloss/dense_3_loss/Mean_2*
T0*#
_output_shapes
:џџџџџџџџџ
c
loss/dense_3_loss/Const_1Const*
dtype0*
valueB: *
_output_shapes
:

loss/dense_3_loss/Mean_3Meanloss/dense_3_loss/divloss/dense_3_loss/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
O

loss/mul/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_3_loss/Mean_3*
T0*
_output_shapes
: 
y
metrics/mean_absolute_error/subSubdense_3/BiasAdddense_3_target*
T0*'
_output_shapes
:џџџџџџџџџ
y
metrics/mean_absolute_error/AbsAbsmetrics/mean_absolute_error/sub*
T0*'
_output_shapes
:џџџџџџџџџ
}
2metrics/mean_absolute_error/Mean/reduction_indicesConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
Ш
 metrics/mean_absolute_error/MeanMeanmetrics/mean_absolute_error/Abs2metrics/mean_absolute_error/Mean/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0
k
!metrics/mean_absolute_error/ConstConst*
dtype0*
valueB: *
_output_shapes
:
­
"metrics/mean_absolute_error/Mean_1Mean metrics/mean_absolute_error/Mean!metrics/mean_absolute_error/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
}
training/Adam/gradients/ShapeConst*
dtype0*
_class
loc:@loss/mul*
valueB *
_output_shapes
: 

training/Adam/gradients/ConstConst*
dtype0*
_class
loc:@loss/mul*
valueB
 *  ?*
_output_shapes
: 
 
training/Adam/gradients/FillFilltraining/Adam/gradients/Shapetraining/Adam/gradients/Const*
_class
loc:@loss/mul*
T0*
_output_shapes
: 

+training/Adam/gradients/loss/mul_grad/ShapeConst*
dtype0*
_class
loc:@loss/mul*
valueB *
_output_shapes
: 

-training/Adam/gradients/loss/mul_grad/Shape_1Const*
dtype0*
_class
loc:@loss/mul*
valueB *
_output_shapes
: 

;training/Adam/gradients/loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+training/Adam/gradients/loss/mul_grad/Shape-training/Adam/gradients/loss/mul_grad/Shape_1*
_class
loc:@loss/mul*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
І
)training/Adam/gradients/loss/mul_grad/mulMultraining/Adam/gradients/Fillloss/dense_3_loss/Mean_3*
_class
loc:@loss/mul*
T0*
_output_shapes
: 
ѕ
)training/Adam/gradients/loss/mul_grad/SumSum)training/Adam/gradients/loss/mul_grad/mul;training/Adam/gradients/loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@loss/mul*

Tidx0*
	keep_dims( *
T0
м
-training/Adam/gradients/loss/mul_grad/ReshapeReshape)training/Adam/gradients/loss/mul_grad/Sum+training/Adam/gradients/loss/mul_grad/Shape*
_class
loc:@loss/mul*
Tshape0*
_output_shapes
: *
T0

+training/Adam/gradients/loss/mul_grad/mul_1Mul
loss/mul/xtraining/Adam/gradients/Fill*
_class
loc:@loss/mul*
T0*
_output_shapes
: 
ћ
+training/Adam/gradients/loss/mul_grad/Sum_1Sum+training/Adam/gradients/loss/mul_grad/mul_1=training/Adam/gradients/loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class
loc:@loss/mul*

Tidx0*
	keep_dims( *
T0
т
/training/Adam/gradients/loss/mul_grad/Reshape_1Reshape+training/Adam/gradients/loss/mul_grad/Sum_1-training/Adam/gradients/loss/mul_grad/Shape_1*
_class
loc:@loss/mul*
Tshape0*
_output_shapes
: *
T0
К
Ctraining/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Reshape/shapeConst*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
valueB:*
_output_shapes
:

=training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/ReshapeReshape/training/Adam/gradients/loss/mul_grad/Reshape_1Ctraining/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Reshape/shape*+
_class!
loc:@loss/dense_3_loss/Mean_3*
Tshape0*
_output_shapes
:*
T0
Н
;training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/ShapeShapeloss/dense_3_loss/div*
out_type0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
T0*
_output_shapes
:
Ћ
:training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/TileTile=training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Reshape;training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Shape*

Tmultiples0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
T0*#
_output_shapes
:џџџџџџџџџ
П
=training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Shape_1Shapeloss/dense_3_loss/div*
out_type0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
T0*
_output_shapes
:
­
=training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Shape_2Const*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
valueB *
_output_shapes
: 
В
;training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/ConstConst*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
valueB: *
_output_shapes
:
Љ
:training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/ProdProd=training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Shape_1;training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Const*
_output_shapes
: *+
_class!
loc:@loss/dense_3_loss/Mean_3*

Tidx0*
	keep_dims( *
T0
Д
=training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Const_1Const*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
valueB: *
_output_shapes
:
­
<training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Prod_1Prod=training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Shape_2=training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Const_1*
_output_shapes
: *+
_class!
loc:@loss/dense_3_loss/Mean_3*

Tidx0*
	keep_dims( *
T0
Ў
?training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Maximum/yConst*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_3*
value	B :*
_output_shapes
: 

=training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/MaximumMaximum<training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Prod_1?training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Maximum/y*+
_class!
loc:@loss/dense_3_loss/Mean_3*
T0*
_output_shapes
: 

>training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Prod=training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Maximum*+
_class!
loc:@loss/dense_3_loss/Mean_3*
T0*
_output_shapes
: 
п
:training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/CastCast>training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/floordiv*

DstT0*+
_class!
loc:@loss/dense_3_loss/Mean_3*

SrcT0*
_output_shapes
: 

=training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/truedivRealDiv:training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Tile:training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/Cast*+
_class!
loc:@loss/dense_3_loss/Mean_3*
T0*#
_output_shapes
:џџџџџџџџџ
З
8training/Adam/gradients/loss/dense_3_loss/div_grad/ShapeShapeloss/dense_3_loss/mul*
out_type0*(
_class
loc:@loss/dense_3_loss/div*
T0*
_output_shapes
:
Ї
:training/Adam/gradients/loss/dense_3_loss/div_grad/Shape_1Const*
dtype0*(
_class
loc:@loss/dense_3_loss/div*
valueB *
_output_shapes
: 
О
Htraining/Adam/gradients/loss/dense_3_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_3_loss/div_grad/Shape:training/Adam/gradients/loss/dense_3_loss/div_grad/Shape_1*(
_class
loc:@loss/dense_3_loss/div*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
і
:training/Adam/gradients/loss/dense_3_loss/div_grad/RealDivRealDiv=training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/truedivloss/dense_3_loss/Mean_2*(
_class
loc:@loss/dense_3_loss/div*
T0*#
_output_shapes
:џџџџџџџџџ
­
6training/Adam/gradients/loss/dense_3_loss/div_grad/SumSum:training/Adam/gradients/loss/dense_3_loss/div_grad/RealDivHtraining/Adam/gradients/loss/dense_3_loss/div_grad/BroadcastGradientArgs*
_output_shapes
:*(
_class
loc:@loss/dense_3_loss/div*

Tidx0*
	keep_dims( *
T0

:training/Adam/gradients/loss/dense_3_loss/div_grad/ReshapeReshape6training/Adam/gradients/loss/dense_3_loss/div_grad/Sum8training/Adam/gradients/loss/dense_3_loss/div_grad/Shape*(
_class
loc:@loss/dense_3_loss/div*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0
Ќ
6training/Adam/gradients/loss/dense_3_loss/div_grad/NegNegloss/dense_3_loss/mul*(
_class
loc:@loss/dense_3_loss/div*
T0*#
_output_shapes
:џџџџџџџџџ
ё
<training/Adam/gradients/loss/dense_3_loss/div_grad/RealDiv_1RealDiv6training/Adam/gradients/loss/dense_3_loss/div_grad/Negloss/dense_3_loss/Mean_2*(
_class
loc:@loss/dense_3_loss/div*
T0*#
_output_shapes
:џџџџџџџџџ
ї
<training/Adam/gradients/loss/dense_3_loss/div_grad/RealDiv_2RealDiv<training/Adam/gradients/loss/dense_3_loss/div_grad/RealDiv_1loss/dense_3_loss/Mean_2*(
_class
loc:@loss/dense_3_loss/div*
T0*#
_output_shapes
:џџџџџџџџџ

6training/Adam/gradients/loss/dense_3_loss/div_grad/mulMul=training/Adam/gradients/loss/dense_3_loss/Mean_3_grad/truediv<training/Adam/gradients/loss/dense_3_loss/div_grad/RealDiv_2*(
_class
loc:@loss/dense_3_loss/div*
T0*#
_output_shapes
:џџџџџџџџџ
­
8training/Adam/gradients/loss/dense_3_loss/div_grad/Sum_1Sum6training/Adam/gradients/loss/dense_3_loss/div_grad/mulJtraining/Adam/gradients/loss/dense_3_loss/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*(
_class
loc:@loss/dense_3_loss/div*

Tidx0*
	keep_dims( *
T0

<training/Adam/gradients/loss/dense_3_loss/div_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_3_loss/div_grad/Sum_1:training/Adam/gradients/loss/dense_3_loss/div_grad/Shape_1*(
_class
loc:@loss/dense_3_loss/div*
Tshape0*
_output_shapes
: *
T0
К
8training/Adam/gradients/loss/dense_3_loss/mul_grad/ShapeShapeloss/dense_3_loss/Mean_1*
out_type0*(
_class
loc:@loss/dense_3_loss/mul*
T0*
_output_shapes
:
К
:training/Adam/gradients/loss/dense_3_loss/mul_grad/Shape_1Shapedense_3_sample_weights*
out_type0*(
_class
loc:@loss/dense_3_loss/mul*
T0*
_output_shapes
:
О
Htraining/Adam/gradients/loss/dense_3_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_3_loss/mul_grad/Shape:training/Adam/gradients/loss/dense_3_loss/mul_grad/Shape_1*(
_class
loc:@loss/dense_3_loss/mul*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
щ
6training/Adam/gradients/loss/dense_3_loss/mul_grad/mulMul:training/Adam/gradients/loss/dense_3_loss/div_grad/Reshapedense_3_sample_weights*(
_class
loc:@loss/dense_3_loss/mul*
T0*#
_output_shapes
:џџџџџџџџџ
Љ
6training/Adam/gradients/loss/dense_3_loss/mul_grad/SumSum6training/Adam/gradients/loss/dense_3_loss/mul_grad/mulHtraining/Adam/gradients/loss/dense_3_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*(
_class
loc:@loss/dense_3_loss/mul*

Tidx0*
	keep_dims( *
T0

:training/Adam/gradients/loss/dense_3_loss/mul_grad/ReshapeReshape6training/Adam/gradients/loss/dense_3_loss/mul_grad/Sum8training/Adam/gradients/loss/dense_3_loss/mul_grad/Shape*(
_class
loc:@loss/dense_3_loss/mul*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0
э
8training/Adam/gradients/loss/dense_3_loss/mul_grad/mul_1Mulloss/dense_3_loss/Mean_1:training/Adam/gradients/loss/dense_3_loss/div_grad/Reshape*(
_class
loc:@loss/dense_3_loss/mul*
T0*#
_output_shapes
:џџџџџџџџџ
Џ
8training/Adam/gradients/loss/dense_3_loss/mul_grad/Sum_1Sum8training/Adam/gradients/loss/dense_3_loss/mul_grad/mul_1Jtraining/Adam/gradients/loss/dense_3_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*(
_class
loc:@loss/dense_3_loss/mul*

Tidx0*
	keep_dims( *
T0
Ѓ
<training/Adam/gradients/loss/dense_3_loss/mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_3_loss/mul_grad/Sum_1:training/Adam/gradients/loss/dense_3_loss/mul_grad/Shape_1*(
_class
loc:@loss/dense_3_loss/mul*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0
О
;training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/ShapeShapeloss/dense_3_loss/Mean*
out_type0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
T0*
_output_shapes
:
Љ
:training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/SizeConst*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
value	B :*
_output_shapes
: 
ј
9training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/addAdd*loss/dense_3_loss/Mean_1/reduction_indices:training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Size*+
_class!
loc:@loss/dense_3_loss/Mean_1*
T0*
_output_shapes
: 

9training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/modFloorMod9training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/add:training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Size*+
_class!
loc:@loss/dense_3_loss/Mean_1*
T0*
_output_shapes
: 
Д
=training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Shape_1Const*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
valueB: *
_output_shapes
:
А
Atraining/Adam/gradients/loss/dense_3_loss/Mean_1_grad/range/startConst*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
value	B : *
_output_shapes
: 
А
Atraining/Adam/gradients/loss/dense_3_loss/Mean_1_grad/range/deltaConst*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
value	B :*
_output_shapes
: 
л
;training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/rangeRangeAtraining/Adam/gradients/loss/dense_3_loss/Mean_1_grad/range/start:training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/SizeAtraining/Adam/gradients/loss/dense_3_loss/Mean_1_grad/range/delta*+
_class!
loc:@loss/dense_3_loss/Mean_1*

Tidx0*
_output_shapes
:
Џ
@training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Fill/valueConst*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
value	B :*
_output_shapes
: 

:training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/FillFill=training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Shape_1@training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Fill/value*+
_class!
loc:@loss/dense_3_loss/Mean_1*
T0*
_output_shapes
: 
Љ
Ctraining/Adam/gradients/loss/dense_3_loss/Mean_1_grad/DynamicStitchDynamicStitch;training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/range9training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/mod;training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Shape:training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Fill*+
_class!
loc:@loss/dense_3_loss/Mean_1*
T0*#
_output_shapes
:џџџџџџџџџ*
N
Ў
?training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Maximum/yConst*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
value	B :*
_output_shapes
: 
Љ
=training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/MaximumMaximumCtraining/Adam/gradients/loss/dense_3_loss/Mean_1_grad/DynamicStitch?training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Maximum/y*+
_class!
loc:@loss/dense_3_loss/Mean_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ё
>training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/floordivFloorDiv;training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Shape=training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Maximum*+
_class!
loc:@loss/dense_3_loss/Mean_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ї
=training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/ReshapeReshape:training/Adam/gradients/loss/dense_3_loss/mul_grad/ReshapeCtraining/Adam/gradients/loss/dense_3_loss/Mean_1_grad/DynamicStitch*+
_class!
loc:@loss/dense_3_loss/Mean_1*
Tshape0*
_output_shapes
:*
T0
Ѓ
:training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/TileTile=training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Reshape>training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/floordiv*

Tmultiples0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
T0*
_output_shapes
:
Р
=training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Shape_2Shapeloss/dense_3_loss/Mean*
out_type0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
T0*
_output_shapes
:
Т
=training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Shape_3Shapeloss/dense_3_loss/Mean_1*
out_type0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
T0*
_output_shapes
:
В
;training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/ConstConst*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
valueB: *
_output_shapes
:
Љ
:training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/ProdProd=training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Shape_2;training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Const*
_output_shapes
: *+
_class!
loc:@loss/dense_3_loss/Mean_1*

Tidx0*
	keep_dims( *
T0
Д
=training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Const_1Const*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
valueB: *
_output_shapes
:
­
<training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Prod_1Prod=training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Shape_3=training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Const_1*
_output_shapes
: *+
_class!
loc:@loss/dense_3_loss/Mean_1*

Tidx0*
	keep_dims( *
T0
А
Atraining/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Maximum_1/yConst*
dtype0*+
_class!
loc:@loss/dense_3_loss/Mean_1*
value	B :*
_output_shapes
: 

?training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Maximum_1Maximum<training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Prod_1Atraining/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Maximum_1/y*+
_class!
loc:@loss/dense_3_loss/Mean_1*
T0*
_output_shapes
: 

@training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/floordiv_1FloorDiv:training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Prod?training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Maximum_1*+
_class!
loc:@loss/dense_3_loss/Mean_1*
T0*
_output_shapes
: 
с
:training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/CastCast@training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/floordiv_1*

DstT0*+
_class!
loc:@loss/dense_3_loss/Mean_1*

SrcT0*
_output_shapes
: 

=training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/truedivRealDiv:training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Tile:training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/Cast*+
_class!
loc:@loss/dense_3_loss/Mean_1*
T0*#
_output_shapes
:џџџџџџџџџ
М
9training/Adam/gradients/loss/dense_3_loss/Mean_grad/ShapeShapeloss/dense_3_loss/Square*
out_type0*)
_class
loc:@loss/dense_3_loss/Mean*
T0*
_output_shapes
:
Ѕ
8training/Adam/gradients/loss/dense_3_loss/Mean_grad/SizeConst*
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
value	B :*
_output_shapes
: 
ю
7training/Adam/gradients/loss/dense_3_loss/Mean_grad/addAdd(loss/dense_3_loss/Mean/reduction_indices8training/Adam/gradients/loss/dense_3_loss/Mean_grad/Size*)
_class
loc:@loss/dense_3_loss/Mean*
T0*
_output_shapes
: 

7training/Adam/gradients/loss/dense_3_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/dense_3_loss/Mean_grad/add8training/Adam/gradients/loss/dense_3_loss/Mean_grad/Size*)
_class
loc:@loss/dense_3_loss/Mean*
T0*
_output_shapes
: 
Љ
;training/Adam/gradients/loss/dense_3_loss/Mean_grad/Shape_1Const*
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
valueB *
_output_shapes
: 
Ќ
?training/Adam/gradients/loss/dense_3_loss/Mean_grad/range/startConst*
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
value	B : *
_output_shapes
: 
Ќ
?training/Adam/gradients/loss/dense_3_loss/Mean_grad/range/deltaConst*
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
value	B :*
_output_shapes
: 
б
9training/Adam/gradients/loss/dense_3_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/dense_3_loss/Mean_grad/range/start8training/Adam/gradients/loss/dense_3_loss/Mean_grad/Size?training/Adam/gradients/loss/dense_3_loss/Mean_grad/range/delta*)
_class
loc:@loss/dense_3_loss/Mean*

Tidx0*
_output_shapes
:
Ћ
>training/Adam/gradients/loss/dense_3_loss/Mean_grad/Fill/valueConst*
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
value	B :*
_output_shapes
: 

8training/Adam/gradients/loss/dense_3_loss/Mean_grad/FillFill;training/Adam/gradients/loss/dense_3_loss/Mean_grad/Shape_1>training/Adam/gradients/loss/dense_3_loss/Mean_grad/Fill/value*)
_class
loc:@loss/dense_3_loss/Mean*
T0*
_output_shapes
: 

Atraining/Adam/gradients/loss/dense_3_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/dense_3_loss/Mean_grad/range7training/Adam/gradients/loss/dense_3_loss/Mean_grad/mod9training/Adam/gradients/loss/dense_3_loss/Mean_grad/Shape8training/Adam/gradients/loss/dense_3_loss/Mean_grad/Fill*)
_class
loc:@loss/dense_3_loss/Mean*
T0*#
_output_shapes
:џџџџџџџџџ*
N
Њ
=training/Adam/gradients/loss/dense_3_loss/Mean_grad/Maximum/yConst*
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
value	B :*
_output_shapes
: 
Ё
;training/Adam/gradients/loss/dense_3_loss/Mean_grad/MaximumMaximumAtraining/Adam/gradients/loss/dense_3_loss/Mean_grad/DynamicStitch=training/Adam/gradients/loss/dense_3_loss/Mean_grad/Maximum/y*)
_class
loc:@loss/dense_3_loss/Mean*
T0*#
_output_shapes
:џџџџџџџџџ

<training/Adam/gradients/loss/dense_3_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/dense_3_loss/Mean_grad/Shape;training/Adam/gradients/loss/dense_3_loss/Mean_grad/Maximum*)
_class
loc:@loss/dense_3_loss/Mean*
T0*
_output_shapes
:
Є
;training/Adam/gradients/loss/dense_3_loss/Mean_grad/ReshapeReshape=training/Adam/gradients/loss/dense_3_loss/Mean_1_grad/truedivAtraining/Adam/gradients/loss/dense_3_loss/Mean_grad/DynamicStitch*)
_class
loc:@loss/dense_3_loss/Mean*
Tshape0*
_output_shapes
:*
T0
Г
8training/Adam/gradients/loss/dense_3_loss/Mean_grad/TileTile;training/Adam/gradients/loss/dense_3_loss/Mean_grad/Reshape<training/Adam/gradients/loss/dense_3_loss/Mean_grad/floordiv*

Tmultiples0*)
_class
loc:@loss/dense_3_loss/Mean*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
О
;training/Adam/gradients/loss/dense_3_loss/Mean_grad/Shape_2Shapeloss/dense_3_loss/Square*
out_type0*)
_class
loc:@loss/dense_3_loss/Mean*
T0*
_output_shapes
:
М
;training/Adam/gradients/loss/dense_3_loss/Mean_grad/Shape_3Shapeloss/dense_3_loss/Mean*
out_type0*)
_class
loc:@loss/dense_3_loss/Mean*
T0*
_output_shapes
:
Ў
9training/Adam/gradients/loss/dense_3_loss/Mean_grad/ConstConst*
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
valueB: *
_output_shapes
:
Ё
8training/Adam/gradients/loss/dense_3_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/dense_3_loss/Mean_grad/Shape_29training/Adam/gradients/loss/dense_3_loss/Mean_grad/Const*
_output_shapes
: *)
_class
loc:@loss/dense_3_loss/Mean*

Tidx0*
	keep_dims( *
T0
А
;training/Adam/gradients/loss/dense_3_loss/Mean_grad/Const_1Const*
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
valueB: *
_output_shapes
:
Ѕ
:training/Adam/gradients/loss/dense_3_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/dense_3_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/dense_3_loss/Mean_grad/Const_1*
_output_shapes
: *)
_class
loc:@loss/dense_3_loss/Mean*

Tidx0*
	keep_dims( *
T0
Ќ
?training/Adam/gradients/loss/dense_3_loss/Mean_grad/Maximum_1/yConst*
dtype0*)
_class
loc:@loss/dense_3_loss/Mean*
value	B :*
_output_shapes
: 

=training/Adam/gradients/loss/dense_3_loss/Mean_grad/Maximum_1Maximum:training/Adam/gradients/loss/dense_3_loss/Mean_grad/Prod_1?training/Adam/gradients/loss/dense_3_loss/Mean_grad/Maximum_1/y*)
_class
loc:@loss/dense_3_loss/Mean*
T0*
_output_shapes
: 

>training/Adam/gradients/loss/dense_3_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/dense_3_loss/Mean_grad/Prod=training/Adam/gradients/loss/dense_3_loss/Mean_grad/Maximum_1*)
_class
loc:@loss/dense_3_loss/Mean*
T0*
_output_shapes
: 
л
8training/Adam/gradients/loss/dense_3_loss/Mean_grad/CastCast>training/Adam/gradients/loss/dense_3_loss/Mean_grad/floordiv_1*

DstT0*)
_class
loc:@loss/dense_3_loss/Mean*

SrcT0*
_output_shapes
: 

;training/Adam/gradients/loss/dense_3_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/dense_3_loss/Mean_grad/Tile8training/Adam/gradients/loss/dense_3_loss/Mean_grad/Cast*)
_class
loc:@loss/dense_3_loss/Mean*
T0*'
_output_shapes
:џџџџџџџџџ
ы
;training/Adam/gradients/loss/dense_3_loss/Square_grad/mul/xConst<^training/Adam/gradients/loss/dense_3_loss/Mean_grad/truediv*
dtype0*+
_class!
loc:@loss/dense_3_loss/Square*
valueB
 *   @*
_output_shapes
: 
ѓ
9training/Adam/gradients/loss/dense_3_loss/Square_grad/mulMul;training/Adam/gradients/loss/dense_3_loss/Square_grad/mul/xloss/dense_3_loss/sub*+
_class!
loc:@loss/dense_3_loss/Square*
T0*'
_output_shapes
:џџџџџџџџџ

;training/Adam/gradients/loss/dense_3_loss/Square_grad/mul_1Mul;training/Adam/gradients/loss/dense_3_loss/Mean_grad/truediv9training/Adam/gradients/loss/dense_3_loss/Square_grad/mul*+
_class!
loc:@loss/dense_3_loss/Square*
T0*'
_output_shapes
:џџџџџџџџџ
Б
8training/Adam/gradients/loss/dense_3_loss/sub_grad/ShapeShapedense_3/BiasAdd*
out_type0*(
_class
loc:@loss/dense_3_loss/sub*
T0*
_output_shapes
:
В
:training/Adam/gradients/loss/dense_3_loss/sub_grad/Shape_1Shapedense_3_target*
out_type0*(
_class
loc:@loss/dense_3_loss/sub*
T0*
_output_shapes
:
О
Htraining/Adam/gradients/loss/dense_3_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_3_loss/sub_grad/Shape:training/Adam/gradients/loss/dense_3_loss/sub_grad/Shape_1*(
_class
loc:@loss/dense_3_loss/sub*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ў
6training/Adam/gradients/loss/dense_3_loss/sub_grad/SumSum;training/Adam/gradients/loss/dense_3_loss/Square_grad/mul_1Htraining/Adam/gradients/loss/dense_3_loss/sub_grad/BroadcastGradientArgs*
_output_shapes
:*(
_class
loc:@loss/dense_3_loss/sub*

Tidx0*
	keep_dims( *
T0
Ё
:training/Adam/gradients/loss/dense_3_loss/sub_grad/ReshapeReshape6training/Adam/gradients/loss/dense_3_loss/sub_grad/Sum8training/Adam/gradients/loss/dense_3_loss/sub_grad/Shape*(
_class
loc:@loss/dense_3_loss/sub*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0
В
8training/Adam/gradients/loss/dense_3_loss/sub_grad/Sum_1Sum;training/Adam/gradients/loss/dense_3_loss/Square_grad/mul_1Jtraining/Adam/gradients/loss/dense_3_loss/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*(
_class
loc:@loss/dense_3_loss/sub*

Tidx0*
	keep_dims( *
T0
Ф
6training/Adam/gradients/loss/dense_3_loss/sub_grad/NegNeg8training/Adam/gradients/loss/dense_3_loss/sub_grad/Sum_1*(
_class
loc:@loss/dense_3_loss/sub*
T0*
_output_shapes
:
Ў
<training/Adam/gradients/loss/dense_3_loss/sub_grad/Reshape_1Reshape6training/Adam/gradients/loss/dense_3_loss/sub_grad/Neg:training/Adam/gradients/loss/dense_3_loss/sub_grad/Shape_1*(
_class
loc:@loss/dense_3_loss/sub*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0
у
8training/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad:training/Adam/gradients/loss/dense_3_loss/sub_grad/Reshape*"
_class
loc:@dense_3/BiasAdd*
data_formatNHWC*
_output_shapes
:*
T0

2training/Adam/gradients/dense_3/MatMul_grad/MatMulMatMul:training/Adam/gradients/loss/dense_3_loss/sub_grad/Reshapedense_3/kernel/read*
transpose_b(*
transpose_a( *!
_class
loc:@dense_3/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ
њ
4training/Adam/gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_2/Relu:training/Adam/gradients/loss/dense_3_loss/sub_grad/Reshape*
transpose_b( *
transpose_a(*!
_class
loc:@dense_3/MatMul*
T0*
_output_shapes

:
г
2training/Adam/gradients/dense_2/Relu_grad/ReluGradReluGrad2training/Adam/gradients/dense_3/MatMul_grad/MatMuldense_2/Relu*
_class
loc:@dense_2/Relu*
T0*'
_output_shapes
:џџџџџџџџџ
л
8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_2/Relu_grad/ReluGrad*"
_class
loc:@dense_2/BiasAdd*
data_formatNHWC*
_output_shapes
:*
T0

2training/Adam/gradients/dense_2/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_2/Relu_grad/ReluGraddense_2/kernel/read*
transpose_b(*
transpose_a( *!
_class
loc:@dense_2/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ
ђ
4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldense_1/Tanh2training/Adam/gradients/dense_2/Relu_grad/ReluGrad*
transpose_b( *
transpose_a(*!
_class
loc:@dense_2/MatMul*
T0*
_output_shapes

:
г
2training/Adam/gradients/dense_1/Tanh_grad/TanhGradTanhGraddense_1/Tanh2training/Adam/gradients/dense_2/MatMul_grad/MatMul*
_class
loc:@dense_1/Tanh*
T0*'
_output_shapes
:џџџџџџџџџ
л
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_1/Tanh_grad/TanhGrad*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes
:*
T0

2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_1/Tanh_grad/TanhGraddense_1/kernel/read*
transpose_b(*
transpose_a( *!
_class
loc:@dense_1/MatMul*
T0*'
_output_shapes
:џџџџџџџџџ
ѓ
4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMuldense_1_input2training/Adam/gradients/dense_1/Tanh_grad/TanhGrad*
transpose_b( *
transpose_a(*!
_class
loc:@dense_1/MatMul*
T0*
_output_shapes

:
_
training/Adam/AssignAdd/valueConst*
dtype0	*
value	B	 R*
_output_shapes
: 
Ќ
training/Adam/AssignAdd	AssignAddAdam/iterationstraining/Adam/AssignAdd/value*"
_class
loc:@Adam/iterations*
use_locking( *
T0	*
_output_shapes
: 
`
training/Adam/CastCastAdam/iterations/read*

DstT0*

SrcT0	*
_output_shapes
: 
X
training/Adam/add/yConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
^
training/Adam/PowPowAdam/beta_2/readtraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
X
training/Adam/ConstConst*
dtype0*
valueB
 *    *
_output_shapes
: 
Z
training/Adam/Const_1Const*
dtype0*
valueB
 *  *
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_1*
T0*
_output_shapes
: 

training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
T0*
_output_shapes
: 
`
training/Adam/Pow_1PowAdam/beta_1/readtraining/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
f
training/Adam/divRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
Z
training/Adam/mulMulAdam/lr/readtraining/Adam/div*
T0*
_output_shapes
: 
j
training/Adam/Const_2Const*
dtype0*
valueB*    *
_output_shapes

:

training/Adam/Variable
VariableV2*
dtype0*
shape
:*
	container *
shared_name *
_output_shapes

:
г
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/Const_2*
validate_shape(*)
_class
loc:@training/Adam/Variable*
use_locking(*
T0*
_output_shapes

:

training/Adam/Variable/readIdentitytraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
T0*
_output_shapes

:
b
training/Adam/Const_3Const*
dtype0*
valueB*    *
_output_shapes
:

training/Adam/Variable_1
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes
:
е
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/Const_3*
validate_shape(*+
_class!
loc:@training/Adam/Variable_1*
use_locking(*
T0*
_output_shapes
:

training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
T0*
_output_shapes
:
j
training/Adam/Const_4Const*
dtype0*
valueB*    *
_output_shapes

:

training/Adam/Variable_2
VariableV2*
dtype0*
shape
:*
	container *
shared_name *
_output_shapes

:
й
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/Const_4*
validate_shape(*+
_class!
loc:@training/Adam/Variable_2*
use_locking(*
T0*
_output_shapes

:

training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
T0*
_output_shapes

:
b
training/Adam/Const_5Const*
dtype0*
valueB*    *
_output_shapes
:

training/Adam/Variable_3
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes
:
е
training/Adam/Variable_3/AssignAssigntraining/Adam/Variable_3training/Adam/Const_5*
validate_shape(*+
_class!
loc:@training/Adam/Variable_3*
use_locking(*
T0*
_output_shapes
:

training/Adam/Variable_3/readIdentitytraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
T0*
_output_shapes
:
j
training/Adam/Const_6Const*
dtype0*
valueB*    *
_output_shapes

:

training/Adam/Variable_4
VariableV2*
dtype0*
shape
:*
	container *
shared_name *
_output_shapes

:
й
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/Const_6*
validate_shape(*+
_class!
loc:@training/Adam/Variable_4*
use_locking(*
T0*
_output_shapes

:

training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
T0*
_output_shapes

:
b
training/Adam/Const_7Const*
dtype0*
valueB*    *
_output_shapes
:

training/Adam/Variable_5
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes
:
е
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/Const_7*
validate_shape(*+
_class!
loc:@training/Adam/Variable_5*
use_locking(*
T0*
_output_shapes
:

training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
T0*
_output_shapes
:
j
training/Adam/Const_8Const*
dtype0*
valueB*    *
_output_shapes

:

training/Adam/Variable_6
VariableV2*
dtype0*
shape
:*
	container *
shared_name *
_output_shapes

:
й
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/Const_8*
validate_shape(*+
_class!
loc:@training/Adam/Variable_6*
use_locking(*
T0*
_output_shapes

:

training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
T0*
_output_shapes

:
b
training/Adam/Const_9Const*
dtype0*
valueB*    *
_output_shapes
:

training/Adam/Variable_7
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes
:
е
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/Const_9*
validate_shape(*+
_class!
loc:@training/Adam/Variable_7*
use_locking(*
T0*
_output_shapes
:

training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
T0*
_output_shapes
:
k
training/Adam/Const_10Const*
dtype0*
valueB*    *
_output_shapes

:

training/Adam/Variable_8
VariableV2*
dtype0*
shape
:*
	container *
shared_name *
_output_shapes

:
к
training/Adam/Variable_8/AssignAssigntraining/Adam/Variable_8training/Adam/Const_10*
validate_shape(*+
_class!
loc:@training/Adam/Variable_8*
use_locking(*
T0*
_output_shapes

:

training/Adam/Variable_8/readIdentitytraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
T0*
_output_shapes

:
c
training/Adam/Const_11Const*
dtype0*
valueB*    *
_output_shapes
:

training/Adam/Variable_9
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes
:
ж
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/Const_11*
validate_shape(*+
_class!
loc:@training/Adam/Variable_9*
use_locking(*
T0*
_output_shapes
:

training/Adam/Variable_9/readIdentitytraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
T0*
_output_shapes
:
k
training/Adam/Const_12Const*
dtype0*
valueB*    *
_output_shapes

:

training/Adam/Variable_10
VariableV2*
dtype0*
shape
:*
	container *
shared_name *
_output_shapes

:
н
 training/Adam/Variable_10/AssignAssigntraining/Adam/Variable_10training/Adam/Const_12*
validate_shape(*,
_class"
 loc:@training/Adam/Variable_10*
use_locking(*
T0*
_output_shapes

:

training/Adam/Variable_10/readIdentitytraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
T0*
_output_shapes

:
c
training/Adam/Const_13Const*
dtype0*
valueB*    *
_output_shapes
:

training/Adam/Variable_11
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes
:
й
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/Const_13*
validate_shape(*,
_class"
 loc:@training/Adam/Variable_11*
use_locking(*
T0*
_output_shapes
:

training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
T0*
_output_shapes
:
r
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
T0*
_output_shapes

:
Z
training/Adam/sub_2/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_2Multraining/Adam/sub_24training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
m
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0*
_output_shapes

:
t
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_6/read*
T0*
_output_shapes

:
Z
training/Adam/sub_3/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
T0*
_output_shapes
: 
}
training/Adam/SquareSquare4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
n
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*
_output_shapes

:
m
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0*
_output_shapes

:
k
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*
_output_shapes

:
[
training/Adam/Const_14Const*
dtype0*
valueB
 *    *
_output_shapes
: 
[
training/Adam/Const_15Const*
dtype0*
valueB
 *  *
_output_shapes
: 

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_15*
T0*
_output_shapes

:

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_14*
T0*
_output_shapes

:
d
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*
_output_shapes

:
Z
training/Adam/add_3/yConst*
dtype0*
valueB
 *wЬ+2*
_output_shapes
: 
p
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0*
_output_shapes

:
q
training/Adam/div_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0*
_output_shapes

:
m
training/Adam/sub_4Subdense_1/kernel/readtraining/Adam/div_1*
T0*
_output_shapes

:
Ш
training/Adam/AssignAssigntraining/Adam/Variabletraining/Adam/add_1*
validate_shape(*)
_class
loc:@training/Adam/Variable*
use_locking(*
T0*
_output_shapes

:
Ю
training/Adam/Assign_1Assigntraining/Adam/Variable_6training/Adam/add_2*
validate_shape(*+
_class!
loc:@training/Adam/Variable_6*
use_locking(*
T0*
_output_shapes

:
К
training/Adam/Assign_2Assigndense_1/kerneltraining/Adam/sub_4*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0*
_output_shapes

:
p
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
T0*
_output_shapes
:
Z
training/Adam/sub_5/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
d
training/Adam/sub_5Subtraining/Adam/sub_5/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_7Multraining/Adam/sub_58training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes
:
p
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_7/read*
T0*
_output_shapes
:
Z
training/Adam/sub_6/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
d
training/Adam/sub_6Subtraining/Adam/sub_6/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_1Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes
:
i
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes
:
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes
:
[
training/Adam/Const_16Const*
dtype0*
valueB
 *    *
_output_shapes
: 
[
training/Adam/Const_17Const*
dtype0*
valueB
 *  *
_output_shapes
: 

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_17*
T0*
_output_shapes
:

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_16*
T0*
_output_shapes
:
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes
:
Z
training/Adam/add_6/yConst*
dtype0*
valueB
 *wЬ+2*
_output_shapes
: 
l
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes
:
n
training/Adam/div_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes
:
g
training/Adam/sub_7Subdense_1/bias/readtraining/Adam/div_2*
T0*
_output_shapes
:
Ъ
training/Adam/Assign_3Assigntraining/Adam/Variable_1training/Adam/add_4*
validate_shape(*+
_class!
loc:@training/Adam/Variable_1*
use_locking(*
T0*
_output_shapes
:
Ъ
training/Adam/Assign_4Assigntraining/Adam/Variable_7training/Adam/add_5*
validate_shape(*+
_class!
loc:@training/Adam/Variable_7*
use_locking(*
T0*
_output_shapes
:
В
training/Adam/Assign_5Assigndense_1/biastraining/Adam/sub_7*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes
:
u
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
T0*
_output_shapes

:
Z
training/Adam/sub_8/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_12Multraining/Adam/sub_84training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
o
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*
_output_shapes

:
u
training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_8/read*
T0*
_output_shapes

:
Z
training/Adam/sub_9/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
d
training/Adam/sub_9Subtraining/Adam/sub_9/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_2Square4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
q
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
T0*
_output_shapes

:
o
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*
_output_shapes

:
l
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes

:
[
training/Adam/Const_18Const*
dtype0*
valueB
 *    *
_output_shapes
: 
[
training/Adam/Const_19Const*
dtype0*
valueB
 *  *
_output_shapes
: 

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_19*
T0*
_output_shapes

:

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_18*
T0*
_output_shapes

:
d
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*
_output_shapes

:
Z
training/Adam/add_9/yConst*
dtype0*
valueB
 *wЬ+2*
_output_shapes
: 
p
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes

:
r
training/Adam/div_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*
_output_shapes

:
n
training/Adam/sub_10Subdense_2/kernel/readtraining/Adam/div_3*
T0*
_output_shapes

:
Ю
training/Adam/Assign_6Assigntraining/Adam/Variable_2training/Adam/add_7*
validate_shape(*+
_class!
loc:@training/Adam/Variable_2*
use_locking(*
T0*
_output_shapes

:
Ю
training/Adam/Assign_7Assigntraining/Adam/Variable_8training/Adam/add_8*
validate_shape(*+
_class!
loc:@training/Adam/Variable_8*
use_locking(*
T0*
_output_shapes

:
Л
training/Adam/Assign_8Assigndense_2/kerneltraining/Adam/sub_10*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0*
_output_shapes

:
q
training/Adam/mul_16MulAdam/beta_1/readtraining/Adam/Variable_3/read*
T0*
_output_shapes
:
[
training/Adam/sub_11/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
f
training/Adam/sub_11Subtraining/Adam/sub_11/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_17Multraining/Adam/sub_118training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes
:
q
training/Adam/mul_18MulAdam/beta_2/readtraining/Adam/Variable_9/read*
T0*
_output_shapes
:
[
training/Adam/sub_12/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
f
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_3Square8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
:
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
:
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes
:
[
training/Adam/Const_20Const*
dtype0*
valueB
 *    *
_output_shapes
: 
[
training/Adam/Const_21Const*
dtype0*
valueB
 *  *
_output_shapes
: 

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_21*
T0*
_output_shapes
:

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_20*
T0*
_output_shapes
:
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
:
[
training/Adam/add_12/yConst*
dtype0*
valueB
 *wЬ+2*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes
:
o
training/Adam/div_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes
:
h
training/Adam/sub_13Subdense_2/bias/readtraining/Adam/div_4*
T0*
_output_shapes
:
Ы
training/Adam/Assign_9Assigntraining/Adam/Variable_3training/Adam/add_10*
validate_shape(*+
_class!
loc:@training/Adam/Variable_3*
use_locking(*
T0*
_output_shapes
:
Ь
training/Adam/Assign_10Assigntraining/Adam/Variable_9training/Adam/add_11*
validate_shape(*+
_class!
loc:@training/Adam/Variable_9*
use_locking(*
T0*
_output_shapes
:
Д
training/Adam/Assign_11Assigndense_2/biastraining/Adam/sub_13*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes
:
u
training/Adam/mul_21MulAdam/beta_1/readtraining/Adam/Variable_4/read*
T0*
_output_shapes

:
[
training/Adam/sub_14/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
f
training/Adam/sub_14Subtraining/Adam/sub_14/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_22Multraining/Adam/sub_144training/Adam/gradients/dense_3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
p
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
T0*
_output_shapes

:
v
training/Adam/mul_23MulAdam/beta_2/readtraining/Adam/Variable_10/read*
T0*
_output_shapes

:
[
training/Adam/sub_15/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
f
training/Adam/sub_15Subtraining/Adam/sub_15/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_4Square4training/Adam/gradients/dense_3/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
r
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
T0*
_output_shapes

:
p
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
T0*
_output_shapes

:
m
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
T0*
_output_shapes

:
[
training/Adam/Const_22Const*
dtype0*
valueB
 *    *
_output_shapes
: 
[
training/Adam/Const_23Const*
dtype0*
valueB
 *  *
_output_shapes
: 

%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_23*
T0*
_output_shapes

:

training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_22*
T0*
_output_shapes

:
d
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
T0*
_output_shapes

:
[
training/Adam/add_15/yConst*
dtype0*
valueB
 *wЬ+2*
_output_shapes
: 
r
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0*
_output_shapes

:
s
training/Adam/div_5RealDivtraining/Adam/mul_25training/Adam/add_15*
T0*
_output_shapes

:
n
training/Adam/sub_16Subdense_3/kernel/readtraining/Adam/div_5*
T0*
_output_shapes

:
а
training/Adam/Assign_12Assigntraining/Adam/Variable_4training/Adam/add_13*
validate_shape(*+
_class!
loc:@training/Adam/Variable_4*
use_locking(*
T0*
_output_shapes

:
в
training/Adam/Assign_13Assigntraining/Adam/Variable_10training/Adam/add_14*
validate_shape(*,
_class"
 loc:@training/Adam/Variable_10*
use_locking(*
T0*
_output_shapes

:
М
training/Adam/Assign_14Assigndense_3/kerneltraining/Adam/sub_16*
validate_shape(*!
_class
loc:@dense_3/kernel*
use_locking(*
T0*
_output_shapes

:
q
training/Adam/mul_26MulAdam/beta_1/readtraining/Adam/Variable_5/read*
T0*
_output_shapes
:
[
training/Adam/sub_17/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
f
training/Adam/sub_17Subtraining/Adam/sub_17/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_27Multraining/Adam/sub_178training/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
T0*
_output_shapes
:
r
training/Adam/mul_28MulAdam/beta_2/readtraining/Adam/Variable_11/read*
T0*
_output_shapes
:
[
training/Adam/sub_18/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
f
training/Adam/sub_18Subtraining/Adam/sub_18/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_5Square8training/Adam/gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
n
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
T0*
_output_shapes
:
l
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
T0*
_output_shapes
:
i
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
T0*
_output_shapes
:
[
training/Adam/Const_24Const*
dtype0*
valueB
 *    *
_output_shapes
: 
[
training/Adam/Const_25Const*
dtype0*
valueB
 *  *
_output_shapes
: 

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_25*
T0*
_output_shapes
:

training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_24*
T0*
_output_shapes
:
`
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
T0*
_output_shapes
:
[
training/Adam/add_18/yConst*
dtype0*
valueB
 *wЬ+2*
_output_shapes
: 
n
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
T0*
_output_shapes
:
o
training/Adam/div_6RealDivtraining/Adam/mul_30training/Adam/add_18*
T0*
_output_shapes
:
h
training/Adam/sub_19Subdense_3/bias/readtraining/Adam/div_6*
T0*
_output_shapes
:
Ь
training/Adam/Assign_15Assigntraining/Adam/Variable_5training/Adam/add_16*
validate_shape(*+
_class!
loc:@training/Adam/Variable_5*
use_locking(*
T0*
_output_shapes
:
Ю
training/Adam/Assign_16Assigntraining/Adam/Variable_11training/Adam/add_17*
validate_shape(*,
_class"
 loc:@training/Adam/Variable_11*
use_locking(*
T0*
_output_shapes
:
Д
training/Adam/Assign_17Assigndense_3/biastraining/Adam/sub_19*
validate_shape(*
_class
loc:@dense_3/bias*
use_locking(*
T0*
_output_shapes
:
­
training/group_depsNoOp	^loss/mul#^metrics/mean_absolute_error/Mean_1^training/Adam/AssignAdd^training/Adam/Assign^training/Adam/Assign_1^training/Adam/Assign_2^training/Adam/Assign_3^training/Adam/Assign_4^training/Adam/Assign_5^training/Adam/Assign_6^training/Adam/Assign_7^training/Adam/Assign_8^training/Adam/Assign_9^training/Adam/Assign_10^training/Adam/Assign_11^training/Adam/Assign_12^training/Adam/Assign_13^training/Adam/Assign_14^training/Adam/Assign_15^training/Adam/Assign_16^training/Adam/Assign_17
B

group_depsNoOp	^loss/mul#^metrics/mean_absolute_error/Mean_1

IsVariableInitializedIsVariableInitializeddense_1/kernel*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 

IsVariableInitialized_1IsVariableInitializeddense_1/bias*
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 

IsVariableInitialized_2IsVariableInitializeddense_2/kernel*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 

IsVariableInitialized_3IsVariableInitializeddense_2/bias*
dtype0*
_class
loc:@dense_2/bias*
_output_shapes
: 

IsVariableInitialized_4IsVariableInitializeddense_3/kernel*
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 

IsVariableInitialized_5IsVariableInitializeddense_3/bias*
dtype0*
_class
loc:@dense_3/bias*
_output_shapes
: 

IsVariableInitialized_6IsVariableInitializedAdam/iterations*
dtype0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
z
IsVariableInitialized_7IsVariableInitializedAdam/lr*
dtype0*
_class
loc:@Adam/lr*
_output_shapes
: 

IsVariableInitialized_8IsVariableInitializedAdam/beta_1*
dtype0*
_class
loc:@Adam/beta_1*
_output_shapes
: 

IsVariableInitialized_9IsVariableInitializedAdam/beta_2*
dtype0*
_class
loc:@Adam/beta_2*
_output_shapes
: 

IsVariableInitialized_10IsVariableInitialized
Adam/decay*
dtype0*
_class
loc:@Adam/decay*
_output_shapes
: 

IsVariableInitialized_11IsVariableInitializedtraining/Adam/Variable*
dtype0*)
_class
loc:@training/Adam/Variable*
_output_shapes
: 

IsVariableInitialized_12IsVariableInitializedtraining/Adam/Variable_1*
dtype0*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
: 

IsVariableInitialized_13IsVariableInitializedtraining/Adam/Variable_2*
dtype0*+
_class!
loc:@training/Adam/Variable_2*
_output_shapes
: 

IsVariableInitialized_14IsVariableInitializedtraining/Adam/Variable_3*
dtype0*+
_class!
loc:@training/Adam/Variable_3*
_output_shapes
: 

IsVariableInitialized_15IsVariableInitializedtraining/Adam/Variable_4*
dtype0*+
_class!
loc:@training/Adam/Variable_4*
_output_shapes
: 

IsVariableInitialized_16IsVariableInitializedtraining/Adam/Variable_5*
dtype0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
: 

IsVariableInitialized_17IsVariableInitializedtraining/Adam/Variable_6*
dtype0*+
_class!
loc:@training/Adam/Variable_6*
_output_shapes
: 

IsVariableInitialized_18IsVariableInitializedtraining/Adam/Variable_7*
dtype0*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes
: 

IsVariableInitialized_19IsVariableInitializedtraining/Adam/Variable_8*
dtype0*+
_class!
loc:@training/Adam/Variable_8*
_output_shapes
: 

IsVariableInitialized_20IsVariableInitializedtraining/Adam/Variable_9*
dtype0*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes
: 

IsVariableInitialized_21IsVariableInitializedtraining/Adam/Variable_10*
dtype0*,
_class"
 loc:@training/Adam/Variable_10*
_output_shapes
: 

IsVariableInitialized_22IsVariableInitializedtraining/Adam/Variable_11*
dtype0*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes
: 

initNoOp^dense_1/kernel/Assign^dense_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^dense_3/kernel/Assign^dense_3/bias/Assign^Adam/iterations/Assign^Adam/lr/Assign^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 

save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_9bc51e9e0e4a49dbac66a0bb77881373/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Д
save/SaveV2/tensor_namesConst*
dtype0*ч
valueнBкBAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_2Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:
м
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1Adam/beta_2
Adam/decayAdam/iterationsAdam/lrdense_1/biasdense_1/kerneldense_2/biasdense_2/kerneldense_3/biasdense_3/kerneltraining/Adam/Variabletraining/Adam/Variable_1training/Adam/Variable_10training/Adam/Variable_11training/Adam/Variable_2training/Adam/Variable_3training/Adam/Variable_4training/Adam/Variable_5training/Adam/Variable_6training/Adam/Variable_7training/Adam/Variable_8training/Adam/Variable_9*%
dtypes
2	

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*

axis *
T0*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
o
save/RestoreV2/tensor_namesConst*
dtype0* 
valueBBAdam/beta_1*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:

save/AssignAssignAdam/beta_1save/RestoreV2*
validate_shape(*
_class
loc:@Adam/beta_1*
use_locking(*
T0*
_output_shapes
: 
q
save/RestoreV2_1/tensor_namesConst*
dtype0* 
valueBBAdam/beta_2*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
 
save/Assign_1AssignAdam/beta_2save/RestoreV2_1*
validate_shape(*
_class
loc:@Adam/beta_2*
use_locking(*
T0*
_output_shapes
: 
p
save/RestoreV2_2/tensor_namesConst*
dtype0*
valueBB
Adam/decay*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_2Assign
Adam/decaysave/RestoreV2_2*
validate_shape(*
_class
loc:@Adam/decay*
use_locking(*
T0*
_output_shapes
: 
u
save/RestoreV2_3/tensor_namesConst*
dtype0*$
valueBBAdam/iterations*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2	*
_output_shapes
:
Ј
save/Assign_3AssignAdam/iterationssave/RestoreV2_3*
validate_shape(*"
_class
loc:@Adam/iterations*
use_locking(*
T0	*
_output_shapes
: 
m
save/RestoreV2_4/tensor_namesConst*
dtype0*
valueBBAdam/lr*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_4AssignAdam/lrsave/RestoreV2_4*
validate_shape(*
_class
loc:@Adam/lr*
use_locking(*
T0*
_output_shapes
: 
r
save/RestoreV2_5/tensor_namesConst*
dtype0*!
valueBBdense_1/bias*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
І
save/Assign_5Assigndense_1/biassave/RestoreV2_5*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes
:
t
save/RestoreV2_6/tensor_namesConst*
dtype0*#
valueBBdense_1/kernel*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
Ў
save/Assign_6Assigndense_1/kernelsave/RestoreV2_6*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0*
_output_shapes

:
r
save/RestoreV2_7/tensor_namesConst*
dtype0*!
valueBBdense_2/bias*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
І
save/Assign_7Assigndense_2/biassave/RestoreV2_7*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes
:
t
save/RestoreV2_8/tensor_namesConst*
dtype0*#
valueBBdense_2/kernel*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
Ў
save/Assign_8Assigndense_2/kernelsave/RestoreV2_8*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0*
_output_shapes

:
r
save/RestoreV2_9/tensor_namesConst*
dtype0*!
valueBBdense_3/bias*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
І
save/Assign_9Assigndense_3/biassave/RestoreV2_9*
validate_shape(*
_class
loc:@dense_3/bias*
use_locking(*
T0*
_output_shapes
:
u
save/RestoreV2_10/tensor_namesConst*
dtype0*#
valueBBdense_3/kernel*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
А
save/Assign_10Assigndense_3/kernelsave/RestoreV2_10*
validate_shape(*!
_class
loc:@dense_3/kernel*
use_locking(*
T0*
_output_shapes

:
}
save/RestoreV2_11/tensor_namesConst*
dtype0*+
value"B Btraining/Adam/Variable*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
Р
save/Assign_11Assigntraining/Adam/Variablesave/RestoreV2_11*
validate_shape(*)
_class
loc:@training/Adam/Variable*
use_locking(*
T0*
_output_shapes

:

save/RestoreV2_12/tensor_namesConst*
dtype0*-
value$B"Btraining/Adam/Variable_1*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
Р
save/Assign_12Assigntraining/Adam/Variable_1save/RestoreV2_12*
validate_shape(*+
_class!
loc:@training/Adam/Variable_1*
use_locking(*
T0*
_output_shapes
:

save/RestoreV2_13/tensor_namesConst*
dtype0*.
value%B#Btraining/Adam/Variable_10*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
Ц
save/Assign_13Assigntraining/Adam/Variable_10save/RestoreV2_13*
validate_shape(*,
_class"
 loc:@training/Adam/Variable_10*
use_locking(*
T0*
_output_shapes

:

save/RestoreV2_14/tensor_namesConst*
dtype0*.
value%B#Btraining/Adam/Variable_11*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
Т
save/Assign_14Assigntraining/Adam/Variable_11save/RestoreV2_14*
validate_shape(*,
_class"
 loc:@training/Adam/Variable_11*
use_locking(*
T0*
_output_shapes
:

save/RestoreV2_15/tensor_namesConst*
dtype0*-
value$B"Btraining/Adam/Variable_2*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
Ф
save/Assign_15Assigntraining/Adam/Variable_2save/RestoreV2_15*
validate_shape(*+
_class!
loc:@training/Adam/Variable_2*
use_locking(*
T0*
_output_shapes

:

save/RestoreV2_16/tensor_namesConst*
dtype0*-
value$B"Btraining/Adam/Variable_3*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
Р
save/Assign_16Assigntraining/Adam/Variable_3save/RestoreV2_16*
validate_shape(*+
_class!
loc:@training/Adam/Variable_3*
use_locking(*
T0*
_output_shapes
:

save/RestoreV2_17/tensor_namesConst*
dtype0*-
value$B"Btraining/Adam/Variable_4*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
Ф
save/Assign_17Assigntraining/Adam/Variable_4save/RestoreV2_17*
validate_shape(*+
_class!
loc:@training/Adam/Variable_4*
use_locking(*
T0*
_output_shapes

:

save/RestoreV2_18/tensor_namesConst*
dtype0*-
value$B"Btraining/Adam/Variable_5*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
Р
save/Assign_18Assigntraining/Adam/Variable_5save/RestoreV2_18*
validate_shape(*+
_class!
loc:@training/Adam/Variable_5*
use_locking(*
T0*
_output_shapes
:

save/RestoreV2_19/tensor_namesConst*
dtype0*-
value$B"Btraining/Adam/Variable_6*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
Ф
save/Assign_19Assigntraining/Adam/Variable_6save/RestoreV2_19*
validate_shape(*+
_class!
loc:@training/Adam/Variable_6*
use_locking(*
T0*
_output_shapes

:

save/RestoreV2_20/tensor_namesConst*
dtype0*-
value$B"Btraining/Adam/Variable_7*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
Р
save/Assign_20Assigntraining/Adam/Variable_7save/RestoreV2_20*
validate_shape(*+
_class!
loc:@training/Adam/Variable_7*
use_locking(*
T0*
_output_shapes
:

save/RestoreV2_21/tensor_namesConst*
dtype0*-
value$B"Btraining/Adam/Variable_8*
_output_shapes
:
k
"save/RestoreV2_21/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
Ф
save/Assign_21Assigntraining/Adam/Variable_8save/RestoreV2_21*
validate_shape(*+
_class!
loc:@training/Adam/Variable_8*
use_locking(*
T0*
_output_shapes

:

save/RestoreV2_22/tensor_namesConst*
dtype0*-
value$B"Btraining/Adam/Variable_9*
_output_shapes
:
k
"save/RestoreV2_22/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
Р
save/Assign_22Assigntraining/Adam/Variable_9save/RestoreV2_22*
validate_shape(*+
_class!
loc:@training/Adam/Variable_9*
use_locking(*
T0*
_output_shapes
:

save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"ц
	variablesие
Z
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:0
K
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:0
Z
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:0
K
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:0
Z
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02dense_3/random_uniform:0
K
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02dense_3/Const:0
d
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:0
D
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:0
T
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:0
T
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:0
P
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:0
q
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/Const_2:0
w
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/Const_3:0
w
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/Const_4:0
w
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/Const_5:0
w
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/Const_6:0
w
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/Const_7:0
w
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/Const_8:0
w
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/Const_9:0
x
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/Const_10:0
x
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/Const_11:0
{
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/Const_12:0
{
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/Const_13:0"№
trainable_variablesие
Z
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:0
K
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:0
Z
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:0
K
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:0
Z
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02dense_3/random_uniform:0
K
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02dense_3/Const:0
d
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:0
D
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:0
T
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:0
T
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:0
P
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:0
q
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/Const_2:0
w
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/Const_3:0
w
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/Const_4:0
w
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/Const_5:0
w
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/Const_6:0
w
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/Const_7:0
w
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/Const_8:0
w
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/Const_9:0
x
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/Const_10:0
x
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/Const_11:0
{
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/Const_12:0
{
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/Const_13:0*
serving_default
/
input&
dense_1_input:0џџџџџџџџџ2
output(
dense_3/BiasAdd:0џџџџџџџџџtensorflow/serving/predict