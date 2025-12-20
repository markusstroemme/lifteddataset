@goodB2G1Static = external local_unnamed_addr global i32
@global_var_b89e8 = external constant [21 x i8]
@global_var_b8a00 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_5ba7c:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @goodB2G1Static, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_5baa9, label %dec_label_pc_5ba95

dec_label_pc_5ba95:                               ; preds = %dec_label_pc_5ba7c
  call void @printLine(ptr @global_var_b89e8)
  br label %dec_label_pc_5bb68

dec_label_pc_5baa9:                               ; preds = %dec_label_pc_5ba7c
  %2 = call ptr @malloc(i32 40)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %5, label %dec_label_pc_5bad1, label %dec_label_pc_5babe

dec_label_pc_5babe:                               ; preds = %dec_label_pc_5baa9
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5bad1:                               ; preds = %dec_label_pc_5baa9, %dec_label_pc_5bad1
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %6 = mul i64 %indvars.iv5.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_5baf5, label %dec_label_pc_5bad1

dec_label_pc_5baf5:                               ; preds = %dec_label_pc_5bad1
  %9 = icmp ugt i32 %data, 9
  br i1 %9, label %dec_label_pc_5bb4d, label %dec_label_pc_5bb01

dec_label_pc_5bb01:                               ; preds = %dec_label_pc_5baf5
  %10 = sext i32 %data to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %11, %3
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5bb24

dec_label_pc_5bb24:                               ; preds = %dec_label_pc_5bb24, %dec_label_pc_5bb01
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %3
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5bb5c, label %dec_label_pc_5bb24

dec_label_pc_5bb4d:                               ; preds = %dec_label_pc_5baf5
  call void @printLine(ptr @global_var_b8a00)
  br label %dec_label_pc_5bb5c

dec_label_pc_5bb5c:                               ; preds = %dec_label_pc_5bb24, %dec_label_pc_5bb4d
  call void @free(ptr %2)
  br label %dec_label_pc_5bb68

dec_label_pc_5bb68:                               ; preds = %dec_label_pc_5bb5c, %dec_label_pc_5ba95
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_5bb6b:
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
  %storemerge.in = xor i32 %9, %10
  store i32 0, ptr @goodB2G1Static, align 4
  call void @anon0(i32 %storemerge.in)
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

