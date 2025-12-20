@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_cda0:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = add i64 %1, 49
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i64 @anon1(ptr nonnull %6)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_ce13, label %dec_label_pc_ce0e

dec_label_pc_ce0e:                                ; preds = %dec_label_pc_cda0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_ce13

dec_label_pc_ce13:                                ; preds = %dec_label_pc_ce0e, %dec_label_pc_cda0
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_cf04:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %arg1 to i64
  %stack_var_-72 = alloca i64, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = add i64 %2, 16
  %5 = inttoptr i64 %4 to ptr
  %6 = load i64, ptr %5, align 8
  %7 = inttoptr i64 %6 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %8 = call i32 @strlen(ptr %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_cfa9, label %dec_label_pc_cf7f.lr.ph

dec_label_pc_cf7f.lr.ph:                          ; preds = %dec_label_pc_cf04
  %10 = sext i32 %8 to i64
  %11 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_cf7f

dec_label_pc_cf7f:                                ; preds = %dec_label_pc_cf7f.lr.ph, %dec_label_pc_cf7f
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %12 = add i64 %storemerge2.reload, %6
  %13 = inttoptr i64 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = add i64 %storemerge2.reload, %11
  %16 = inttoptr i64 %15 to ptr
  store i8 %14, ptr %16, align 1
  %17 = add nuw i64 %storemerge2.reload, 1
  %18 = icmp ult i64 %17, %10
  store i64 %17, ptr %storemerge2.reg2mem, align 8
  br i1 %18, label %dec_label_pc_cf7f, label %dec_label_pc_cfa9

dec_label_pc_cfa9:                                ; preds = %dec_label_pc_cf7f, %dec_label_pc_cf04
  call void @printLine(ptr %7)
  %19 = icmp eq i64 %6, 0
  br i1 %19, label %dec_label_pc_cfcc, label %dec_label_pc_cfc0

dec_label_pc_cfc0:                                ; preds = %dec_label_pc_cfa9
  %20 = inttoptr i64 %6 to ptr
  %21 = and i64 %1, 4294967295
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %20, ptr %22)
  br label %dec_label_pc_cfcc

dec_label_pc_cfcc:                                ; preds = %dec_label_pc_cfc0, %dec_label_pc_cfa9
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %3, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_cfe1, label %dec_label_pc_cfdc

dec_label_pc_cfdc:                                ; preds = %dec_label_pc_cfcc
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_cfe1

dec_label_pc_cfe1:                                ; preds = %dec_label_pc_cfdc, %dec_label_pc_cfcc
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

