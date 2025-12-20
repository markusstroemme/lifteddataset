define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_43b94:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = ptrtoint ptr %data to i64
  %3 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_43bdd

dec_label_pc_43bdd:                               ; preds = %dec_label_pc_43bdd, %dec_label_pc_43b94
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %4 = add i64 %storemerge2.reload, %2
  %5 = add i64 %storemerge2.reload, %3
  %6 = inttoptr i64 %5 to ptr
  %7 = load i8, ptr %6, align 1
  %8 = inttoptr i64 %4 to ptr
  store i8 %7, ptr %8, align 1
  %9 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_43c07, label %dec_label_pc_43bdd

dec_label_pc_43c07:                               ; preds = %dec_label_pc_43bdd
  %10 = add i64 %2, 99
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  call void @printLine(ptr %data)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_43c39, label %dec_label_pc_43c34

dec_label_pc_43c34:                               ; preds = %dec_label_pc_43c07
  call void @__stack_chk_fail()
  br label %dec_label_pc_43c39

dec_label_pc_43c39:                               ; preds = %dec_label_pc_43c34, %dec_label_pc_43c07
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_43c3b:
  %dataBadBuffer_-128 = alloca [50 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
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
  %8 = inttoptr i64 %7 to ptr
  call void @anon0(ptr %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_43c86, label %dec_label_pc_43c81

dec_label_pc_43c81:                               ; preds = %dec_label_pc_43c3b
  call void @__stack_chk_fail()
  br label %dec_label_pc_43c86

dec_label_pc_43c86:                               ; preds = %dec_label_pc_43c81, %dec_label_pc_43c3b
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

