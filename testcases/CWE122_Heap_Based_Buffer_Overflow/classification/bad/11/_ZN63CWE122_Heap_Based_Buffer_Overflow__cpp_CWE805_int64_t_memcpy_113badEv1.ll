@global_var_320 = external constant [20 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_28cf6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-832.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  store i64 0, ptr %stack_var_-832.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_28d3e, label %dec_label_pc_28d2d

dec_label_pc_28d2d:                               ; preds = %dec_label_pc_28cf6
  %5 = call i64 @_Znam(i64 400)
  store i64 %5, ptr %stack_var_-832.0.reg2mem, align 8
  br label %dec_label_pc_28d3e

dec_label_pc_28d3e:                               ; preds = %dec_label_pc_28d2d, %dec_label_pc_28cf6
  %stack_var_-832.0.reload = load i64, ptr %stack_var_-832.0.reg2mem, align 8
  %6 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 100)
  %7 = inttoptr i64 %stack_var_-832.0.reload to ptr
  %8 = call ptr @memcpy(ptr %7, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %9 = load i64, ptr %7, align 8
  call void @printLongLongLine(i64 %9)
  %10 = icmp eq i64 %stack_var_-832.0.reload, 0
  br i1 %10, label %dec_label_pc_28d9e, label %dec_label_pc_28d8f

dec_label_pc_28d8f:                               ; preds = %dec_label_pc_28d3e
  %11 = ptrtoint ptr %stack_var_-824 to i64
  %12 = and i64 %11, 4294967288
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %7, ptr %13)
  br label %dec_label_pc_28d9e

dec_label_pc_28d9e:                               ; preds = %dec_label_pc_28d8f, %dec_label_pc_28d3e
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_28db3, label %dec_label_pc_28dae

dec_label_pc_28dae:                               ; preds = %dec_label_pc_28d9e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_28db3

dec_label_pc_28db3:                               ; preds = %dec_label_pc_28dae, %dec_label_pc_28d9e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_4da96:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609e9, i32 %0)
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

