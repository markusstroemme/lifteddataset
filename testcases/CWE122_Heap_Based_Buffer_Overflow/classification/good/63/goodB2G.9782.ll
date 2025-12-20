@global_var_b8e08 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_5f18f:
  %stack_var_-36 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge.in = xor i32 %10, %11
  store i32 %storemerge.in, ptr %stack_var_-36, align 4
  call void @anon0(ptr nonnull %stack_var_-36)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_5f21c, label %dec_label_pc_5f217

dec_label_pc_5f217:                               ; preds = %dec_label_pc_5f18f
  call void @__stack_chk_fail()
  br label %dec_label_pc_5f21c

dec_label_pc_5f21c:                               ; preds = %dec_label_pc_5f217, %dec_label_pc_5f18f
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_5f3eb:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %6, label %dec_label_pc_5f42c, label %dec_label_pc_5f419

dec_label_pc_5f419:                               ; preds = %dec_label_pc_5f3eb
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5f42c:                               ; preds = %dec_label_pc_5f3eb, %dec_label_pc_5f42c
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %7 = mul i64 %indvars.iv5.reload, 4
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_5f450, label %dec_label_pc_5f42c

dec_label_pc_5f450:                               ; preds = %dec_label_pc_5f42c
  %10 = icmp ugt i32 %2, 9
  br i1 %10, label %dec_label_pc_5f4a8, label %dec_label_pc_5f45c

dec_label_pc_5f45c:                               ; preds = %dec_label_pc_5f450
  %sext = mul i64 %1, 4294967296
  %11 = ashr exact i64 %sext, 30
  %12 = add i64 %11, %4
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5f47f

dec_label_pc_5f47f:                               ; preds = %dec_label_pc_5f47f, %dec_label_pc_5f45c
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %4
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5f4b7, label %dec_label_pc_5f47f

dec_label_pc_5f4a8:                               ; preds = %dec_label_pc_5f450
  call void @printLine(ptr @global_var_b8e08)
  br label %dec_label_pc_5f4b7

dec_label_pc_5f4b7:                               ; preds = %dec_label_pc_5f47f, %dec_label_pc_5f4a8
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

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

