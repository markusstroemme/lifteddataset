@global_var_320 = external constant [20 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2a6e8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  %2 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 100)
  %3 = inttoptr i64 %1 to ptr
  %4 = call ptr @memcpy(ptr %3, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %5 = load i64, ptr %3, align 8
  call void @printLongLongLine(i64 %5)
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %dec_label_pc_2a7a1, label %dec_label_pc_2a792

dec_label_pc_2a792:                               ; preds = %dec_label_pc_2a6e8
  %7 = ptrtoint ptr %stack_var_-824 to i64
  %8 = and i64 %7, 4294967288
  %9 = inttoptr i64 %8 to ptr
  call void @_ZdaPv(ptr %3, ptr %9)
  br label %dec_label_pc_2a7a1

dec_label_pc_2a7a1:                               ; preds = %dec_label_pc_2a792, %dec_label_pc_2a6e8
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_2a7b6, label %dec_label_pc_2a7b1

dec_label_pc_2a7b1:                               ; preds = %dec_label_pc_2a7a1
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2a7b6

dec_label_pc_2a7b6:                               ; preds = %dec_label_pc_2a7b1, %dec_label_pc_2a7a1
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_4da96:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609e9, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

