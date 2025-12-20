@global_var_725b8 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9074 = external local_unnamed_addr global i32
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_20cd1:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_20d48, label %dec_label_pc_20d1f

dec_label_pc_20d1f:                               ; preds = %dec_label_pc_20cd1
  %4 = load ptr, ptr @global_var_a9080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_725b8, ptr nonnull %stack_var_-20)
  %.pre = load i32, ptr @global_var_a9074, align 4
  %.pre2 = load i16, ptr %stack_var_-20, align 2
  %6 = icmp eq i32 %.pre, 5
  %7 = icmp eq i1 %6, false
  %8 = icmp slt i16 %.pre2, 1
  %or.cond = or i1 %7, %8
  br i1 %or.cond, label %dec_label_pc_20d48, label %dec_label_pc_20d33

dec_label_pc_20d33:                               ; preds = %dec_label_pc_20d1f
  %9 = mul i16 %.pre2, 2
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_20d48

dec_label_pc_20d48:                               ; preds = %dec_label_pc_20cd1, %dec_label_pc_20d33, %dec_label_pc_20d1f
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_20d5d, label %dec_label_pc_20d58

dec_label_pc_20d58:                               ; preds = %dec_label_pc_20d48
  call void @__stack_chk_fail()
  br label %dec_label_pc_20d5d

dec_label_pc_20d5d:                               ; preds = %dec_label_pc_20d58, %dec_label_pc_20d48
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

