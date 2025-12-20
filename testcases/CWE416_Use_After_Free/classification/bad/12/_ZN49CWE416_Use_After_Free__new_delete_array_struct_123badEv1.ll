@global_var_320 = external constant [20 x i8]
@global_var_4a96e = external constant [10 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2b5ba:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge23.reg2mem = alloca i64, align 8
  %storemerge4.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  %6 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge4.reg2mem, align 8
  store i64 0, ptr %storemerge23.reg2mem, align 8
  br i1 %5, label %dec_label_pc_2b660, label %dec_label_pc_2b5f4

dec_label_pc_2b5f4:                               ; preds = %dec_label_pc_2b5ba, %dec_label_pc_2b5f4
  %storemerge4.reload = load i64, ptr %storemerge4.reg2mem, align 8
  %7 = mul i64 %storemerge4.reload, 8
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  %10 = add i64 %8, 4
  %11 = inttoptr i64 %10 to ptr
  store i32 2, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge4.reload, 1
  %exitcond5 = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge4.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_2b633, label %dec_label_pc_2b5f4

dec_label_pc_2b633:                               ; preds = %dec_label_pc_2b5f4
  %13 = icmp eq i64 %6, 0
  br i1 %13, label %dec_label_pc_2b69f, label %dec_label_pc_2b63a

dec_label_pc_2b63a:                               ; preds = %dec_label_pc_2b633
  %14 = inttoptr i64 %6 to ptr
  %15 = and i64 %1, 4294967295
  %16 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %14, ptr %16)
  br label %dec_label_pc_2b69f

dec_label_pc_2b660:                               ; preds = %dec_label_pc_2b5ba, %dec_label_pc_2b660
  %storemerge23.reload = load i64, ptr %storemerge23.reg2mem, align 8
  %17 = mul i64 %storemerge23.reload, 8
  %18 = add i64 %17, %6
  %19 = inttoptr i64 %18 to ptr
  store i32 1, ptr %19, align 4
  %20 = add i64 %18, 4
  %21 = inttoptr i64 %20 to ptr
  store i32 2, ptr %21, align 4
  %22 = add nuw nsw i64 %storemerge23.reload, 1
  %exitcond = icmp eq i64 %22, 100
  store i64 %22, ptr %storemerge23.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2b69f, label %dec_label_pc_2b660

dec_label_pc_2b69f:                               ; preds = %dec_label_pc_2b660, %dec_label_pc_2b63a, %dec_label_pc_2b633
  %23 = call i32 @globalReturnsTrueOrFalse()
  %24 = icmp eq i32 %23, 0
  %25 = icmp eq i1 %24, false
  %26 = zext i1 %25 to i64
  %27 = and i32 %23, -256
  %28 = sext i32 %27 to i64
  %29 = or i64 %26, %28
  %30 = icmp eq i1 %25, false
  store i64 %29, ptr %rax.0.reg2mem, align 8
  br i1 %30, label %dec_label_pc_2b6b9, label %dec_label_pc_2b6ad

dec_label_pc_2b6ad:                               ; preds = %dec_label_pc_2b69f
  %31 = inttoptr i64 %6 to ptr
  call void @printStructLine(ptr %31)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2b6b9

dec_label_pc_2b6b9:                               ; preds = %dec_label_pc_2b6ad, %dec_label_pc_2b69f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_3ba96:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_4a96e, i64 %7, i64 %6)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3bd35:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

