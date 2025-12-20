@global_var_72368 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr
@global_var_a9034 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1f934:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9034, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1f9ab, label %dec_label_pc_1f982

dec_label_pc_1f982:                               ; preds = %dec_label_pc_1f934
  %4 = load ptr, ptr @global_var_a9080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_72368, ptr nonnull %stack_var_-20)
  %.pre = load i32, ptr @global_var_a9034, align 4
  %.pre2 = load i16, ptr %stack_var_-20, align 2
  %6 = icmp eq i32 %.pre, 5
  %7 = icmp eq i1 %6, false
  %8 = icmp slt i16 %.pre2, 1
  %or.cond = or i1 %7, %8
  br i1 %or.cond, label %dec_label_pc_1f9ab, label %dec_label_pc_1f996

dec_label_pc_1f996:                               ; preds = %dec_label_pc_1f982
  %9 = mul i16 %.pre2, 2
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_1f9ab

dec_label_pc_1f9ab:                               ; preds = %dec_label_pc_1f934, %dec_label_pc_1f996, %dec_label_pc_1f982
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_1f9c0, label %dec_label_pc_1f9bb

dec_label_pc_1f9bb:                               ; preds = %dec_label_pc_1f9ab
  call void @__stack_chk_fail()
  br label %dec_label_pc_1f9c0

dec_label_pc_1f9c0:                               ; preds = %dec_label_pc_1f9bb, %dec_label_pc_1f9ab
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

