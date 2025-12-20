@global_var_72110 = external constant [4 x i8]
@global_var_72130 = external constant [54 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_a5070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_384b5:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @global_var_a5070, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_38552, label %dec_label_pc_38504

dec_label_pc_38504:                               ; preds = %dec_label_pc_384b5
  %3 = load ptr, ptr @global_var_a5080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_72110, ptr nonnull %stack_var_-32)
  %.pr = load i64, ptr %stack_var_-32, align 8
  %5 = load i32, ptr @global_var_a5070, align 4
  %6 = icmp eq i32 %5, 0
  %7 = icmp slt i64 %.pr, 1
  %or.cond = or i1 %7, %6
  br i1 %or.cond, label %dec_label_pc_38552, label %dec_label_pc_38517

dec_label_pc_38517:                               ; preds = %dec_label_pc_38504
  %8 = icmp sgt i64 %.pr, 4611686018427387902
  br i1 %8, label %dec_label_pc_38543, label %dec_label_pc_3852a

dec_label_pc_3852a:                               ; preds = %dec_label_pc_38517
  %9 = mul i64 %.pr, 2
  call void @printLongLongLine(i64 %9)
  br label %dec_label_pc_38552

dec_label_pc_38543:                               ; preds = %dec_label_pc_38517
  call void @printLine(ptr @global_var_72130)
  br label %dec_label_pc_38552

dec_label_pc_38552:                               ; preds = %dec_label_pc_384b5, %dec_label_pc_38543, %dec_label_pc_3852a, %dec_label_pc_38504
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_38567, label %dec_label_pc_38562

dec_label_pc_38562:                               ; preds = %dec_label_pc_38552
  call void @__stack_chk_fail()
  br label %dec_label_pc_38567

dec_label_pc_38567:                               ; preds = %dec_label_pc_38562, %dec_label_pc_38552
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

