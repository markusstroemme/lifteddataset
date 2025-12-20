@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_109ac:
  %storemerge13.reg2mem = alloca i64, align 8
  %storemerge4.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %1, label %dec_label_pc_10a1f, label %dec_label_pc_109ce

dec_label_pc_109ce:                               ; preds = %dec_label_pc_109ac
  store i64 0, ptr %storemerge4.reg2mem, align 8
  br i1 %5, label %dec_label_pc_109f7, label %dec_label_pc_109e3

dec_label_pc_109e3:                               ; preds = %dec_label_pc_109ce
  call void @exit(i32 -1)
  unreachable

dec_label_pc_109f7:                               ; preds = %dec_label_pc_109ce, %dec_label_pc_109f7
  %storemerge4.reload = load i64, ptr %storemerge4.reg2mem, align 8
  %6 = mul i64 %storemerge4.reload, 8
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i64 5, ptr %8, align 8
  %9 = add nuw nsw i64 %storemerge4.reload, 1
  %exitcond5 = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge4.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_10a6e, label %dec_label_pc_109f7

dec_label_pc_10a1f:                               ; preds = %dec_label_pc_109ac
  store i64 0, ptr %storemerge13.reg2mem, align 8
  br i1 %5, label %dec_label_pc_10a48, label %dec_label_pc_10a34

dec_label_pc_10a34:                               ; preds = %dec_label_pc_10a1f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_10a48:                               ; preds = %dec_label_pc_10a1f, %dec_label_pc_10a48
  %storemerge13.reload = load i64, ptr %storemerge13.reg2mem, align 8
  %10 = mul i64 %storemerge13.reload, 8
  %11 = add i64 %10, %3
  %12 = inttoptr i64 %11 to ptr
  store i64 5, ptr %12, align 8
  %13 = add nuw nsw i64 %storemerge13.reload, 1
  %exitcond = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge13.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_10a6e, label %dec_label_pc_10a48

dec_label_pc_10a6e:                               ; preds = %dec_label_pc_109f7, %dec_label_pc_10a48
  %14 = call i32 @globalReturnsTrueOrFalse()
  %15 = load i64, ptr %2, align 8
  call void @printLongLine(i64 %15)
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
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

