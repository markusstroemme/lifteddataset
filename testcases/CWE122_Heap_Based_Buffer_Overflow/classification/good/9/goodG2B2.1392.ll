@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_ede4:
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_ee3c, label %dec_label_pc_ee32

dec_label_pc_ee32:                                ; preds = %dec_label_pc_ede4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_ee3c:                                ; preds = %dec_label_pc_ede4
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %6 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 100)
  %7 = add i64 %5, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_ee60

dec_label_pc_ee60:                                ; preds = %dec_label_pc_ee60, %dec_label_pc_ee3c
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %8 = mul i64 %storemerge1.reload, 8
  %9 = add i64 %8, %4
  %10 = add i64 %7, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i64, ptr %11, align 8
  %13 = inttoptr i64 %9 to ptr
  store i64 %12, ptr %13, align 8
  %14 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %14, 100
  store i64 %14, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_ee9d, label %dec_label_pc_ee60

dec_label_pc_ee9d:                                ; preds = %dec_label_pc_ee60
  %15 = load i64, ptr %1, align 8
  call void @printLongLongLine(i64 %15)
  call void @free(ptr %1)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_eed3, label %dec_label_pc_eece

dec_label_pc_eece:                                ; preds = %dec_label_pc_ee9d
  call void @__stack_chk_fail()
  br label %dec_label_pc_eed3

dec_label_pc_eed3:                                ; preds = %dec_label_pc_eece, %dec_label_pc_ee9d
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

