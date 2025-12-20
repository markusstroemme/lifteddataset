@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2b1a3:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = inttoptr i64 %1 to ptr
  %5 = call ptr @memset(ptr %4, i32 65, i32 49)
  %6 = add i64 %1, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %8 = bitcast ptr %stack_var_-72 to ptr
  %9 = call ptr @strcat(ptr nonnull %8, ptr %2)
  call void @printLine(ptr %2)
  %10 = icmp eq i64 %1, 0
  br i1 %10, label %dec_label_pc_2b286, label %dec_label_pc_2b27a

dec_label_pc_2b27a:                               ; preds = %dec_label_pc_2b1a3
  %11 = and i64 %1, 4294967295
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %4, ptr %12)
  br label %dec_label_pc_2b286

dec_label_pc_2b286:                               ; preds = %dec_label_pc_2b27a, %dec_label_pc_2b1a3
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_2b29b, label %dec_label_pc_2b296

dec_label_pc_2b296:                               ; preds = %dec_label_pc_2b286
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2b29b

dec_label_pc_2b29b:                               ; preds = %dec_label_pc_2b296, %dec_label_pc_2b286
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_38066:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

