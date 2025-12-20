@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_20a29:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  store i8 0, ptr %2, align 1
  %3 = bitcast ptr %stack_var_-24 to ptr
  %4 = call i64 @anon1(ptr nonnull %3)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_20a82, label %dec_label_pc_20a7d

dec_label_pc_20a7d:                               ; preds = %dec_label_pc_20a29
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_20a82

dec_label_pc_20a82:                               ; preds = %dec_label_pc_20a7d, %dec_label_pc_20a29
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_20b42:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  %stack_var_-120 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = call ptr @memmove(ptr %arg1, ptr nonnull %stack_var_-120, i32 100)
  %4 = add i64 %0, 99
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = bitcast ptr %arg1 to ptr
  call void @printLine(ptr %6)
  %7 = icmp eq ptr %arg1, null
  br i1 %7, label %dec_label_pc_20bd9, label %dec_label_pc_20bcd

dec_label_pc_20bcd:                               ; preds = %dec_label_pc_20b42
  %8 = ptrtoint ptr %stack_var_-120 to i64
  %9 = and i64 %8, 4294967288
  %10 = inttoptr i64 %9 to ptr
  call void @_ZdaPv(ptr nonnull %arg1, ptr %10)
  br label %dec_label_pc_20bd9

dec_label_pc_20bd9:                               ; preds = %dec_label_pc_20bcd, %dec_label_pc_20b42
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_20bee, label %dec_label_pc_20be9

dec_label_pc_20be9:                               ; preds = %dec_label_pc_20bd9
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_20bee

dec_label_pc_20bee:                               ; preds = %dec_label_pc_20be9, %dec_label_pc_20bd9
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_42e40:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_42e63, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e40
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_42e63

dec_label_pc_42e63:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e40
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

