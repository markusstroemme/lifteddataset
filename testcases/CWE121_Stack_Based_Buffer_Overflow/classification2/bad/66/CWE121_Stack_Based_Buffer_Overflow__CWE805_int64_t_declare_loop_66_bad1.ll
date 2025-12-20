@global_var_bb9b5 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2e769:
  %stack_var_-872 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-872 to ptr
  call void @anon1(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_2e7c7, label %dec_label_pc_2e7c2

dec_label_pc_2e7c2:                               ; preds = %dec_label_pc_2e769
  call void @__stack_chk_fail()
  br label %dec_label_pc_2e7c7

dec_label_pc_2e7c7:                               ; preds = %dec_label_pc_2e7c2, %dec_label_pc_2e769
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_2e83e:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %dataArray to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 100)
  %7 = add i64 %0, -816
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_2e899

dec_label_pc_2e899:                               ; preds = %dec_label_pc_2e83e, %dec_label_pc_2e899
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %8 = ptrtoint ptr %storemerge1.reload to i64
  %9 = mul i64 %8, 8
  %10 = add i64 %9, %5
  %11 = add i64 %7, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i64, ptr %12, align 8
  %14 = inttoptr i64 %10 to ptr
  store i64 %13, ptr %14, align 8
  %15 = add i64 %8, 1
  %16 = inttoptr i64 %15 to ptr
  %17 = icmp ugt ptr %16, inttoptr (i64 99 to ptr)
  store ptr %16, ptr %storemerge1.reg2mem, align 8
  br i1 %17, label %dec_label_pc_2e8d6, label %dec_label_pc_2e899

dec_label_pc_2e8d6:                               ; preds = %dec_label_pc_2e899
  %18 = inttoptr i64 %5 to ptr
  %19 = load i64, ptr %18, align 8
  call void @printLongLongLine(i64 %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %1, %20
  br i1 %21, label %dec_label_pc_2e8fd, label %dec_label_pc_2e8f8

dec_label_pc_2e8f8:                               ; preds = %dec_label_pc_2e8d6
  call void @__stack_chk_fail()
  br label %dec_label_pc_2e8fd

dec_label_pc_2e8fd:                               ; preds = %dec_label_pc_2e8f8, %dec_label_pc_2e8d6
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

