@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2cc6a:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-8 to i64
  %2 = add i64 %1, -48
  %3 = add i64 %1, -8
  %4 = inttoptr i64 %3 to ptr
  store i32 1, ptr %4, align 8
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2cc80

dec_label_pc_2cc80:                               ; preds = %dec_label_pc_2cc80, %dec_label_pc_2cc6a
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %5 = mul i64 %indvars.iv.reload, 4
  %6 = add i64 %2, %5
  %7 = inttoptr i64 %6 to ptr
  %8 = load i32, ptr %7, align 4
  call void @printIntLine(i32 %8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2ccb5, label %dec_label_pc_2cc80

dec_label_pc_2ccb5:                               ; preds = %dec_label_pc_2cc80
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_2ccca, label %dec_label_pc_2ccc5

dec_label_pc_2ccc5:                               ; preds = %dec_label_pc_2ccb5
  call void @__stack_chk_fail()
  br label %dec_label_pc_2ccca

dec_label_pc_2ccca:                               ; preds = %dec_label_pc_2ccc5, %dec_label_pc_2ccb5
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

