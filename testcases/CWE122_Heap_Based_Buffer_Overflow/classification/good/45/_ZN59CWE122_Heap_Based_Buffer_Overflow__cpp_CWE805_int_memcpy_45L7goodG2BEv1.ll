@global_var_7f208 = external local_unnamed_addr global i64
@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_442aa:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @global_var_7f208, align 8
  %2 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 50)
  %3 = inttoptr i64 %1 to ptr
  %4 = call ptr @memcpy(ptr %3, ptr nonnull %stack_var_-424, i32 400)
  %5 = inttoptr i64 %1 to ptr
  %6 = load i32, ptr %5, align 4
  call void @printIntLine(i32 %6)
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %dec_label_pc_44334, label %dec_label_pc_44325

dec_label_pc_44325:                               ; preds = %dec_label_pc_442aa
  %8 = ptrtoint ptr %stack_var_-424 to i64
  %9 = and i64 %8, 4294967288
  %10 = inttoptr i64 %9 to ptr
  call void @_ZdaPv(ptr %3, ptr %10)
  br label %dec_label_pc_44334

dec_label_pc_44334:                               ; preds = %dec_label_pc_44325, %dec_label_pc_442aa
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_44349, label %dec_label_pc_44344

dec_label_pc_44344:                               ; preds = %dec_label_pc_44334
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_44349

dec_label_pc_44349:                               ; preds = %dec_label_pc_44344, %dec_label_pc_44334
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_4434b:
  %0 = call i64 @_Znam(i64 400)
  store i64 %0, ptr @global_var_7f208, align 8
  %1 = call i64 @anon0()
  ret i64 %1
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

