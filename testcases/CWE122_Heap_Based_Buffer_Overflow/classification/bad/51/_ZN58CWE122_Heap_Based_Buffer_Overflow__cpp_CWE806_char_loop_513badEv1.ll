@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_b61f:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  %5 = inttoptr i64 %0 to ptr
  %6 = call i64 @anon1(ptr %5)
  ret i64 %6
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_b6c3:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-72 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %3 = call i32 @strlen(ptr %arg1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_b75c, label %dec_label_pc_b732.lr.ph

dec_label_pc_b732.lr.ph:                          ; preds = %dec_label_pc_b6c3
  %5 = sext i32 %3 to i64
  %6 = ptrtoint ptr %arg1 to i64
  %7 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_b732

dec_label_pc_b732:                                ; preds = %dec_label_pc_b732.lr.ph, %dec_label_pc_b732
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %8 = add i64 %storemerge2.reload, %6
  %9 = inttoptr i64 %8 to ptr
  %10 = load i8, ptr %9, align 1
  %11 = add i64 %storemerge2.reload, %7
  %12 = inttoptr i64 %11 to ptr
  store i8 %10, ptr %12, align 1
  %13 = add nuw i64 %storemerge2.reload, 1
  %14 = icmp ult i64 %13, %5
  store i64 %13, ptr %storemerge2.reg2mem, align 8
  br i1 %14, label %dec_label_pc_b732, label %dec_label_pc_b75c

dec_label_pc_b75c:                                ; preds = %dec_label_pc_b732, %dec_label_pc_b6c3
  call void @printLine(ptr %arg1)
  %15 = icmp eq ptr %arg1, null
  br i1 %15, label %dec_label_pc_b77f, label %dec_label_pc_b773

dec_label_pc_b773:                                ; preds = %dec_label_pc_b75c
  %16 = bitcast ptr %arg1 to ptr
  %17 = and i64 %1, 4294967295
  %18 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %16, ptr %18)
  br label %dec_label_pc_b77f

dec_label_pc_b77f:                                ; preds = %dec_label_pc_b773, %dec_label_pc_b75c
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %2, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_b794, label %dec_label_pc_b78f

dec_label_pc_b78f:                                ; preds = %dec_label_pc_b77f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_b794

dec_label_pc_b794:                                ; preds = %dec_label_pc_b78f, %dec_label_pc_b77f
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

