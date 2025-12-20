@global_var_4643d = external constant [21 x i8]
@0 = external global i32

define i32 @staticReturnsFalse() local_unnamed_addr {
dec_label_pc_7a5e:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7b79:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %rsi.0.reg2mem = alloca ptr, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-72 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i64 @_Znam(i64 100)
  %4 = call i32 @staticReturnsFalse()
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq i1 %5, false
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_7bc1, label %dec_label_pc_7bb0

dec_label_pc_7bb0:                                ; preds = %dec_label_pc_7b79
  call void @printLine(ptr @global_var_4643d)
  %phitmp = and i64 %1, 4294967295
  %phitmp2 = inttoptr i64 %phitmp to ptr
  store ptr %phitmp2, ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_7be2

dec_label_pc_7bc1:                                ; preds = %dec_label_pc_7b79
  %8 = inttoptr i64 %3 to ptr
  %9 = call ptr @memset(ptr %8, i32 65, i32 49)
  %10 = add i64 %3, 49
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  store ptr inttoptr (i64 65 to ptr), ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_7be2

dec_label_pc_7be2:                                ; preds = %dec_label_pc_7bc1, %dec_label_pc_7bb0
  %12 = inttoptr i64 %3 to ptr
  %rsi.0.reload = load ptr, ptr %rsi.0.reg2mem, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %13 = call i32 @strlen(ptr %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_7c5c, label %dec_label_pc_7c32.lr.ph

dec_label_pc_7c32.lr.ph:                          ; preds = %dec_label_pc_7be2
  %15 = sext i32 %13 to i64
  %16 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_7c32

dec_label_pc_7c32:                                ; preds = %dec_label_pc_7c32.lr.ph, %dec_label_pc_7c32
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %17 = add i64 %storemerge3.reload, %3
  %18 = inttoptr i64 %17 to ptr
  %19 = load i8, ptr %18, align 1
  %20 = add i64 %storemerge3.reload, %16
  %21 = inttoptr i64 %20 to ptr
  store i8 %19, ptr %21, align 1
  %22 = add nuw i64 %storemerge3.reload, 1
  %23 = icmp ult i64 %22, %15
  store i64 %22, ptr %storemerge3.reg2mem, align 8
  br i1 %23, label %dec_label_pc_7c32, label %dec_label_pc_7c5c

dec_label_pc_7c5c:                                ; preds = %dec_label_pc_7c32, %dec_label_pc_7be2
  call void @printLine(ptr %12)
  %24 = icmp eq i64 %3, 0
  br i1 %24, label %dec_label_pc_7c7f, label %dec_label_pc_7c73

dec_label_pc_7c73:                                ; preds = %dec_label_pc_7c5c
  %25 = inttoptr i64 %3 to ptr
  call void @_ZdaPv(ptr %25, ptr %rsi.0.reload)
  br label %dec_label_pc_7c7f

dec_label_pc_7c7f:                                ; preds = %dec_label_pc_7c73, %dec_label_pc_7c5c
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %2, %26
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %27, label %dec_label_pc_7c94, label %dec_label_pc_7c8f

dec_label_pc_7c8f:                                ; preds = %dec_label_pc_7c7f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7c94

dec_label_pc_7c94:                                ; preds = %dec_label_pc_7c8f, %dec_label_pc_7c7f
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

