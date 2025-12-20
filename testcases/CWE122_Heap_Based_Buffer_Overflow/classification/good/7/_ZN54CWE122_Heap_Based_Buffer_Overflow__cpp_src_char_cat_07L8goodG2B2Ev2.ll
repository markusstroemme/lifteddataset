@0 = external global i32
@global_var_5b03c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2a50e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = load i32, ptr @global_var_5b03c, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_2a563, label %dec_label_pc_2a542

dec_label_pc_2a542:                               ; preds = %dec_label_pc_2a50e
  %5 = inttoptr i64 %1 to ptr
  %6 = call ptr @memset(ptr %5, i32 65, i32 49)
  %7 = add i64 %1, 49
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  br label %dec_label_pc_2a563

dec_label_pc_2a563:                               ; preds = %dec_label_pc_2a542, %dec_label_pc_2a50e
  %9 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %10 = bitcast ptr %stack_var_-72 to ptr
  %11 = call ptr @strcat(ptr nonnull %10, ptr %9)
  call void @printLine(ptr %9)
  %12 = icmp eq i64 %1, 0
  br i1 %12, label %dec_label_pc_2a5cb, label %dec_label_pc_2a5bf

dec_label_pc_2a5bf:                               ; preds = %dec_label_pc_2a563
  %13 = inttoptr i64 %1 to ptr
  %14 = and i64 %1, 4294967295
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %13, ptr %15)
  br label %dec_label_pc_2a5cb

dec_label_pc_2a5cb:                               ; preds = %dec_label_pc_2a5bf, %dec_label_pc_2a563
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_2a5e0, label %dec_label_pc_2a5db

dec_label_pc_2a5db:                               ; preds = %dec_label_pc_2a5cb
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2a5e0

dec_label_pc_2a5e0:                               ; preds = %dec_label_pc_2a5db, %dec_label_pc_2a5cb
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

