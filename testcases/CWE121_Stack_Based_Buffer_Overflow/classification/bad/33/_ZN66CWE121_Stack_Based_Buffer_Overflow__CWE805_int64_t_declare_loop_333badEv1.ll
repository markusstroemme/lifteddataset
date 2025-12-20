@global_var_bb9b5 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_82e15:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-1224 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %stack_var_-1224 to i64
  %3 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %3, i64 0, i64 100)
  %4 = add i64 %0, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_82e84

dec_label_pc_82e84:                               ; preds = %dec_label_pc_82e84, %dec_label_pc_82e15
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %5 = mul i64 %storemerge1.reload, 8
  %6 = add i64 %5, %2
  %7 = add i64 %4, %5
  %8 = inttoptr i64 %7 to ptr
  %9 = load i64, ptr %8, align 8
  %10 = inttoptr i64 %6 to ptr
  store i64 %9, ptr %10, align 8
  %11 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_82ec1, label %dec_label_pc_82e84

dec_label_pc_82ec1:                               ; preds = %dec_label_pc_82e84
  %12 = load i64, ptr %stack_var_-1224, align 8
  call void @printLongLongLine(i64 %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %1, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_82ee8, label %dec_label_pc_82ee3

dec_label_pc_82ee3:                               ; preds = %dec_label_pc_82ec1
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_82ee8

dec_label_pc_82ee8:                               ; preds = %dec_label_pc_82ee3, %dec_label_pc_82ec1
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

