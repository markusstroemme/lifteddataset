@0 = external global i32

define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_7a4f:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7c96:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %rsi.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = call i32 @staticReturnsTrue()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_7cee, label %dec_label_pc_7ccd

dec_label_pc_7ccd:                                ; preds = %dec_label_pc_7c96
  %6 = inttoptr i64 %1 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 49)
  %8 = add i64 %1, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  store i64 65, ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_7cee

dec_label_pc_7cee:                                ; preds = %dec_label_pc_7ccd, %dec_label_pc_7c96
  %10 = inttoptr i64 %1 to ptr
  %rsi.0.reload = load i64, ptr %rsi.0.reg2mem, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %11 = call i32 @strlen(ptr %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %dec_label_pc_7d68, label %dec_label_pc_7d3e.lr.ph

dec_label_pc_7d3e.lr.ph:                          ; preds = %dec_label_pc_7cee
  %13 = sext i32 %11 to i64
  %14 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_7d3e

dec_label_pc_7d3e:                                ; preds = %dec_label_pc_7d3e.lr.ph, %dec_label_pc_7d3e
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %15 = add i64 %storemerge2.reload, %1
  %16 = inttoptr i64 %15 to ptr
  %17 = load i8, ptr %16, align 1
  %18 = add i64 %storemerge2.reload, %14
  %19 = inttoptr i64 %18 to ptr
  store i8 %17, ptr %19, align 1
  %20 = add nuw i64 %storemerge2.reload, 1
  %21 = icmp ult i64 %20, %13
  store i64 %20, ptr %storemerge2.reg2mem, align 8
  br i1 %21, label %dec_label_pc_7d3e, label %dec_label_pc_7d68

dec_label_pc_7d68:                                ; preds = %dec_label_pc_7d3e, %dec_label_pc_7cee
  call void @printLine(ptr %10)
  %22 = icmp eq i64 %1, 0
  br i1 %22, label %dec_label_pc_7d8b, label %dec_label_pc_7d7f

dec_label_pc_7d7f:                                ; preds = %dec_label_pc_7d68
  %23 = inttoptr i64 %1 to ptr
  %24 = and i64 %rsi.0.reload, 4294967295
  %25 = inttoptr i64 %24 to ptr
  call void @_ZdaPv(ptr %23, ptr %25)
  br label %dec_label_pc_7d8b

dec_label_pc_7d8b:                                ; preds = %dec_label_pc_7d7f, %dec_label_pc_7d68
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %0, %26
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %27, label %dec_label_pc_7da0, label %dec_label_pc_7d9b

dec_label_pc_7d9b:                                ; preds = %dec_label_pc_7d8b
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7da0

dec_label_pc_7da0:                                ; preds = %dec_label_pc_7d9b, %dec_label_pc_7d8b
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

