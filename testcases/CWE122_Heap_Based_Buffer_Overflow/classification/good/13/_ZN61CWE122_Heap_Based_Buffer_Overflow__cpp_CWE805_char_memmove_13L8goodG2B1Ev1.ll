@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1dce9:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  store i8 0, ptr %2, align 1
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %4 = inttoptr i64 %1 to ptr
  %5 = call ptr @memmove(ptr %4, ptr nonnull %stack_var_-120, i32 100)
  %6 = add i64 %1, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  call void @printLine(ptr %2)
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %dec_label_pc_1dd99, label %dec_label_pc_1dd8d

dec_label_pc_1dd8d:                               ; preds = %dec_label_pc_1dce9
  %9 = ptrtoint ptr %stack_var_-120 to i64
  %10 = and i64 %9, 4294967288
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %4, ptr %11)
  br label %dec_label_pc_1dd99

dec_label_pc_1dd99:                               ; preds = %dec_label_pc_1dd8d, %dec_label_pc_1dce9
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_1ddae, label %dec_label_pc_1dda9

dec_label_pc_1dda9:                               ; preds = %dec_label_pc_1dd99
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1ddae

dec_label_pc_1ddae:                               ; preds = %dec_label_pc_1dda9, %dec_label_pc_1dd99
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

