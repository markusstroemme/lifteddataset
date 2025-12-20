define void @anon0() local_unnamed_addr {
dec_label_pc_4358c:
  %storemerge2.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %dataGoodBuffer_-240 = alloca [100 x i8], align 8
  %dataGoodBuffer_-248 = alloca [100 x i8], align 8
  %stack_var_-232 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-232 to i64
  %2 = bitcast ptr %stack_var_-232 to ptr
  store i8 0, ptr %2, align 8
  %3 = trunc i64 %1 to i8
  %4 = insertvalue [100 x i8] undef, i8 %3, 0
  store [100 x i8] %4, ptr %dataGoodBuffer_-248, align 8
  %5 = bitcast ptr %dataGoodBuffer_-248 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i8
  %8 = insertvalue [100 x i8] undef, i8 %7, 0
  store [100 x i8] %8, ptr %dataGoodBuffer_-240, align 8
  %9 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %10 = bitcast ptr %dataGoodBuffer_-240 to ptr
  %11 = load i64, ptr %10, align 8
  %12 = ptrtoint ptr %stack_var_-120 to i64
  store i64 %11, ptr %.reg2mem, align 8
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_43605

dec_label_pc_43605:                               ; preds = %dec_label_pc_4358c, %dec_label_pc_43605
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %13 = ptrtoint ptr %storemerge2.reload to i64
  %14 = add i64 %.reload, %13
  %15 = add i64 %13, %12
  %16 = inttoptr i64 %15 to ptr
  %17 = load i8, ptr %16, align 1
  %18 = inttoptr i64 %14 to ptr
  store i8 %17, ptr %18, align 1
  %19 = add i64 %13, 1
  %20 = inttoptr i64 %19 to ptr
  %21 = icmp ugt ptr %20, inttoptr (i64 99 to ptr)
  %22 = load i64, ptr %10, align 8
  store i64 %22, ptr %.reg2mem, align 8
  store ptr %20, ptr %storemerge2.reg2mem, align 8
  br i1 %21, label %dec_label_pc_4363b, label %dec_label_pc_43605

dec_label_pc_4363b:                               ; preds = %dec_label_pc_43605
  %23 = add i64 %22, 99
  %24 = inttoptr i64 %23 to ptr
  store i8 0, ptr %24, align 1
  %25 = load i64, ptr %10, align 8
  %26 = inttoptr i64 %25 to ptr
  call void @printLine(ptr %26)
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_4366d, label %dec_label_pc_43668

dec_label_pc_43668:                               ; preds = %dec_label_pc_4363b
  call void @__stack_chk_fail()
  br label %dec_label_pc_4366d

dec_label_pc_4366d:                               ; preds = %dec_label_pc_43668, %dec_label_pc_4363b
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

