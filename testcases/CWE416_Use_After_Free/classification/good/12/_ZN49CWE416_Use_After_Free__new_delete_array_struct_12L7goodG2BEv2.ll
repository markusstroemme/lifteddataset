@global_var_320 = external constant [20 x i8]
@global_var_4a96e = external constant [10 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2b7be:
  %storemerge24.reg2mem = alloca i64, align 8
  %storemerge5.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  %4 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge5.reg2mem, align 8
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br i1 %3, label %dec_label_pc_2b851, label %dec_label_pc_2b7f8

dec_label_pc_2b7f8:                               ; preds = %dec_label_pc_2b7be, %dec_label_pc_2b7f8
  %storemerge5.reload = load i64, ptr %storemerge5.reg2mem, align 8
  %5 = mul i64 %storemerge5.reload, 8
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  %8 = add i64 %6, 4
  %9 = inttoptr i64 %8 to ptr
  store i32 2, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge5.reload, 1
  %exitcond6 = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge5.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_2b890, label %dec_label_pc_2b7f8

dec_label_pc_2b851:                               ; preds = %dec_label_pc_2b7be, %dec_label_pc_2b851
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %11 = mul i64 %storemerge24.reload, 8
  %12 = add i64 %11, %4
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  %14 = add i64 %12, 4
  %15 = inttoptr i64 %14 to ptr
  store i32 2, ptr %15, align 4
  %16 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond = icmp eq i64 %16, 100
  store i64 %16, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2b890, label %dec_label_pc_2b851

dec_label_pc_2b890:                               ; preds = %dec_label_pc_2b7f8, %dec_label_pc_2b851
  %17 = inttoptr i64 %4 to ptr
  %18 = call i32 @globalReturnsTrueOrFalse()
  call void @printStructLine(ptr %17)
  ret i64 ptrtoint (ptr @0 to i64)
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

