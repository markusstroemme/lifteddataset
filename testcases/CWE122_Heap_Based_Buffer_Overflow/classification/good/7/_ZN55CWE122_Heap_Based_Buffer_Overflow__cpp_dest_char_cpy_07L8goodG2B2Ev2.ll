@0 = external global i32
@global_var_5b034 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_241a6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_5b034, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_241e9, label %dec_label_pc_241d4

dec_label_pc_241d4:                               ; preds = %dec_label_pc_241a6
  %4 = call i64 @_Znam(i64 100)
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_241e9

dec_label_pc_241e9:                               ; preds = %dec_label_pc_241d4, %dec_label_pc_241a6
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %6 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %7 = bitcast ptr %stack_var_-120 to ptr
  %8 = call ptr @strcpy(ptr %stack_var_-128.0.reload, ptr nonnull %7)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %9 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %9, label %dec_label_pc_24235, label %dec_label_pc_24229

dec_label_pc_24229:                               ; preds = %dec_label_pc_241e9
  %10 = ptrtoint ptr %stack_var_-120 to i64
  %11 = bitcast ptr %stack_var_-128.0.reload to ptr
  %12 = and i64 %10, 4294967288
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %11, ptr %13)
  br label %dec_label_pc_24235

dec_label_pc_24235:                               ; preds = %dec_label_pc_24229, %dec_label_pc_241e9
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_2424a, label %dec_label_pc_24245

dec_label_pc_24245:                               ; preds = %dec_label_pc_24235
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2424a

dec_label_pc_2424a:                               ; preds = %dec_label_pc_24245, %dec_label_pc_24235
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

