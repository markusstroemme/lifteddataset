@global_var_464a6 = external constant [21 x i8]
@0 = external global i32
@global_var_5c04c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8e35:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %rsi.0.reg2mem = alloca ptr, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-72 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i64 @_Znam(i64 100)
  %4 = load i32, ptr @global_var_5c04c, align 4
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %dec_label_pc_8e7a, label %dec_label_pc_8e69

dec_label_pc_8e69:                                ; preds = %dec_label_pc_8e35
  call void @printLine(ptr @global_var_464a6)
  %phitmp = and i64 %1, 4294967295
  %phitmp2 = inttoptr i64 %phitmp to ptr
  store ptr %phitmp2, ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_8e9b

dec_label_pc_8e7a:                                ; preds = %dec_label_pc_8e35
  %6 = inttoptr i64 %3 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 49)
  %8 = add i64 %3, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  store ptr inttoptr (i64 65 to ptr), ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_8e9b

dec_label_pc_8e9b:                                ; preds = %dec_label_pc_8e7a, %dec_label_pc_8e69
  %10 = inttoptr i64 %3 to ptr
  %rsi.0.reload = load ptr, ptr %rsi.0.reg2mem, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %11 = call i32 @strlen(ptr %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %dec_label_pc_8f15, label %dec_label_pc_8eeb.lr.ph

dec_label_pc_8eeb.lr.ph:                          ; preds = %dec_label_pc_8e9b
  %13 = sext i32 %11 to i64
  %14 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_8eeb

dec_label_pc_8eeb:                                ; preds = %dec_label_pc_8eeb.lr.ph, %dec_label_pc_8eeb
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %15 = add i64 %storemerge3.reload, %3
  %16 = inttoptr i64 %15 to ptr
  %17 = load i8, ptr %16, align 1
  %18 = add i64 %storemerge3.reload, %14
  %19 = inttoptr i64 %18 to ptr
  store i8 %17, ptr %19, align 1
  %20 = add nuw i64 %storemerge3.reload, 1
  %21 = icmp ult i64 %20, %13
  store i64 %20, ptr %storemerge3.reg2mem, align 8
  br i1 %21, label %dec_label_pc_8eeb, label %dec_label_pc_8f15

dec_label_pc_8f15:                                ; preds = %dec_label_pc_8eeb, %dec_label_pc_8e9b
  call void @printLine(ptr %10)
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %dec_label_pc_8f38, label %dec_label_pc_8f2c

dec_label_pc_8f2c:                                ; preds = %dec_label_pc_8f15
  %23 = inttoptr i64 %3 to ptr
  call void @_ZdaPv(ptr %23, ptr %rsi.0.reload)
  br label %dec_label_pc_8f38

dec_label_pc_8f38:                                ; preds = %dec_label_pc_8f2c, %dec_label_pc_8f15
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %2, %24
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %25, label %dec_label_pc_8f4d, label %dec_label_pc_8f48

dec_label_pc_8f48:                                ; preds = %dec_label_pc_8f38
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8f4d

dec_label_pc_8f4d:                                ; preds = %dec_label_pc_8f48, %dec_label_pc_8f38
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

