@global_var_320 = external constant [20 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2bfd4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 400)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_2c026, label %dec_label_pc_2c021

dec_label_pc_2c021:                               ; preds = %dec_label_pc_2bfd4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2c026

dec_label_pc_2c026:                               ; preds = %dec_label_pc_2c021, %dec_label_pc_2bfd4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_2c08c:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  %stack_var_-824 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 100)
  %3 = call ptr @memcpy(ptr %arg1, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printLongLongLine(i64 %0)
  %4 = icmp eq ptr %arg1, null
  br i1 %4, label %dec_label_pc_2c130, label %dec_label_pc_2c121

dec_label_pc_2c121:                               ; preds = %dec_label_pc_2c08c
  %5 = ptrtoint ptr %stack_var_-824 to i64
  %6 = and i64 %5, 4294967288
  %7 = inttoptr i64 %6 to ptr
  call void @_ZdaPv(ptr nonnull %arg1, ptr %7)
  br label %dec_label_pc_2c130

dec_label_pc_2c130:                               ; preds = %dec_label_pc_2c121, %dec_label_pc_2c08c
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %1, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_2c145, label %dec_label_pc_2c140

dec_label_pc_2c140:                               ; preds = %dec_label_pc_2c130
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2c145

dec_label_pc_2c145:                               ; preds = %dec_label_pc_2c140, %dec_label_pc_2c130
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

