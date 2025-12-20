define void @anon0() local_unnamed_addr {
dec_label_pc_4379a:
  %storemerge3.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %dataGoodBuffer_-240 = alloca [100 x i8], align 8
  %stack_var_-232 = alloca i64, align 8
  %dataGoodBuffer_-248 = alloca [100 x i8], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-232 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [100 x i8] undef, i8 %2, 0
  store [100 x i8] %3, ptr %dataGoodBuffer_-248, align 8
  %4 = bitcast ptr %dataGoodBuffer_-248 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = load i64, ptr %4, align 8
  %8 = trunc i64 %7 to i8
  %9 = insertvalue [100 x i8] undef, i8 %8, 0
  store [100 x i8] %9, ptr %dataGoodBuffer_-240, align 8
  %10 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %11 = bitcast ptr %dataGoodBuffer_-240 to ptr
  %12 = load i64, ptr %11, align 8
  %13 = ptrtoint ptr %stack_var_-120 to i64
  store i64 %12, ptr %.reg2mem, align 8
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_43846

dec_label_pc_43846:                               ; preds = %dec_label_pc_4379a, %dec_label_pc_43846
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %14 = ptrtoint ptr %storemerge3.reload to i64
  %15 = add i64 %.reload, %14
  %16 = add i64 %14, %13
  %17 = inttoptr i64 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = inttoptr i64 %15 to ptr
  store i8 %18, ptr %19, align 1
  %20 = add i64 %14, 1
  %21 = inttoptr i64 %20 to ptr
  %22 = icmp ugt ptr %21, inttoptr (i64 99 to ptr)
  %23 = load i64, ptr %11, align 8
  store i64 %23, ptr %.reg2mem, align 8
  store ptr %21, ptr %storemerge3.reg2mem, align 8
  br i1 %22, label %dec_label_pc_4387c, label %dec_label_pc_43846

dec_label_pc_4387c:                               ; preds = %dec_label_pc_43846
  %24 = add i64 %23, 99
  %25 = inttoptr i64 %24 to ptr
  store i8 0, ptr %25, align 1
  %26 = load i64, ptr %11, align 8
  %27 = inttoptr i64 %26 to ptr
  call void @printLine(ptr %27)
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %0, %28
  br i1 %29, label %dec_label_pc_438ae, label %dec_label_pc_438a9

dec_label_pc_438a9:                               ; preds = %dec_label_pc_4387c
  call void @__stack_chk_fail()
  br label %dec_label_pc_438ae

dec_label_pc_438ae:                               ; preds = %dec_label_pc_438a9, %dec_label_pc_4387c
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

