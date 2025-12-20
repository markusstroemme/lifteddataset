@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2d003:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, -20
  %3 = inttoptr i64 %2 to ptr
  store i32 1, ptr %3, align 4
  %4 = add i64 %0, -48
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2d072

dec_label_pc_2d072:                               ; preds = %dec_label_pc_2d072, %dec_label_pc_2d003
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %5 = mul i64 %indvars.iv.reload, 4
  %6 = add i64 %4, %5
  %7 = inttoptr i64 %6 to ptr
  %8 = load i32, ptr %7, align 4
  call void @printIntLine(i32 %8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2d09d, label %dec_label_pc_2d072

dec_label_pc_2d09d:                               ; preds = %dec_label_pc_2d072
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %1, %9
  br i1 %10, label %dec_label_pc_2d0b2, label %dec_label_pc_2d0ad

dec_label_pc_2d0ad:                               ; preds = %dec_label_pc_2d09d
  call void @__stack_chk_fail()
  br label %dec_label_pc_2d0b2

dec_label_pc_2d0b2:                               ; preds = %dec_label_pc_2d0ad, %dec_label_pc_2d09d
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

