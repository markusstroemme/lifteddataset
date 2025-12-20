@global_var_7c82d = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_d710:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 400)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_d75e, label %dec_label_pc_d754

dec_label_pc_d754:                                ; preds = %dec_label_pc_d710
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d75e:                                ; preds = %dec_label_pc_d710
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %6 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 100)
  %7 = add i64 %5, -816
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_d782

dec_label_pc_d782:                                ; preds = %dec_label_pc_d75e, %dec_label_pc_d782
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %8 = ptrtoint ptr %storemerge1.reload to i64
  %9 = mul i64 %8, 8
  %10 = add i64 %9, %4
  %11 = add i64 %7, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i64, ptr %12, align 8
  %14 = inttoptr i64 %10 to ptr
  store i64 %13, ptr %14, align 8
  %15 = add i64 %8, 1
  %16 = inttoptr i64 %15 to ptr
  %17 = icmp ugt ptr %16, inttoptr (i64 99 to ptr)
  store ptr %16, ptr %storemerge1.reg2mem, align 8
  br i1 %17, label %dec_label_pc_d7bf, label %dec_label_pc_d782

dec_label_pc_d7bf:                                ; preds = %dec_label_pc_d782
  %18 = load i64, ptr %1, align 8
  call void @printLongLongLine(i64 %18)
  call void @free(ptr %1)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  br i1 %20, label %dec_label_pc_d7f5, label %dec_label_pc_d7f0

dec_label_pc_d7f0:                                ; preds = %dec_label_pc_d7bf
  call void @__stack_chk_fail()
  br label %dec_label_pc_d7f5

dec_label_pc_d7f5:                                ; preds = %dec_label_pc_d7f0, %dec_label_pc_d7bf
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_658c4:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c82d, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

