@global_var_b7748 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_45280:
  call void @anon0(i64 7)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_453ca:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %sext = mul i64 %myStruct, 4294967296
  %0 = call ptr @malloc(i32 40)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br i1 %3, label %dec_label_pc_45407, label %dec_label_pc_453f4

dec_label_pc_453f4:                               ; preds = %dec_label_pc_453ca
  call void @exit(i32 -1)
  unreachable

dec_label_pc_45407:                               ; preds = %dec_label_pc_453ca, %dec_label_pc_45407
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %4 = mul i64 %indvars.iv6.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_4542b, label %dec_label_pc_45407

dec_label_pc_4542b:                               ; preds = %dec_label_pc_45407
  %7 = trunc i64 %myStruct to i32
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %dec_label_pc_4547d, label %dec_label_pc_45431

dec_label_pc_45431:                               ; preds = %dec_label_pc_4542b
  %9 = ashr exact i64 %sext, 30
  %10 = add i64 %9, %1
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_45454

dec_label_pc_45454:                               ; preds = %dec_label_pc_45454, %dec_label_pc_45431
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %1
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4548c, label %dec_label_pc_45454

dec_label_pc_4547d:                               ; preds = %dec_label_pc_4542b
  call void @printLine(ptr @global_var_b7748)
  br label %dec_label_pc_4548c

dec_label_pc_4548c:                               ; preds = %dec_label_pc_45454, %dec_label_pc_4547d
  call void @free(ptr %0)
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

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

