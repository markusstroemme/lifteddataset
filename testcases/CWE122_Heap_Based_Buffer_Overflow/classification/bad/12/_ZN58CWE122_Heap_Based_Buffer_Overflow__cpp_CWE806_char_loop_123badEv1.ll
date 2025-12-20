@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_877d:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  %6 = inttoptr i64 %1 to ptr
  br i1 %5, label %dec_label_pc_87d7, label %dec_label_pc_87b4

dec_label_pc_87b4:                                ; preds = %dec_label_pc_877d
  %7 = call ptr @memset(ptr %6, i32 65, i32 99)
  %8 = add i64 %1, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_87f8

dec_label_pc_87d7:                                ; preds = %dec_label_pc_877d
  %10 = call ptr @memset(ptr %6, i32 65, i32 49)
  %11 = add i64 %1, 49
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 1
  br label %dec_label_pc_87f8

dec_label_pc_87f8:                                ; preds = %dec_label_pc_87d7, %dec_label_pc_87b4
  %13 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %14 = call i32 @strlen(ptr %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %dec_label_pc_8872, label %dec_label_pc_8848.lr.ph

dec_label_pc_8848.lr.ph:                          ; preds = %dec_label_pc_87f8
  %16 = sext i32 %14 to i64
  %17 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_8848

dec_label_pc_8848:                                ; preds = %dec_label_pc_8848.lr.ph, %dec_label_pc_8848
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %18 = add i64 %storemerge2.reload, %1
  %19 = inttoptr i64 %18 to ptr
  %20 = load i8, ptr %19, align 1
  %21 = add i64 %storemerge2.reload, %17
  %22 = inttoptr i64 %21 to ptr
  store i8 %20, ptr %22, align 1
  %23 = add nuw i64 %storemerge2.reload, 1
  %24 = icmp ult i64 %23, %16
  store i64 %23, ptr %storemerge2.reg2mem, align 8
  br i1 %24, label %dec_label_pc_8848, label %dec_label_pc_8872

dec_label_pc_8872:                                ; preds = %dec_label_pc_8848, %dec_label_pc_87f8
  call void @printLine(ptr %13)
  %25 = icmp eq i64 %1, 0
  br i1 %25, label %dec_label_pc_8895, label %dec_label_pc_8889

dec_label_pc_8889:                                ; preds = %dec_label_pc_8872
  call void @_ZdaPv(ptr %6, ptr inttoptr (i64 65 to ptr))
  br label %dec_label_pc_8895

dec_label_pc_8895:                                ; preds = %dec_label_pc_8889, %dec_label_pc_8872
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %0, %26
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %27, label %dec_label_pc_88aa, label %dec_label_pc_88a5

dec_label_pc_88a5:                                ; preds = %dec_label_pc_8895
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_88aa

dec_label_pc_88aa:                                ; preds = %dec_label_pc_88a5, %dec_label_pc_8895
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3aaeb:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

