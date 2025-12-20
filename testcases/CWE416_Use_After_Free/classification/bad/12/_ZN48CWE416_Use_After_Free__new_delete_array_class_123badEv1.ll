@global_var_320 = external constant [20 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1e56c:
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
  br i1 %5, label %dec_label_pc_1e612, label %dec_label_pc_1e5a6

dec_label_pc_1e5a6:                               ; preds = %dec_label_pc_1e56c, %dec_label_pc_1e5a6
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
  br i1 %exitcond5, label %dec_label_pc_1e5e5, label %dec_label_pc_1e5a6

dec_label_pc_1e5e5:                               ; preds = %dec_label_pc_1e5a6
  %13 = icmp eq i64 %6, 0
  br i1 %13, label %dec_label_pc_1e651, label %dec_label_pc_1e5ec

dec_label_pc_1e5ec:                               ; preds = %dec_label_pc_1e5e5
  %14 = inttoptr i64 %6 to ptr
  %15 = and i64 %1, 4294967295
  %16 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %14, ptr %16)
  br label %dec_label_pc_1e651

dec_label_pc_1e612:                               ; preds = %dec_label_pc_1e56c, %dec_label_pc_1e612
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
  br i1 %exitcond, label %dec_label_pc_1e651, label %dec_label_pc_1e612

dec_label_pc_1e651:                               ; preds = %dec_label_pc_1e612, %dec_label_pc_1e5ec, %dec_label_pc_1e5e5
  %23 = call i32 @globalReturnsTrueOrFalse()
  %24 = icmp eq i32 %23, 0
  %25 = icmp eq i1 %24, false
  %26 = zext i1 %25 to i64
  %27 = and i32 %23, -256
  %28 = sext i32 %27 to i64
  %29 = or i64 %26, %28
  %30 = icmp eq i1 %25, false
  store i64 %29, ptr %rax.0.reg2mem, align 8
  br i1 %30, label %dec_label_pc_1e66c, label %dec_label_pc_1e65f

dec_label_pc_1e65f:                               ; preds = %dec_label_pc_1e651
  %31 = inttoptr i64 %6 to ptr
  %32 = load i32, ptr %31, align 4
  call void @printIntLine(i32 %32)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1e66c

dec_label_pc_1e66c:                               ; preds = %dec_label_pc_1e65f, %dec_label_pc_1e651
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

