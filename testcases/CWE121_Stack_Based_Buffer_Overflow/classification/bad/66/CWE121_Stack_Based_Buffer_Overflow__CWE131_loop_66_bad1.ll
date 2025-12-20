@global_var_1000 = external global ptr
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4e76e:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %data_-72 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4e7bf

dec_label_pc_4e7bf:                               ; preds = %dec_label_pc_4e7bf, %dec_label_pc_4e76e
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4e7d6, label %dec_label_pc_4e7bf

dec_label_pc_4e7d6:                               ; preds = %dec_label_pc_4e7bf
  %4 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  br i1 %6, label %dec_label_pc_4e83c, label %dec_label_pc_4e837

dec_label_pc_4e837:                               ; preds = %dec_label_pc_4e7d6
  call void @__stack_chk_fail()
  br label %dec_label_pc_4e83c

dec_label_pc_4e83c:                               ; preds = %dec_label_pc_4e837, %dec_label_pc_4e7d6
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_4e923:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %dataArray to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = add i64 %0, -48
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_4e980

dec_label_pc_4e980:                               ; preds = %dec_label_pc_4e923, %dec_label_pc_4e980
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge2.reload to i64
  %8 = mul i64 %7, 4
  %9 = add i64 %8, %5
  %10 = add i64 %6, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = inttoptr i64 %9 to ptr
  store i32 %12, ptr %13, align 4
  %14 = add i64 %7, 1
  %15 = inttoptr i64 %14 to ptr
  %16 = icmp ugt ptr %15, inttoptr (i64 9 to ptr)
  store ptr %15, ptr %storemerge2.reg2mem, align 8
  br i1 %16, label %dec_label_pc_4e9a9, label %dec_label_pc_4e980

dec_label_pc_4e9a9:                               ; preds = %dec_label_pc_4e980
  %17 = inttoptr i64 %5 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  br i1 %20, label %dec_label_pc_4e9cb, label %dec_label_pc_4e9c6

dec_label_pc_4e9c6:                               ; preds = %dec_label_pc_4e9a9
  call void @__stack_chk_fail()
  br label %dec_label_pc_4e9cb

dec_label_pc_4e9cb:                               ; preds = %dec_label_pc_4e9c6, %dec_label_pc_4e9a9
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

