@global_var_c0760 = external constant [4 x i8]
@global_var_ef084 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1aba9:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef084, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1ac57, label %dec_label_pc_1ac16

dec_label_pc_1ac16:                               ; preds = %dec_label_pc_1aba9
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = add i64 %4, -20
  %6 = inttoptr i64 %5 to ptr
  store i32 1, ptr %6, align 4
  %7 = add i64 %4, -48
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1ac2c

dec_label_pc_1ac2c:                               ; preds = %dec_label_pc_1ac2c, %dec_label_pc_1ac16
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %8 = mul i64 %indvars.iv.reload, 4
  %9 = add i64 %7, %8
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1ac57, label %dec_label_pc_1ac2c

dec_label_pc_1ac57:                               ; preds = %dec_label_pc_1ac2c, %dec_label_pc_1aba9
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_1ac6c, label %dec_label_pc_1ac67

dec_label_pc_1ac67:                               ; preds = %dec_label_pc_1ac57
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ac6c

dec_label_pc_1ac6c:                               ; preds = %dec_label_pc_1ac67, %dec_label_pc_1ac57
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

