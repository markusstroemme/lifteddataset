@0 = external global i32

define i32 @staticReturnsTrue.161() local_unnamed_addr {
dec_label_pc_2a5f7:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2a7d4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = call i32 @staticReturnsTrue.161()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_2a82c, label %dec_label_pc_2a80b

dec_label_pc_2a80b:                               ; preds = %dec_label_pc_2a7d4
  %6 = inttoptr i64 %1 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 49)
  %8 = add i64 %1, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_2a82c

dec_label_pc_2a82c:                               ; preds = %dec_label_pc_2a80b, %dec_label_pc_2a7d4
  %10 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = bitcast ptr %stack_var_-72 to ptr
  %12 = call ptr @strcat(ptr nonnull %11, ptr %10)
  call void @printLine(ptr %10)
  %13 = icmp eq i64 %1, 0
  br i1 %13, label %dec_label_pc_2a894, label %dec_label_pc_2a888

dec_label_pc_2a888:                               ; preds = %dec_label_pc_2a82c
  %14 = inttoptr i64 %1 to ptr
  %15 = and i64 %1, 4294967295
  %16 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %14, ptr %16)
  br label %dec_label_pc_2a894

dec_label_pc_2a894:                               ; preds = %dec_label_pc_2a888, %dec_label_pc_2a82c
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_2a8a9, label %dec_label_pc_2a8a4

dec_label_pc_2a8a4:                               ; preds = %dec_label_pc_2a894
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2a8a9

dec_label_pc_2a8a9:                               ; preds = %dec_label_pc_2a8a4, %dec_label_pc_2a894
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

