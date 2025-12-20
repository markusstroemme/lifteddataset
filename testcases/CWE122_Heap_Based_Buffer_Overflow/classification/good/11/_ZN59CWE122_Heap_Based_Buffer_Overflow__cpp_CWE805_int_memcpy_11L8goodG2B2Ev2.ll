@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_42047:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-432.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  store i64 0, ptr %stack_var_-432.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_4208f, label %dec_label_pc_4207e

dec_label_pc_4207e:                               ; preds = %dec_label_pc_42047
  %5 = call i64 @_Znam(i64 400)
  store i64 %5, ptr %stack_var_-432.0.reg2mem, align 8
  br label %dec_label_pc_4208f

dec_label_pc_4208f:                               ; preds = %dec_label_pc_4207e, %dec_label_pc_42047
  %stack_var_-432.0.reload = load i64, ptr %stack_var_-432.0.reg2mem, align 8
  %6 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 50)
  %7 = inttoptr i64 %stack_var_-432.0.reload to ptr
  %8 = call ptr @memcpy(ptr %7, ptr nonnull %stack_var_-424, i32 400)
  %9 = inttoptr i64 %stack_var_-432.0.reload to ptr
  %10 = load i32, ptr %9, align 4
  call void @printIntLine(i32 %10)
  %11 = icmp eq i64 %stack_var_-432.0.reload, 0
  br i1 %11, label %dec_label_pc_420ed, label %dec_label_pc_420de

dec_label_pc_420de:                               ; preds = %dec_label_pc_4208f
  %12 = ptrtoint ptr %stack_var_-424 to i64
  %13 = and i64 %12, 4294967288
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %7, ptr %14)
  br label %dec_label_pc_420ed

dec_label_pc_420ed:                               ; preds = %dec_label_pc_420de, %dec_label_pc_4208f
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_42102, label %dec_label_pc_420fd

dec_label_pc_420fd:                               ; preds = %dec_label_pc_420ed
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_42102

dec_label_pc_42102:                               ; preds = %dec_label_pc_420fd, %dec_label_pc_420ed
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_4de88:
  ret i32 1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

