@global_var_bb9b5 = external constant [5 x i8]
@0 = external global i32
@global_var_320 = external constant i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_856fe:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-1624 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %1, i64 0, i64 100)
  %2 = call ptr @memmove(ptr nonnull %stack_var_-1624, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = load i64, ptr %stack_var_-1624, align 8
  call void @printLongLongLine(i64 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_857a5, label %dec_label_pc_857a0

dec_label_pc_857a0:                               ; preds = %dec_label_pc_856fe
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_857a5

dec_label_pc_857a5:                               ; preds = %dec_label_pc_857a0, %dec_label_pc_856fe
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

