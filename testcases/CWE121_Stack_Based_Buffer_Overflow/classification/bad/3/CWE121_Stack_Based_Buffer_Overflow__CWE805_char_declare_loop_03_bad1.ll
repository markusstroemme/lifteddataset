define void @anon0() local_unnamed_addr {
dec_label_pc_40e0c:
  %storemerge1.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %dataBadBuffer_-192 = alloca [50 x i8], align 8
  %stack_var_-184 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-184 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [50 x i8] undef, i8 %2, 0
  store [50 x i8] %3, ptr %dataBadBuffer_-192, align 8
  %4 = bitcast ptr %dataBadBuffer_-192 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = load i64, ptr %4, align 8
  %9 = ptrtoint ptr %stack_var_-120 to i64
  store i64 %8, ptr %.reg2mem, align 8
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_40e69

dec_label_pc_40e69:                               ; preds = %dec_label_pc_40e0c, %dec_label_pc_40e69
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %10 = ptrtoint ptr %storemerge1.reload to i64
  %11 = add i64 %.reload, %10
  %12 = add i64 %10, %9
  %13 = inttoptr i64 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = inttoptr i64 %11 to ptr
  store i8 %14, ptr %15, align 1
  %16 = add i64 %10, 1
  %17 = inttoptr i64 %16 to ptr
  %18 = icmp ugt ptr %17, inttoptr (i64 99 to ptr)
  %19 = load i64, ptr %4, align 8
  store i64 %19, ptr %.reg2mem, align 8
  store ptr %17, ptr %storemerge1.reg2mem, align 8
  br i1 %18, label %dec_label_pc_40e9f, label %dec_label_pc_40e69

dec_label_pc_40e9f:                               ; preds = %dec_label_pc_40e69
  %20 = add i64 %19, 99
  %21 = inttoptr i64 %20 to ptr
  store i8 0, ptr %21, align 1
  %22 = load i64, ptr %4, align 8
  %23 = inttoptr i64 %22 to ptr
  call void @printLine(ptr %23)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %0, %24
  br i1 %25, label %dec_label_pc_40ed1, label %dec_label_pc_40ecc

dec_label_pc_40ecc:                               ; preds = %dec_label_pc_40e9f
  call void @__stack_chk_fail()
  br label %dec_label_pc_40ed1

dec_label_pc_40ed1:                               ; preds = %dec_label_pc_40ecc, %dec_label_pc_40e9f
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

