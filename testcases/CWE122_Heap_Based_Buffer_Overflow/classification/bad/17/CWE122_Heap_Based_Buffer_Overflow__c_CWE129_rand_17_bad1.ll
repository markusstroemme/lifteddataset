@global_var_b8938 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5b2ad:
  %indvars.iv20.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %0 = call i32 @rand()
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = urem i32 %0, 2
  %5 = icmp eq i32 %4, 0
  %6 = mul i32 %1, 1073741824
  %7 = mul i32 %2, 32768
  %8 = xor i32 %7, %6
  %9 = xor i32 %8, %3
  %10 = sext i1 %5 to i32
  %storemerge4.in.le = xor i32 %9, %10
  %11 = icmp slt i32 %storemerge4.in.le, 0
  %12 = sext i32 %storemerge4.in.le to i64
  %13 = mul i64 %12, 4
  %14 = call ptr @malloc(i32 40)
  %15 = ptrtoint ptr %14 to i64
  %16 = icmp eq ptr %14, null
  %17 = icmp eq i1 %16, false
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %17, label %dec_label_pc_5b2d5, label %dec_label_pc_5b2c2

dec_label_pc_5b2c2:                               ; preds = %dec_label_pc_5b2ad
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5b2d5:                               ; preds = %dec_label_pc_5b2ad, %dec_label_pc_5b2d5
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %18 = mul i64 %indvars.iv.reload, 4
  %19 = add i64 %18, %15
  %20 = inttoptr i64 %19 to ptr
  store i32 0, ptr %20, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5b2f9, label %dec_label_pc_5b2d5

dec_label_pc_5b2f9:                               ; preds = %dec_label_pc_5b2d5
  br i1 %11, label %dec_label_pc_5b34b, label %dec_label_pc_5b2ff

dec_label_pc_5b2ff:                               ; preds = %dec_label_pc_5b2f9
  %21 = add i64 %13, %15
  %22 = inttoptr i64 %21 to ptr
  store i32 1, ptr %22, align 4
  store i64 0, ptr %indvars.iv20.reg2mem, align 8
  br label %dec_label_pc_5b322

dec_label_pc_5b322:                               ; preds = %dec_label_pc_5b322, %dec_label_pc_5b2ff
  %indvars.iv20.reload = load i64, ptr %indvars.iv20.reg2mem, align 8
  %23 = mul i64 %indvars.iv20.reload, 4
  %24 = add i64 %23, %15
  %25 = inttoptr i64 %24 to ptr
  %26 = load i32, ptr %25, align 4
  call void @printIntLine(i32 %26)
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20.reload, 1
  %exitcond22 = icmp eq i64 %indvars.iv.next21, 10
  store i64 %indvars.iv.next21, ptr %indvars.iv20.reg2mem, align 8
  br i1 %exitcond22, label %dec_label_pc_5b374, label %dec_label_pc_5b322

dec_label_pc_5b34b:                               ; preds = %dec_label_pc_5b2f9
  call void @printLine(ptr @global_var_b8938)
  br label %dec_label_pc_5b374

dec_label_pc_5b374:                               ; preds = %dec_label_pc_5b322, %dec_label_pc_5b34b
  call void @free(ptr %14)
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

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

