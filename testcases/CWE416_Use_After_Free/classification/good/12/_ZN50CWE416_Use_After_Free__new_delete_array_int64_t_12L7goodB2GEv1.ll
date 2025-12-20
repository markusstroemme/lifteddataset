@global_var_320 = external constant [20 x i8]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_21c2a:
  %0 = alloca i64, align 8
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
  br i1 %5, label %dec_label_pc_21cb7, label %dec_label_pc_21c64

dec_label_pc_21c64:                               ; preds = %dec_label_pc_21c2a, %dec_label_pc_21c64
  %storemerge4.reload = load i64, ptr %storemerge4.reg2mem, align 8
  %7 = mul i64 %storemerge4.reload, 8
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i64 5, ptr %9, align 8
  %10 = add nuw nsw i64 %storemerge4.reload, 1
  %exitcond5 = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge4.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_21c8a, label %dec_label_pc_21c64

dec_label_pc_21c8a:                               ; preds = %dec_label_pc_21c64
  %11 = icmp eq i64 %6, 0
  br i1 %11, label %dec_label_pc_21cf0, label %dec_label_pc_21c91

dec_label_pc_21c91:                               ; preds = %dec_label_pc_21c8a
  %12 = inttoptr i64 %6 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  br label %dec_label_pc_21cf0

dec_label_pc_21cb7:                               ; preds = %dec_label_pc_21c2a, %dec_label_pc_21cb7
  %storemerge23.reload = load i64, ptr %storemerge23.reg2mem, align 8
  %15 = mul i64 %storemerge23.reload, 8
  %16 = add i64 %15, %6
  %17 = inttoptr i64 %16 to ptr
  store i64 5, ptr %17, align 8
  %18 = add nuw nsw i64 %storemerge23.reload, 1
  %exitcond = icmp eq i64 %18, 100
  store i64 %18, ptr %storemerge23.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_21cdd, label %dec_label_pc_21cb7

dec_label_pc_21cdd:                               ; preds = %dec_label_pc_21cb7
  %19 = icmp eq i64 %6, 0
  br i1 %19, label %dec_label_pc_21cf0, label %dec_label_pc_21ce4

dec_label_pc_21ce4:                               ; preds = %dec_label_pc_21cdd
  %20 = inttoptr i64 %6 to ptr
  %21 = and i64 %1, 4294967295
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %20, ptr %22)
  br label %dec_label_pc_21cf0

dec_label_pc_21cf0:                               ; preds = %dec_label_pc_21ce4, %dec_label_pc_21cdd, %dec_label_pc_21c91, %dec_label_pc_21c8a
  %23 = call i32 @globalReturnsTrueOrFalse()
  %24 = sext i32 %23 to i64
  ret i64 %24
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3bd35:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

