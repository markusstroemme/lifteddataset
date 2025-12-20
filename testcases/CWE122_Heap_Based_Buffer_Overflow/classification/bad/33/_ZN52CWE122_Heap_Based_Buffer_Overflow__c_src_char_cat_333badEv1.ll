@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2106c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_210b0, label %dec_label_pc_210a6

dec_label_pc_210a6:                               ; preds = %dec_label_pc_2106c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_210b0:                               ; preds = %dec_label_pc_2106c
  %4 = ptrtoint ptr %1 to i64
  %5 = call ptr @memset(ptr %1, i32 65, i32 99)
  %6 = add i64 %4, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %8 = bitcast ptr %stack_var_-72 to ptr
  %9 = bitcast ptr %1 to ptr
  %10 = call ptr @strcat(ptr nonnull %8, ptr %9)
  call void @printLine(ptr %9)
  call void @free(ptr %1)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_21152, label %dec_label_pc_2114d

dec_label_pc_2114d:                               ; preds = %dec_label_pc_210b0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21152

dec_label_pc_21152:                               ; preds = %dec_label_pc_2114d, %dec_label_pc_210b0
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_24c88:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_24cab, label %dec_label_pc_24c9f

dec_label_pc_24c9f:                               ; preds = %dec_label_pc_24c88
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_24cab

dec_label_pc_24cab:                               ; preds = %dec_label_pc_24c9f, %dec_label_pc_24c88
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

