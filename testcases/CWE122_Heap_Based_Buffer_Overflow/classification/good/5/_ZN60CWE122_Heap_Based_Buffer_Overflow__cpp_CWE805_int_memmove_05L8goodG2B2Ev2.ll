@staticTrue = external local_unnamed_addr global i32
@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_47a95:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-432.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @staticTrue, align 4
  %2 = icmp eq i32 %1, 0
  store i64 0, ptr %stack_var_-432.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_47ad9, label %dec_label_pc_47ac8

dec_label_pc_47ac8:                               ; preds = %dec_label_pc_47a95
  %3 = call i64 @_Znam(i64 400)
  store i64 %3, ptr %stack_var_-432.0.reg2mem, align 8
  br label %dec_label_pc_47ad9

dec_label_pc_47ad9:                               ; preds = %dec_label_pc_47ac8, %dec_label_pc_47a95
  %stack_var_-432.0.reload = load i64, ptr %stack_var_-432.0.reg2mem, align 8
  %4 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 50)
  %5 = inttoptr i64 %stack_var_-432.0.reload to ptr
  %6 = call ptr @memmove(ptr %5, ptr nonnull %stack_var_-424, i32 400)
  %7 = inttoptr i64 %stack_var_-432.0.reload to ptr
  %8 = load i32, ptr %7, align 4
  call void @printIntLine(i32 %8)
  %9 = icmp eq i64 %stack_var_-432.0.reload, 0
  br i1 %9, label %dec_label_pc_47b37, label %dec_label_pc_47b28

dec_label_pc_47b28:                               ; preds = %dec_label_pc_47ad9
  %10 = ptrtoint ptr %stack_var_-424 to i64
  %11 = and i64 %10, 4294967288
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %5, ptr %12)
  br label %dec_label_pc_47b37

dec_label_pc_47b37:                               ; preds = %dec_label_pc_47b28, %dec_label_pc_47ad9
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_47b4c, label %dec_label_pc_47b47

dec_label_pc_47b47:                               ; preds = %dec_label_pc_47b37
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_47b4c

dec_label_pc_47b4c:                               ; preds = %dec_label_pc_47b47, %dec_label_pc_47b37
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

