@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_29af8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = add i64 %1, 49
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %6 = bitcast ptr %stack_var_-72 to ptr
  %7 = inttoptr i64 %1 to ptr
  %8 = call ptr @strcat(ptr nonnull %6, ptr %7)
  call void @printLine(ptr %7)
  %9 = icmp eq i64 %1, 0
  br i1 %9, label %dec_label_pc_29baa, label %dec_label_pc_29b9e

dec_label_pc_29b9e:                               ; preds = %dec_label_pc_29af8
  %10 = and i64 %1, 4294967295
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %2, ptr %11)
  br label %dec_label_pc_29baa

dec_label_pc_29baa:                               ; preds = %dec_label_pc_29b9e, %dec_label_pc_29af8
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_29bbf, label %dec_label_pc_29bba

dec_label_pc_29bba:                               ; preds = %dec_label_pc_29baa
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_29bbf

dec_label_pc_29bbf:                               ; preds = %dec_label_pc_29bba, %dec_label_pc_29baa
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

