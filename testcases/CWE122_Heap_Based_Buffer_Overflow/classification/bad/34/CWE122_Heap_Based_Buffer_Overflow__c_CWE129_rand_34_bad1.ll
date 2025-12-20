@global_var_b8b18 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5cb27:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge2.in = xor i32 %9, %10
  %11 = call ptr @malloc(i32 40)
  %12 = ptrtoint ptr %11 to i64
  %13 = icmp eq ptr %11, null
  %14 = icmp eq i1 %13, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %14, label %dec_label_pc_5cbb8, label %dec_label_pc_5cba5

dec_label_pc_5cba5:                               ; preds = %dec_label_pc_5cb27
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5cbb8:                               ; preds = %dec_label_pc_5cb27, %dec_label_pc_5cbb8
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %15 = mul i64 %indvars.iv5.reload, 4
  %16 = add i64 %15, %12
  %17 = inttoptr i64 %16 to ptr
  store i32 0, ptr %17, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_5cbdc, label %dec_label_pc_5cbb8

dec_label_pc_5cbdc:                               ; preds = %dec_label_pc_5cbb8
  %18 = icmp slt i32 %storemerge2.in, 0
  br i1 %18, label %dec_label_pc_5cc2e, label %dec_label_pc_5cbe2

dec_label_pc_5cbe2:                               ; preds = %dec_label_pc_5cbdc
  %19 = sext i32 %storemerge2.in to i64
  %20 = mul i64 %19, 4
  %21 = add i64 %20, %12
  %22 = inttoptr i64 %21 to ptr
  store i32 1, ptr %22, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5cc05

dec_label_pc_5cc05:                               ; preds = %dec_label_pc_5cc05, %dec_label_pc_5cbe2
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %23 = mul i64 %indvars.iv.reload, 4
  %24 = add i64 %23, %12
  %25 = inttoptr i64 %24 to ptr
  %26 = load i32, ptr %25, align 4
  call void @printIntLine(i32 %26)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5cc3d, label %dec_label_pc_5cc05

dec_label_pc_5cc2e:                               ; preds = %dec_label_pc_5cbdc
  call void @printLine(ptr @global_var_b8b18)
  br label %dec_label_pc_5cc3d

dec_label_pc_5cc3d:                               ; preds = %dec_label_pc_5cc05, %dec_label_pc_5cc2e
  call void @free(ptr %11)
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

