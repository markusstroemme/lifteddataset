@global_var_320 = external constant [20 x i8]
@global_var_4a96e = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_14332:
  %storemerge24.reg2mem = alloca i64, align 8
  %storemerge5.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %1, label %dec_label_pc_143be, label %dec_label_pc_14354

dec_label_pc_14354:                               ; preds = %dec_label_pc_14332
  br i1 %4, label %dec_label_pc_143b5.preheader, label %dec_label_pc_14369

dec_label_pc_143b5.preheader:                     ; preds = %dec_label_pc_14354
  %5 = ptrtoint ptr %2 to i64
  store i64 0, ptr %storemerge5.reg2mem, align 8
  br label %dec_label_pc_1437d

dec_label_pc_14369:                               ; preds = %dec_label_pc_14354
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1437d:                               ; preds = %dec_label_pc_1437d, %dec_label_pc_143b5.preheader
  %storemerge5.reload = load i64, ptr %storemerge5.reg2mem, align 8
  %6 = mul i64 %storemerge5.reload, 8
  %7 = add i64 %6, %5
  %8 = inttoptr i64 %7 to ptr
  store i32 1, ptr %8, align 4
  %9 = add i64 %7, 4
  %10 = inttoptr i64 %9 to ptr
  store i32 2, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge5.reload, 1
  %exitcond6 = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge5.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_14426, label %dec_label_pc_1437d

dec_label_pc_143be:                               ; preds = %dec_label_pc_14332
  br i1 %4, label %dec_label_pc_1441f.preheader, label %dec_label_pc_143d3

dec_label_pc_1441f.preheader:                     ; preds = %dec_label_pc_143be
  %12 = ptrtoint ptr %2 to i64
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_143e7

dec_label_pc_143d3:                               ; preds = %dec_label_pc_143be
  call void @exit(i32 -1)
  unreachable

dec_label_pc_143e7:                               ; preds = %dec_label_pc_143e7, %dec_label_pc_1441f.preheader
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %13 = mul i64 %storemerge24.reload, 8
  %14 = add i64 %13, %12
  %15 = inttoptr i64 %14 to ptr
  store i32 1, ptr %15, align 4
  %16 = add i64 %14, 4
  %17 = inttoptr i64 %16 to ptr
  store i32 2, ptr %17, align 4
  %18 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond = icmp eq i64 %18, 100
  store i64 %18, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_14426, label %dec_label_pc_143e7

dec_label_pc_14426:                               ; preds = %dec_label_pc_1437d, %dec_label_pc_143e7
  %19 = bitcast ptr %2 to ptr
  %20 = call i32 @globalReturnsTrueOrFalse()
  call void @printStructLine(ptr %19)
  ret void
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

