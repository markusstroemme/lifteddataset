@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_cfe3:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 99)
  %4 = add i64 %1, 99
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = call i64 @anon1(i64 %1)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_d056, label %dec_label_pc_d051

dec_label_pc_d051:                                ; preds = %dec_label_pc_cfe3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_d056

dec_label_pc_d056:                                ; preds = %dec_label_pc_d051, %dec_label_pc_cfe3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_d0dd:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-72 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %3 = inttoptr i64 %arg1 to ptr
  %4 = call i32 @strlen(ptr %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_d17e, label %dec_label_pc_d154.lr.ph

dec_label_pc_d154.lr.ph:                          ; preds = %dec_label_pc_d0dd
  %6 = sext i32 %4 to i64
  %7 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_d154

dec_label_pc_d154:                                ; preds = %dec_label_pc_d154.lr.ph, %dec_label_pc_d154
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %8 = add i64 %storemerge1.reload, %arg1
  %9 = inttoptr i64 %8 to ptr
  %10 = load i8, ptr %9, align 1
  %11 = add i64 %storemerge1.reload, %7
  %12 = inttoptr i64 %11 to ptr
  store i8 %10, ptr %12, align 1
  %13 = add nuw i64 %storemerge1.reload, 1
  %14 = icmp ult i64 %13, %6
  store i64 %13, ptr %storemerge1.reg2mem, align 8
  br i1 %14, label %dec_label_pc_d154, label %dec_label_pc_d17e

dec_label_pc_d17e:                                ; preds = %dec_label_pc_d154, %dec_label_pc_d0dd
  call void @printLine(ptr %3)
  %15 = icmp eq i64 %arg1, 0
  br i1 %15, label %dec_label_pc_d1a1, label %dec_label_pc_d195

dec_label_pc_d195:                                ; preds = %dec_label_pc_d17e
  %16 = inttoptr i64 %arg1 to ptr
  %17 = and i64 %1, 4294967295
  %18 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %16, ptr %18)
  br label %dec_label_pc_d1a1

dec_label_pc_d1a1:                                ; preds = %dec_label_pc_d195, %dec_label_pc_d17e
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %2, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_d1b6, label %dec_label_pc_d1b1

dec_label_pc_d1b1:                                ; preds = %dec_label_pc_d1a1
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_d1b6

dec_label_pc_d1b6:                                ; preds = %dec_label_pc_d1b1, %dec_label_pc_d1a1
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

