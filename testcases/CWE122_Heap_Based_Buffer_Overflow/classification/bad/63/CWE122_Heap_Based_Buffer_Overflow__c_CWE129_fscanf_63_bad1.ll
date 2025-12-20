@global_var_b6a48 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr
@global_var_b6a3f = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3ae62:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_b6a3f)
  call void @anon1(ptr nonnull %stack_var_-20)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_3aec7, label %dec_label_pc_3aec2

dec_label_pc_3aec2:                               ; preds = %dec_label_pc_3ae62
  call void @__stack_chk_fail()
  br label %dec_label_pc_3aec7

dec_label_pc_3aec7:                               ; preds = %dec_label_pc_3aec2, %dec_label_pc_3ae62
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_3af9b:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3afdc, label %dec_label_pc_3afc9

dec_label_pc_3afc9:                               ; preds = %dec_label_pc_3af9b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3afdc:                               ; preds = %dec_label_pc_3af9b, %dec_label_pc_3afdc
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %7 = mul i64 %indvars.iv4.reload, 4
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_3b000, label %dec_label_pc_3afdc

dec_label_pc_3b000:                               ; preds = %dec_label_pc_3afdc
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %dec_label_pc_3b052, label %dec_label_pc_3b006

dec_label_pc_3b006:                               ; preds = %dec_label_pc_3b000
  %sext = mul i64 %1, 4294967296
  %11 = ashr exact i64 %sext, 30
  %12 = add i64 %11, %4
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3b029

dec_label_pc_3b029:                               ; preds = %dec_label_pc_3b029, %dec_label_pc_3b006
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %4
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3b061, label %dec_label_pc_3b029

dec_label_pc_3b052:                               ; preds = %dec_label_pc_3b000
  call void @printLine(ptr @global_var_b6a48)
  br label %dec_label_pc_3b061

dec_label_pc_3b061:                               ; preds = %dec_label_pc_3b029, %dec_label_pc_3b052
  call void @free(ptr %3)
  ret void
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

