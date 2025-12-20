@global_var_47670 = external constant [21 x i8]
@0 = external global i32
@global_var_5c164 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2dd9a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  store i32 0, ptr @global_var_5c164, align 4
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @anon1(ptr %2)
  store i64 0, ptr %stack_var_-72, align 8
  %4 = inttoptr i64 %3 to ptr
  %5 = call i32 @strlen(ptr %4)
  %6 = bitcast ptr %stack_var_-72 to ptr
  %7 = call ptr @strncpy(ptr nonnull %6, ptr %4, i32 %5)
  call void @printLine(ptr %4)
  %8 = icmp eq i64 %3, 0
  br i1 %8, label %dec_label_pc_2de58, label %dec_label_pc_2de4c

dec_label_pc_2de4c:                               ; preds = %dec_label_pc_2dd9a
  %9 = inttoptr i64 %3 to ptr
  %10 = and i64 %3, 4294967295
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %9, ptr %11)
  br label %dec_label_pc_2de58

dec_label_pc_2de58:                               ; preds = %dec_label_pc_2de4c, %dec_label_pc_2dd9a
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_2de6d, label %dec_label_pc_2de68

dec_label_pc_2de68:                               ; preds = %dec_label_pc_2de58
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2de6d

dec_label_pc_2de6d:                               ; preds = %dec_label_pc_2de68, %dec_label_pc_2de58
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_2df9a:
  %.pre-phi.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_5c164, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2dfc5, label %dec_label_pc_2dfb4

dec_label_pc_2dfb4:                               ; preds = %dec_label_pc_2df9a
  call void @printLine(ptr @global_var_47670)
  %.pre = ptrtoint ptr %arg1 to i64
  store i64 %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_2dfe6

dec_label_pc_2dfc5:                               ; preds = %dec_label_pc_2df9a
  %2 = bitcast ptr %arg1 to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = ptrtoint ptr %arg1 to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store i64 %4, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_2dfe6

dec_label_pc_2dfe6:                               ; preds = %dec_label_pc_2dfc5, %dec_label_pc_2dfb4
  %.pre-phi.reload = load i64, ptr %.pre-phi.reg2mem, align 8
  ret i64 %.pre-phi.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3a5bd:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3a5e0, label %dec_label_pc_3a5d4

dec_label_pc_3a5d4:                               ; preds = %dec_label_pc_3a5bd
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3a5e0

dec_label_pc_3a5e0:                               ; preds = %dec_label_pc_3a5d4, %dec_label_pc_3a5bd
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

