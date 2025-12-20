@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_27eca:
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
  br i1 %5, label %dec_label_pc_27f57, label %dec_label_pc_27f04

dec_label_pc_27f04:                               ; preds = %dec_label_pc_27eca, %dec_label_pc_27f04
  %storemerge4.reload = load i64, ptr %storemerge4.reg2mem, align 8
  %7 = mul i64 %storemerge4.reload, 8
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i64 5, ptr %9, align 8
  %10 = add nuw nsw i64 %storemerge4.reload, 1
  %exitcond5 = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge4.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_27f2a, label %dec_label_pc_27f04

dec_label_pc_27f2a:                               ; preds = %dec_label_pc_27f04
  %11 = icmp eq i64 %6, 0
  br i1 %11, label %dec_label_pc_27f7d, label %dec_label_pc_27f31

dec_label_pc_27f31:                               ; preds = %dec_label_pc_27f2a
  %12 = inttoptr i64 %6 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  br label %dec_label_pc_27f7d

dec_label_pc_27f57:                               ; preds = %dec_label_pc_27eca, %dec_label_pc_27f57
  %storemerge23.reload = load i64, ptr %storemerge23.reg2mem, align 8
  %15 = mul i64 %storemerge23.reload, 8
  %16 = add i64 %15, %6
  %17 = inttoptr i64 %16 to ptr
  store i64 5, ptr %17, align 8
  %18 = add nuw nsw i64 %storemerge23.reload, 1
  %exitcond = icmp eq i64 %18, 100
  store i64 %18, ptr %storemerge23.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_27f7d, label %dec_label_pc_27f57

dec_label_pc_27f7d:                               ; preds = %dec_label_pc_27f57, %dec_label_pc_27f31, %dec_label_pc_27f2a
  %19 = call i32 @globalReturnsTrueOrFalse()
  %20 = icmp eq i32 %19, 0
  %21 = icmp eq i1 %20, false
  %22 = zext i1 %21 to i64
  %23 = and i32 %19, -256
  %24 = sext i32 %23 to i64
  %25 = or i64 %22, %24
  %26 = icmp eq i1 %21, false
  store i64 %25, ptr %rax.0.reg2mem, align 8
  br i1 %26, label %dec_label_pc_27f9a, label %dec_label_pc_27f8b

dec_label_pc_27f8b:                               ; preds = %dec_label_pc_27f7d
  %27 = inttoptr i64 %6 to ptr
  %28 = load i64, ptr %27, align 8
  call void @printLongLine(i64 %28)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_27f9a

dec_label_pc_27f9a:                               ; preds = %dec_label_pc_27f8b, %dec_label_pc_27f7d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

