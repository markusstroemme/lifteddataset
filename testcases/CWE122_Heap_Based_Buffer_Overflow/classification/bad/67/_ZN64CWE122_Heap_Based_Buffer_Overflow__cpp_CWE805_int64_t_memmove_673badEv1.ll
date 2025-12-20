@global_var_320 = external constant [20 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_32f00:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 400)
  %2 = call i64 @anon1(i64 %1)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_32f5a, label %dec_label_pc_32f55

dec_label_pc_32f55:                               ; preds = %dec_label_pc_32f00
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_32f5a

dec_label_pc_32f5a:                               ; preds = %dec_label_pc_32f55, %dec_label_pc_32f00
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_32fc8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %1, i64 0, i64 100)
  %2 = inttoptr i64 %arg1 to ptr
  %3 = call ptr @memmove(ptr %2, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printLongLongLine(i64 %arg1)
  %4 = icmp eq i64 %arg1, 0
  br i1 %4, label %dec_label_pc_3305b, label %dec_label_pc_3304c

dec_label_pc_3304c:                               ; preds = %dec_label_pc_32fc8
  %5 = ptrtoint ptr %stack_var_-824 to i64
  %6 = and i64 %5, 4294967288
  %7 = inttoptr i64 %6 to ptr
  call void @_ZdaPv(ptr %2, ptr %7)
  br label %dec_label_pc_3305b

dec_label_pc_3305b:                               ; preds = %dec_label_pc_3304c, %dec_label_pc_32fc8
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_33070, label %dec_label_pc_3306b

dec_label_pc_3306b:                               ; preds = %dec_label_pc_3305b
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_33070

dec_label_pc_33070:                               ; preds = %dec_label_pc_3306b, %dec_label_pc_3305b
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

