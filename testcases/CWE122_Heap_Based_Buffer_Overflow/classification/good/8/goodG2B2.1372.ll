@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define i32 @staticReturnsTrue.134() local_unnamed_addr {
dec_label_pc_e8c4:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_eadd:
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-840.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.134()
  %2 = icmp eq i32 %1, 0
  store i64 0, ptr %stack_var_-840.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_eb39, label %dec_label_pc_eb14

dec_label_pc_eb14:                                ; preds = %dec_label_pc_eadd
  %3 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 %4, ptr %stack_var_-840.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_eb39, label %dec_label_pc_eb2f

dec_label_pc_eb2f:                                ; preds = %dec_label_pc_eb14
  call void @exit(i32 -1)
  unreachable

dec_label_pc_eb39:                                ; preds = %dec_label_pc_eb14, %dec_label_pc_eadd
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-840.0.reload = load i64, ptr %stack_var_-840.0.reg2mem, align 8
  %8 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %8, i64 0, i64 100)
  %9 = add i64 %7, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_eb5d

dec_label_pc_eb5d:                                ; preds = %dec_label_pc_eb5d, %dec_label_pc_eb39
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %10 = mul i64 %storemerge1.reload, 8
  %11 = add i64 %10, %stack_var_-840.0.reload
  %12 = add i64 %9, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i64, ptr %13, align 8
  %15 = inttoptr i64 %11 to ptr
  store i64 %14, ptr %15, align 8
  %16 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %16, 100
  store i64 %16, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_eb9a, label %dec_label_pc_eb5d

dec_label_pc_eb9a:                                ; preds = %dec_label_pc_eb5d
  %17 = inttoptr i64 %stack_var_-840.0.reload to ptr
  %18 = load i64, ptr %17, align 8
  call void @printLongLongLine(i64 %18)
  call void @free(ptr %17)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  br i1 %20, label %dec_label_pc_ebd0, label %dec_label_pc_ebcb

dec_label_pc_ebcb:                                ; preds = %dec_label_pc_eb9a
  call void @__stack_chk_fail()
  br label %dec_label_pc_ebd0

dec_label_pc_ebd0:                                ; preds = %dec_label_pc_ebcb, %dec_label_pc_eb9a
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

