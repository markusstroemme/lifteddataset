@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_95ea:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge4.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  %3 = add i64 %1, 99
  %4 = inttoptr i64 %3 to ptr
  %5 = call ptr @memset(ptr %2, i32 65, i32 99)
  store i8 0, ptr %4, align 1
  %6 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %7 = call i32 @strlen(ptr %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %dec_label_pc_9664, label %dec_label_pc_963a.lr.ph

dec_label_pc_963a.lr.ph:                          ; preds = %dec_label_pc_95ea
  %9 = sext i32 %7 to i64
  %10 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge4.reg2mem, align 8
  br label %dec_label_pc_963a

dec_label_pc_963a:                                ; preds = %dec_label_pc_963a.lr.ph, %dec_label_pc_963a
  %storemerge4.reload = load i64, ptr %storemerge4.reg2mem, align 8
  %11 = add i64 %storemerge4.reload, %1
  %12 = inttoptr i64 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = add i64 %storemerge4.reload, %10
  %15 = inttoptr i64 %14 to ptr
  store i8 %13, ptr %15, align 1
  %16 = add nuw i64 %storemerge4.reload, 1
  %17 = icmp ult i64 %16, %9
  store i64 %16, ptr %storemerge4.reg2mem, align 8
  br i1 %17, label %dec_label_pc_963a, label %dec_label_pc_9664

dec_label_pc_9664:                                ; preds = %dec_label_pc_963a, %dec_label_pc_95ea
  call void @printLine(ptr %6)
  %18 = icmp eq i64 %1, 0
  br i1 %18, label %dec_label_pc_9687, label %dec_label_pc_967b

dec_label_pc_967b:                                ; preds = %dec_label_pc_9664
  call void @_ZdaPv(ptr %2, ptr inttoptr (i64 65 to ptr))
  br label %dec_label_pc_9687

dec_label_pc_9687:                                ; preds = %dec_label_pc_967b, %dec_label_pc_9664
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_969c, label %dec_label_pc_9697

dec_label_pc_9697:                                ; preds = %dec_label_pc_9687
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_969c

dec_label_pc_969c:                                ; preds = %dec_label_pc_9697, %dec_label_pc_9687
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

