@0 = external global i32
@global_var_5b168 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2c427:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  store i32 1, ptr @global_var_5b168, align 4
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @anon1(ptr %2)
  store i64 0, ptr %stack_var_-72, align 8
  %4 = bitcast ptr %stack_var_-72 to ptr
  %5 = inttoptr i64 %3 to ptr
  %6 = call ptr @strcat(ptr nonnull %4, ptr %5)
  call void @printLine(ptr %5)
  %7 = icmp eq i64 %3, 0
  br i1 %7, label %dec_label_pc_2c4d2, label %dec_label_pc_2c4c6

dec_label_pc_2c4c6:                               ; preds = %dec_label_pc_2c427
  %8 = inttoptr i64 %3 to ptr
  %9 = and i64 %3, 4294967295
  %10 = inttoptr i64 %9 to ptr
  call void @_ZdaPv(ptr %8, ptr %10)
  br label %dec_label_pc_2c4d2

dec_label_pc_2c4d2:                               ; preds = %dec_label_pc_2c4c6, %dec_label_pc_2c427
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_2c4e7, label %dec_label_pc_2c4e2

dec_label_pc_2c4e2:                               ; preds = %dec_label_pc_2c4d2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2c4e7

dec_label_pc_2c4e7:                               ; preds = %dec_label_pc_2c4e2, %dec_label_pc_2c4d2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_2c591:
  %.pre-phi.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_5b168, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2c591.dec_label_pc_2c5cc_crit_edge, label %dec_label_pc_2c5ab

dec_label_pc_2c591.dec_label_pc_2c5cc_crit_edge:  ; preds = %dec_label_pc_2c591
  %.pre = ptrtoint ptr %arg1 to i64
  store i64 %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_2c5cc

dec_label_pc_2c5ab:                               ; preds = %dec_label_pc_2c591
  %2 = bitcast ptr %arg1 to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = ptrtoint ptr %arg1 to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store i64 %4, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_2c5cc

dec_label_pc_2c5cc:                               ; preds = %dec_label_pc_2c591.dec_label_pc_2c5cc_crit_edge, %dec_label_pc_2c5ab
  %.pre-phi.reload = load i64, ptr %.pre-phi.reg2mem, align 8
  ret i64 %.pre-phi.reload
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

