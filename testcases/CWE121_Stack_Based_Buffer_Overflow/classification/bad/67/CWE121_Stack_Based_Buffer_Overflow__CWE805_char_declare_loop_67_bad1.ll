define void @anon0() local_unnamed_addr {
dec_label_pc_452a7:
  %dataBadBuffer_-128 = alloca [50 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %dataBadBuffer_-136 = alloca [50 x i8], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [50 x i8] undef, i8 %2, 0
  store [50 x i8] %3, ptr %dataBadBuffer_-128, align 8
  %4 = bitcast ptr %dataBadBuffer_-128 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = load i64, ptr %4, align 8
  %8 = trunc i64 %7 to i8
  %9 = insertvalue [50 x i8] undef, i8 %8, 0
  store [50 x i8] %9, ptr %dataBadBuffer_-136, align 8
  %10 = bitcast ptr %dataBadBuffer_-136 to ptr
  %11 = load i64, ptr %10, align 8
  call void @anon1(i64 %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_452fa, label %dec_label_pc_452f5

dec_label_pc_452f5:                               ; preds = %dec_label_pc_452a7
  call void @__stack_chk_fail()
  br label %dec_label_pc_452fa

dec_label_pc_452fa:                               ; preds = %dec_label_pc_452f5, %dec_label_pc_452a7
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_45366:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = ptrtoint ptr %stack_var_-120 to i64
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_453ba

dec_label_pc_453ba:                               ; preds = %dec_label_pc_45366, %dec_label_pc_453ba
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %3 = ptrtoint ptr %storemerge1.reload to i64
  %4 = add i64 %3, %myStruct
  %5 = add i64 %3, %2
  %6 = inttoptr i64 %5 to ptr
  %7 = load i8, ptr %6, align 1
  %8 = inttoptr i64 %4 to ptr
  store i8 %7, ptr %8, align 1
  %9 = add i64 %3, 1
  %10 = inttoptr i64 %9 to ptr
  %11 = icmp ugt ptr %10, inttoptr (i64 99 to ptr)
  store ptr %10, ptr %storemerge1.reg2mem, align 8
  br i1 %11, label %dec_label_pc_453e1, label %dec_label_pc_453ba

dec_label_pc_453e1:                               ; preds = %dec_label_pc_453ba
  %12 = add i64 %myStruct, 99
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  %14 = inttoptr i64 %myStruct to ptr
  call void @printLine(ptr %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_4540d, label %dec_label_pc_45408

dec_label_pc_45408:                               ; preds = %dec_label_pc_453e1
  call void @__stack_chk_fail()
  br label %dec_label_pc_4540d

dec_label_pc_4540d:                               ; preds = %dec_label_pc_45408, %dec_label_pc_453e1
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

