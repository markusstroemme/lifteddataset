@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2806d:
  %storemerge24.reg2mem = alloca i64, align 8
  %storemerge5.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  %4 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge5.reg2mem, align 8
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br i1 %3, label %dec_label_pc_280e7, label %dec_label_pc_280a7

dec_label_pc_280a7:                               ; preds = %dec_label_pc_2806d, %dec_label_pc_280a7
  %storemerge5.reload = load i64, ptr %storemerge5.reg2mem, align 8
  %5 = mul i64 %storemerge5.reload, 8
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i64 5, ptr %7, align 8
  %8 = add nuw nsw i64 %storemerge5.reload, 1
  %exitcond6 = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge5.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_2810d, label %dec_label_pc_280a7

dec_label_pc_280e7:                               ; preds = %dec_label_pc_2806d, %dec_label_pc_280e7
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %9 = mul i64 %storemerge24.reload, 8
  %10 = add i64 %9, %4
  %11 = inttoptr i64 %10 to ptr
  store i64 5, ptr %11, align 8
  %12 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2810d, label %dec_label_pc_280e7

dec_label_pc_2810d:                               ; preds = %dec_label_pc_280a7, %dec_label_pc_280e7
  %13 = call i32 @globalReturnsTrueOrFalse()
  %14 = inttoptr i64 %4 to ptr
  %15 = load i64, ptr %14, align 8
  call void @printLongLine(i64 %15)
  ret i64 ptrtoint (ptr @0 to i64)
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

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

