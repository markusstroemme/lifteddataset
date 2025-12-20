@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4bd48:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 200)
  %2 = bitcast ptr %stack_var_-56 to ptr
  %3 = call i64 @anon1(ptr nonnull %2)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_4bda2, label %dec_label_pc_4bd9d

dec_label_pc_4bd9d:                               ; preds = %dec_label_pc_4bd48
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4bda2

dec_label_pc_4bda2:                               ; preds = %dec_label_pc_4bd9d, %dec_label_pc_4bd48
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_4be10:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  %stack_var_-424 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 50)
  %6 = inttoptr i64 %4 to ptr
  %7 = call ptr @memmove(ptr %6, ptr nonnull %stack_var_-424, i32 400)
  %8 = inttoptr i64 %4 to ptr
  %9 = load i32, ptr %8, align 4
  call void @printIntLine(i32 %9)
  %10 = icmp eq i64 %4, 0
  br i1 %10, label %dec_label_pc_4bea5, label %dec_label_pc_4be96

dec_label_pc_4be96:                               ; preds = %dec_label_pc_4be10
  %11 = ptrtoint ptr %stack_var_-424 to i64
  %12 = and i64 %11, 4294967288
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %6, ptr %13)
  br label %dec_label_pc_4bea5

dec_label_pc_4bea5:                               ; preds = %dec_label_pc_4be96, %dec_label_pc_4be10
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_4beba, label %dec_label_pc_4beb5

dec_label_pc_4beb5:                               ; preds = %dec_label_pc_4bea5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4beba

dec_label_pc_4beba:                               ; preds = %dec_label_pc_4beb5, %dec_label_pc_4bea5
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

