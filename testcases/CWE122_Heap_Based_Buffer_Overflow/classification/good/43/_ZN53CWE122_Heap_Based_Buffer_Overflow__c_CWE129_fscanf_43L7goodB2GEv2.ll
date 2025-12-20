@global_var_bab70 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@0 = external global i32
@global_var_ec080 = external local_unnamed_addr global ptr
@global_var_bab48 = external constant [3 x i8]

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_890ec:
  %0 = load ptr, ptr @global_var_ec080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_bab48)
  %2 = sext i32 %1 to i64
  ret i64 %2
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_89121:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-32, align 4
  %1 = call i64 @anon0(ptr nonnull %stack_var_-32)
  %2 = call ptr @malloc(i32 40)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %5, label %dec_label_pc_89177, label %dec_label_pc_89164

dec_label_pc_89164:                               ; preds = %dec_label_pc_89121
  call void @exit(i32 -1)
  unreachable

dec_label_pc_89177:                               ; preds = %dec_label_pc_89121, %dec_label_pc_89177
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %6 = mul i64 %indvars.iv5.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_8919b, label %dec_label_pc_89177

dec_label_pc_8919b:                               ; preds = %dec_label_pc_89177
  %9 = load i32, ptr %stack_var_-32, align 4
  %10 = icmp ugt i32 %9, 9
  br i1 %10, label %dec_label_pc_891f6, label %dec_label_pc_891aa

dec_label_pc_891aa:                               ; preds = %dec_label_pc_8919b
  %11 = sext i32 %9 to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %12, %3
  %14 = inttoptr i64 %13 to ptr
  store i32 1, ptr %14, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_891cd

dec_label_pc_891cd:                               ; preds = %dec_label_pc_891cd, %dec_label_pc_891aa
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %15 = mul i64 %indvars.iv.reload, 4
  %16 = add i64 %15, %3
  %17 = inttoptr i64 %16 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_89205, label %dec_label_pc_891cd

dec_label_pc_891f6:                               ; preds = %dec_label_pc_8919b
  call void @printLine(ptr @global_var_bab70)
  br label %dec_label_pc_89205

dec_label_pc_89205:                               ; preds = %dec_label_pc_891cd, %dec_label_pc_891f6
  call void @free(ptr %2)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_89226, label %dec_label_pc_89221

dec_label_pc_89221:                               ; preds = %dec_label_pc_89205
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_89226

dec_label_pc_89226:                               ; preds = %dec_label_pc_89221, %dec_label_pc_89205
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

