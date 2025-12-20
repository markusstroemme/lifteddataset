@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_f620:
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_f67c, label %dec_label_pc_f657

dec_label_pc_f657:                                ; preds = %dec_label_pc_f620
  br i1 %5, label %dec_label_pc_f6a1, label %dec_label_pc_f672

dec_label_pc_f672:                                ; preds = %dec_label_pc_f657
  call void @exit(i32 -1)
  unreachable

dec_label_pc_f67c:                                ; preds = %dec_label_pc_f620
  br i1 %5, label %dec_label_pc_f6a1, label %dec_label_pc_f697

dec_label_pc_f697:                                ; preds = %dec_label_pc_f67c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_f6a1:                                ; preds = %dec_label_pc_f67c, %dec_label_pc_f657
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %7 = ptrtoint ptr %3 to i64
  %8 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %8, i64 0, i64 100)
  %9 = add i64 %6, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_f6c5

dec_label_pc_f6c5:                                ; preds = %dec_label_pc_f6c5, %dec_label_pc_f6a1
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %10 = mul i64 %storemerge1.reload, 8
  %11 = add i64 %10, %7
  %12 = add i64 %9, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i64, ptr %13, align 8
  %15 = inttoptr i64 %11 to ptr
  store i64 %14, ptr %15, align 8
  %16 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %16, 100
  store i64 %16, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_f702, label %dec_label_pc_f6c5

dec_label_pc_f702:                                ; preds = %dec_label_pc_f6c5
  %17 = load i64, ptr %3, align 8
  call void @printLongLongLine(i64 %17)
  call void @free(ptr %3)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  br i1 %19, label %dec_label_pc_f738, label %dec_label_pc_f733

dec_label_pc_f733:                                ; preds = %dec_label_pc_f702
  call void @__stack_chk_fail()
  br label %dec_label_pc_f738

dec_label_pc_f738:                                ; preds = %dec_label_pc_f733, %dec_label_pc_f702
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_658c4:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c82d, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_65cd4:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

