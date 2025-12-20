@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_88ac:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = inttoptr i64 %1 to ptr
  %5 = call ptr @memset(ptr %4, i32 65, i32 49)
  %6 = add i64 %1, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %8 = call i32 @strlen(ptr %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_89a1, label %dec_label_pc_8977.lr.ph

dec_label_pc_8977.lr.ph:                          ; preds = %dec_label_pc_88ac
  %10 = sext i32 %8 to i64
  %11 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_8977

dec_label_pc_8977:                                ; preds = %dec_label_pc_8977.lr.ph, %dec_label_pc_8977
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %12 = add i64 %storemerge2.reload, %1
  %13 = inttoptr i64 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = add i64 %storemerge2.reload, %11
  %16 = inttoptr i64 %15 to ptr
  store i8 %14, ptr %16, align 1
  %17 = add nuw i64 %storemerge2.reload, 1
  %18 = icmp ult i64 %17, %10
  store i64 %17, ptr %storemerge2.reg2mem, align 8
  br i1 %18, label %dec_label_pc_8977, label %dec_label_pc_89a1

dec_label_pc_89a1:                                ; preds = %dec_label_pc_8977, %dec_label_pc_88ac
  call void @printLine(ptr %2)
  %19 = icmp eq i64 %1, 0
  br i1 %19, label %dec_label_pc_89c4, label %dec_label_pc_89b8

dec_label_pc_89b8:                                ; preds = %dec_label_pc_89a1
  call void @_ZdaPv(ptr %4, ptr inttoptr (i64 65 to ptr))
  br label %dec_label_pc_89c4

dec_label_pc_89c4:                                ; preds = %dec_label_pc_89b8, %dec_label_pc_89a1
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_89d9, label %dec_label_pc_89d4

dec_label_pc_89d4:                                ; preds = %dec_label_pc_89c4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_89d9

dec_label_pc_89d9:                                ; preds = %dec_label_pc_89d4, %dec_label_pc_89c4
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

