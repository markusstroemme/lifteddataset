@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4b752:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 200)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = bitcast ptr %stack_var_-24 to ptr
  %3 = call i64 @anon1(ptr nonnull %2)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_4b7a4, label %dec_label_pc_4b79f

dec_label_pc_4b79f:                               ; preds = %dec_label_pc_4b752
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4b7a4

dec_label_pc_4b7a4:                               ; preds = %dec_label_pc_4b79f, %dec_label_pc_4b752
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_4b80a:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-424 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %3, i64 0, i64 50)
  %4 = bitcast ptr %arg1 to ptr
  %5 = call ptr @memmove(ptr %4, ptr nonnull %stack_var_-424, i32 400)
  %6 = trunc i64 %1 to i32
  call void @printIntLine(i32 %6)
  %7 = icmp eq ptr %arg1, null
  br i1 %7, label %dec_label_pc_4b89e, label %dec_label_pc_4b88f

dec_label_pc_4b88f:                               ; preds = %dec_label_pc_4b80a
  %8 = ptrtoint ptr %stack_var_-424 to i64
  %9 = and i64 %8, 4294967288
  %10 = inttoptr i64 %9 to ptr
  call void @_ZdaPv(ptr %4, ptr %10)
  br label %dec_label_pc_4b89e

dec_label_pc_4b89e:                               ; preds = %dec_label_pc_4b88f, %dec_label_pc_4b80a
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %2, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_4b8b3, label %dec_label_pc_4b8ae

dec_label_pc_4b8ae:                               ; preds = %dec_label_pc_4b89e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4b8b3

dec_label_pc_4b8b3:                               ; preds = %dec_label_pc_4b8ae, %dec_label_pc_4b89e
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

