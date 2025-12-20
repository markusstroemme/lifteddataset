@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1a0fc:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = icmp eq i32 %3, 0
  %5 = add i64 %0, -20
  %6 = inttoptr i64 %5 to ptr
  store i32 1, ptr %6, align 4
  %7 = add i64 %0, -48
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %4, label %dec_label_pc_1a202, label %dec_label_pc_1a18e

dec_label_pc_1a18e:                               ; preds = %dec_label_pc_1a0fc, %dec_label_pc_1a18e
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %8 = mul i64 %indvars.iv5.reload, 4
  %9 = add i64 %8, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_1a22d, label %dec_label_pc_1a18e

dec_label_pc_1a202:                               ; preds = %dec_label_pc_1a0fc, %dec_label_pc_1a202
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %7
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1a22d, label %dec_label_pc_1a202

dec_label_pc_1a22d:                               ; preds = %dec_label_pc_1a18e, %dec_label_pc_1a202
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_1a242, label %dec_label_pc_1a23d

dec_label_pc_1a23d:                               ; preds = %dec_label_pc_1a22d
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a242

dec_label_pc_1a242:                               ; preds = %dec_label_pc_1a23d, %dec_label_pc_1a22d
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a0be9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

