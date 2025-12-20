@0 = external global i32
@global_var_5c04c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8f4f:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %rsi.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = load i32, ptr @global_var_5c04c, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_8fa4, label %dec_label_pc_8f83

dec_label_pc_8f83:                                ; preds = %dec_label_pc_8f4f
  %5 = inttoptr i64 %1 to ptr
  %6 = call ptr @memset(ptr %5, i32 65, i32 49)
  %7 = add i64 %1, 49
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store i64 65, ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_8fa4

dec_label_pc_8fa4:                                ; preds = %dec_label_pc_8f83, %dec_label_pc_8f4f
  %9 = inttoptr i64 %1 to ptr
  %rsi.0.reload = load i64, ptr %rsi.0.reg2mem, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %10 = call i32 @strlen(ptr %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %dec_label_pc_901e, label %dec_label_pc_8ff4.lr.ph

dec_label_pc_8ff4.lr.ph:                          ; preds = %dec_label_pc_8fa4
  %12 = sext i32 %10 to i64
  %13 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_8ff4

dec_label_pc_8ff4:                                ; preds = %dec_label_pc_8ff4.lr.ph, %dec_label_pc_8ff4
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %14 = add i64 %storemerge2.reload, %1
  %15 = inttoptr i64 %14 to ptr
  %16 = load i8, ptr %15, align 1
  %17 = add i64 %storemerge2.reload, %13
  %18 = inttoptr i64 %17 to ptr
  store i8 %16, ptr %18, align 1
  %19 = add nuw i64 %storemerge2.reload, 1
  %20 = icmp ult i64 %19, %12
  store i64 %19, ptr %storemerge2.reg2mem, align 8
  br i1 %20, label %dec_label_pc_8ff4, label %dec_label_pc_901e

dec_label_pc_901e:                                ; preds = %dec_label_pc_8ff4, %dec_label_pc_8fa4
  call void @printLine(ptr %9)
  %21 = icmp eq i64 %1, 0
  br i1 %21, label %dec_label_pc_9041, label %dec_label_pc_9035

dec_label_pc_9035:                                ; preds = %dec_label_pc_901e
  %22 = inttoptr i64 %1 to ptr
  %23 = and i64 %rsi.0.reload, 4294967295
  %24 = inttoptr i64 %23 to ptr
  call void @_ZdaPv(ptr %22, ptr %24)
  br label %dec_label_pc_9041

dec_label_pc_9041:                                ; preds = %dec_label_pc_9035, %dec_label_pc_901e
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %26, label %dec_label_pc_9056, label %dec_label_pc_9051

dec_label_pc_9051:                                ; preds = %dec_label_pc_9041
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_9056

dec_label_pc_9056:                                ; preds = %dec_label_pc_9051, %dec_label_pc_9041
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

