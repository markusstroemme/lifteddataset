@global_var_722b8 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr
@global_var_a9030 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1f3aa:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9030, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1f41f, label %dec_label_pc_1f3f7

dec_label_pc_1f3f7:                               ; preds = %dec_label_pc_1f3aa
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_722b8, ptr nonnull %stack_var_-20)
  %.pre = load i32, ptr @global_var_a9030, align 4
  %.pre2 = load i16, ptr %stack_var_-20, align 2
  %phitmp = icmp eq i32 %.pre, 0
  %5 = icmp slt i16 %.pre2, 1
  %or.cond = or i1 %phitmp, %5
  br i1 %or.cond, label %dec_label_pc_1f41f, label %dec_label_pc_1f40a

dec_label_pc_1f40a:                               ; preds = %dec_label_pc_1f3f7
  %6 = mul i16 %.pre2, 2
  %7 = sext i16 %6 to i32
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_1f41f

dec_label_pc_1f41f:                               ; preds = %dec_label_pc_1f3aa, %dec_label_pc_1f40a, %dec_label_pc_1f3f7
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_1f434, label %dec_label_pc_1f42f

dec_label_pc_1f42f:                               ; preds = %dec_label_pc_1f41f
  call void @__stack_chk_fail()
  br label %dec_label_pc_1f434

dec_label_pc_1f434:                               ; preds = %dec_label_pc_1f42f, %dec_label_pc_1f41f
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

