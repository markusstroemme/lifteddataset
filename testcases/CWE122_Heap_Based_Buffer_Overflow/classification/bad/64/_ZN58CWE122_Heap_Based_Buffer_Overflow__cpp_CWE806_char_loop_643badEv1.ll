@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_c813:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 99)
  %4 = add i64 %1, 99
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_c87e, label %dec_label_pc_c879

dec_label_pc_c879:                                ; preds = %dec_label_pc_c813
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_c87e

dec_label_pc_c87e:                                ; preds = %dec_label_pc_c879, %dec_label_pc_c813
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_c8fd:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-72 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %3 = bitcast ptr %arg1 to ptr
  %4 = call i32 @strlen(ptr %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_c9a9, label %dec_label_pc_c97f.lr.ph

dec_label_pc_c97f.lr.ph:                          ; preds = %dec_label_pc_c8fd
  %6 = ptrtoint ptr %arg1 to i64
  %7 = sext i32 %4 to i64
  %8 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_c97f

dec_label_pc_c97f:                                ; preds = %dec_label_pc_c97f.lr.ph, %dec_label_pc_c97f
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %9 = add i64 %storemerge1.reload, %6
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = add i64 %storemerge1.reload, %8
  %13 = inttoptr i64 %12 to ptr
  store i8 %11, ptr %13, align 1
  %14 = add nuw i64 %storemerge1.reload, 1
  %15 = icmp ult i64 %14, %7
  store i64 %14, ptr %storemerge1.reg2mem, align 8
  br i1 %15, label %dec_label_pc_c97f, label %dec_label_pc_c9a9

dec_label_pc_c9a9:                                ; preds = %dec_label_pc_c97f, %dec_label_pc_c8fd
  call void @printLine(ptr %3)
  %16 = icmp eq ptr %arg1, null
  br i1 %16, label %dec_label_pc_c9cc, label %dec_label_pc_c9c0

dec_label_pc_c9c0:                                ; preds = %dec_label_pc_c9a9
  %17 = and i64 %1, 4294967295
  %18 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr nonnull %arg1, ptr %18)
  br label %dec_label_pc_c9cc

dec_label_pc_c9cc:                                ; preds = %dec_label_pc_c9c0, %dec_label_pc_c9a9
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %2, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_c9e1, label %dec_label_pc_c9dc

dec_label_pc_c9dc:                                ; preds = %dec_label_pc_c9cc
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_c9e1

dec_label_pc_c9e1:                                ; preds = %dec_label_pc_c9dc, %dec_label_pc_c9cc
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

