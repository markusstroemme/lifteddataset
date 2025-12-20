@global_var_609dc = external constant [4 x i8]
@0 = external global i32
@global_var_7f05c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_426a2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-432.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_7f05c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %stack_var_-432.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_426e7, label %dec_label_pc_426d6

dec_label_pc_426d6:                               ; preds = %dec_label_pc_426a2
  %4 = call i64 @_Znam(i64 400)
  store i64 %4, ptr %stack_var_-432.0.reg2mem, align 8
  br label %dec_label_pc_426e7

dec_label_pc_426e7:                               ; preds = %dec_label_pc_426d6, %dec_label_pc_426a2
  %stack_var_-432.0.reload = load i64, ptr %stack_var_-432.0.reg2mem, align 8
  %5 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 50)
  %6 = inttoptr i64 %stack_var_-432.0.reload to ptr
  %7 = call ptr @memcpy(ptr %6, ptr nonnull %stack_var_-424, i32 400)
  %8 = inttoptr i64 %stack_var_-432.0.reload to ptr
  %9 = load i32, ptr %8, align 4
  call void @printIntLine(i32 %9)
  %10 = icmp eq i64 %stack_var_-432.0.reload, 0
  br i1 %10, label %dec_label_pc_42745, label %dec_label_pc_42736

dec_label_pc_42736:                               ; preds = %dec_label_pc_426e7
  %11 = ptrtoint ptr %stack_var_-424 to i64
  %12 = and i64 %11, 4294967288
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %6, ptr %13)
  br label %dec_label_pc_42745

dec_label_pc_42745:                               ; preds = %dec_label_pc_42736, %dec_label_pc_426e7
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_4275a, label %dec_label_pc_42755

dec_label_pc_42755:                               ; preds = %dec_label_pc_42745
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4275a

dec_label_pc_4275a:                               ; preds = %dec_label_pc_42755, %dec_label_pc_42745
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

