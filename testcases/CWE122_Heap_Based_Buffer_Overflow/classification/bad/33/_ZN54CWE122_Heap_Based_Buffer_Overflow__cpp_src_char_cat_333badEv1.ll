@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2c998:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %1 to ptr
  %4 = call ptr @memset(ptr %3, i32 65, i32 99)
  %5 = add i64 %1, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %7 = bitcast ptr %stack_var_-72 to ptr
  %8 = call ptr @strcat(ptr nonnull %7, ptr %2)
  call void @printLine(ptr %2)
  %9 = icmp eq i64 %1, 0
  br i1 %9, label %dec_label_pc_2ca5d, label %dec_label_pc_2ca51

dec_label_pc_2ca51:                               ; preds = %dec_label_pc_2c998
  %10 = and i64 %1, 4294967295
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %3, ptr %11)
  br label %dec_label_pc_2ca5d

dec_label_pc_2ca5d:                               ; preds = %dec_label_pc_2ca51, %dec_label_pc_2c998
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_2ca72, label %dec_label_pc_2ca6d

dec_label_pc_2ca6d:                               ; preds = %dec_label_pc_2ca5d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2ca72

dec_label_pc_2ca72:                               ; preds = %dec_label_pc_2ca6d, %dec_label_pc_2ca5d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_37b38:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_37b5b, label %dec_label_pc_37b4f

dec_label_pc_37b4f:                               ; preds = %dec_label_pc_37b38
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_37b5b

dec_label_pc_37b5b:                               ; preds = %dec_label_pc_37b4f, %dec_label_pc_37b38
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

