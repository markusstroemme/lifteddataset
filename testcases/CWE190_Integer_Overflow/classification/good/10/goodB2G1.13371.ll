@global_var_72110 = external constant [4 x i8]
@global_var_72114 = external constant [21 x i8]
@global_var_72130 = external constant [54 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_a5070 = external local_unnamed_addr global i32
@global_var_a52c8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_383f0:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @global_var_a5070, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_3843f, label %dec_label_pc_3841d

dec_label_pc_3841d:                               ; preds = %dec_label_pc_383f0
  %3 = load ptr, ptr @global_var_a5080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_72110, ptr nonnull %stack_var_-32)
  br label %dec_label_pc_3843f

dec_label_pc_3843f:                               ; preds = %dec_label_pc_3841d, %dec_label_pc_383f0
  %5 = load i32, ptr @global_var_a52c8, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_3845a, label %dec_label_pc_38449

dec_label_pc_38449:                               ; preds = %dec_label_pc_3843f
  call void @printLine(ptr @global_var_72114)
  br label %dec_label_pc_3849e

dec_label_pc_3845a:                               ; preds = %dec_label_pc_3843f
  %7 = load i64, ptr %stack_var_-32, align 8
  %8 = icmp slt i64 %7, 1
  br i1 %8, label %dec_label_pc_3849e, label %dec_label_pc_38463

dec_label_pc_38463:                               ; preds = %dec_label_pc_3845a
  %9 = icmp sgt i64 %7, 4611686018427387902
  br i1 %9, label %dec_label_pc_3848f, label %dec_label_pc_38476

dec_label_pc_38476:                               ; preds = %dec_label_pc_38463
  %10 = mul i64 %7, 2
  call void @printLongLongLine(i64 %10)
  br label %dec_label_pc_3849e

dec_label_pc_3848f:                               ; preds = %dec_label_pc_38463
  call void @printLine(ptr @global_var_72130)
  br label %dec_label_pc_3849e

dec_label_pc_3849e:                               ; preds = %dec_label_pc_3848f, %dec_label_pc_38476, %dec_label_pc_3845a, %dec_label_pc_38449
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_384b3, label %dec_label_pc_384ae

dec_label_pc_384ae:                               ; preds = %dec_label_pc_3849e
  call void @__stack_chk_fail()
  br label %dec_label_pc_384b3

dec_label_pc_384b3:                               ; preds = %dec_label_pc_384ae, %dec_label_pc_3849e
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5a014:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5a037, label %dec_label_pc_5a02b

dec_label_pc_5a02b:                               ; preds = %dec_label_pc_5a014
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5a037

dec_label_pc_5a037:                               ; preds = %dec_label_pc_5a02b, %dec_label_pc_5a014
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

