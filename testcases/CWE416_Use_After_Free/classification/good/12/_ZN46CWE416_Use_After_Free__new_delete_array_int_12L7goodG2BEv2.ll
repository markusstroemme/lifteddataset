@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_24ea2:
  %storemerge24.reg2mem = alloca i64, align 8
  %storemerge5.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  %4 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge5.reg2mem, align 8
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br i1 %3, label %dec_label_pc_24f1b, label %dec_label_pc_24edc

dec_label_pc_24edc:                               ; preds = %dec_label_pc_24ea2, %dec_label_pc_24edc
  %storemerge5.reload = load i64, ptr %storemerge5.reg2mem, align 8
  %5 = mul i64 %storemerge5.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 5, ptr %7, align 4
  %8 = add nuw nsw i64 %storemerge5.reload, 1
  %exitcond6 = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge5.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_24f40, label %dec_label_pc_24edc

dec_label_pc_24f1b:                               ; preds = %dec_label_pc_24ea2, %dec_label_pc_24f1b
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %9 = mul i64 %storemerge24.reload, 4
  %10 = add i64 %9, %4
  %11 = inttoptr i64 %10 to ptr
  store i32 5, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_24f40, label %dec_label_pc_24f1b

dec_label_pc_24f40:                               ; preds = %dec_label_pc_24edc, %dec_label_pc_24f1b
  %13 = inttoptr i64 %4 to ptr
  %14 = call i32 @globalReturnsTrueOrFalse()
  %15 = load i32, ptr %13, align 4
  call void @printIntLine(i32 %15)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
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

