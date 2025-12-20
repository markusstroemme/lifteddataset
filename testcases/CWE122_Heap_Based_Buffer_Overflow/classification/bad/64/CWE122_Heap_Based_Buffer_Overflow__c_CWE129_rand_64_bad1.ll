@global_var_b8e30 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5f4c6:
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
  %12 = bitcast ptr %stack_var_-36 to ptr
  call void @anon1(ptr nonnull %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_5f553, label %dec_label_pc_5f54e

dec_label_pc_5f54e:                               ; preds = %dec_label_pc_5f4c6
  call void @__stack_chk_fail()
  br label %dec_label_pc_5f553

dec_label_pc_5f553:                               ; preds = %dec_label_pc_5f54e, %dec_label_pc_5f4c6
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_5f657:
  %0 = alloca i64, align 8
  %.reg2mem4 = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %.reg2mem, align 8
  br i1 %6, label %dec_label_pc_5f6a0, label %dec_label_pc_5f68d

dec_label_pc_5f68d:                               ; preds = %dec_label_pc_5f657
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5f6a0:                               ; preds = %dec_label_pc_5f657, %dec_label_pc_5f6a0
  %.reload = load i64, ptr %.reg2mem, align 8
  %sext1 = mul i64 %.reload, 4294967296
  %7 = ashr exact i64 %sext1, 30
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = add nuw nsw i64 %.reload, 1
  %11 = and i64 %10, 4294967295
  %12 = trunc i64 %10 to i32
  %13 = icmp slt i32 %12, 10
  store i64 %11, ptr %.reg2mem, align 8
  br i1 %13, label %dec_label_pc_5f6a0, label %dec_label_pc_5f6c4

dec_label_pc_5f6c4:                               ; preds = %dec_label_pc_5f6a0
  %14 = icmp slt i32 %2, 0
  br i1 %14, label %dec_label_pc_5f716, label %dec_label_pc_5f6ca

dec_label_pc_5f6ca:                               ; preds = %dec_label_pc_5f6c4
  %sext3 = mul i64 %1, 4294967296
  %15 = ashr exact i64 %sext3, 30
  %16 = add i64 %15, %4
  %17 = inttoptr i64 %16 to ptr
  store i32 1, ptr %17, align 4
  store i64 0, ptr %.reg2mem4, align 8
  br label %dec_label_pc_5f6ed

dec_label_pc_5f6ed:                               ; preds = %dec_label_pc_5f6ca, %dec_label_pc_5f6ed
  %.reload5 = load i64, ptr %.reg2mem4, align 8
  %sext = mul i64 %.reload5, 4294967296
  %18 = ashr exact i64 %sext, 30
  %19 = add i64 %18, %4
  %20 = inttoptr i64 %19 to ptr
  %21 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %21)
  %22 = add nuw nsw i64 %.reload5, 1
  %23 = and i64 %22, 4294967295
  %24 = trunc i64 %22 to i32
  %25 = icmp slt i32 %24, 10
  store i64 %23, ptr %.reg2mem4, align 8
  br i1 %25, label %dec_label_pc_5f6ed, label %dec_label_pc_5f725

dec_label_pc_5f716:                               ; preds = %dec_label_pc_5f6c4
  call void @printLine(ptr @global_var_b8e30)
  br label %dec_label_pc_5f725

dec_label_pc_5f725:                               ; preds = %dec_label_pc_5f6ed, %dec_label_pc_5f716
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

